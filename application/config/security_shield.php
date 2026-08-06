<?php
defined('BASEPATH') or exit('No direct script access allowed');

// 1. Get client IP address helper
function get_client_ip()
{
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ip = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR'])[0];
    } else {
        $ip = $_SERVER['REMOTE_ADDR'];
    }
    return filter_var($ip, FILTER_VALIDATE_IP) ? $ip : '0.0.0.0';
}

// 2. Block Bad Bots / Website scrapers (HTTrack, wget, crawler, etc.)
$user_agent = $_SERVER['HTTP_USER_AGENT'] ?? '';
$blocked_agents = [
    'httrack',
    'wget',
    'curl',
    'offline explorer',
    'teleport pro',
    'webcopier',
    'webstripper',
    'site-sucker',
    'grabber',
    'extractor',
    'spider',
    'crawler',
    'python',
    'java',
    'libwww',
    'scrapy',
    'guzzle',
    'php'
];

foreach ($blocked_agents as $agent) {
    if (stripos($user_agent, $agent) !== false) {
        header('HTTP/1.1 403 Forbidden');
        die('Access Denied: Cloning, crawling, and scripting are prohibited on this website.');
    }
}

if (empty(trim($user_agent))) {
    header('HTTP/1.1 403 Forbidden');
    die('Access Denied: Invalid request header.');
}

// 3. Simple high-performance file-based Rate Limiter (Abuse protection)
$ip = get_client_ip();
$ip_clean = preg_replace('/[^a-zA-Z0-9_.-]/', '_', $ip);
$cache_dir = APPPATH . 'cache/security';

if (!is_dir($cache_dir)) {
    @mkdir($cache_dir, 0777, true);
}

$rate_file = $cache_dir . '/rate_' . $ip_clean . '.json';
$now = time();
$limit = 120;  // Maximum 120 requests
$window = 60;  // within 60 seconds

if (file_exists($rate_file)) {
    $data = json_decode(@file_get_contents($rate_file), true);
    if (is_array($data)) {
        // filter out old requests outside the time window
        if (isset($data['requests'])) {
            $data['requests'] = array_filter($data['requests'], function ($timestamp) use ($now, $window) {
                return ($now - $timestamp) < $window;
            });
        } else {
            $data['requests'] = [];
        }

        // check if currently blocked
        if (isset($data['blocked_until']) && $data['blocked_until'] > $now) {
            header('HTTP/1.1 429 Too Many Requests');
            header('Retry-After: ' . ($data['blocked_until'] - $now));
            die('Access Denied: Too many requests. Your IP is temporarily blocked.');
        }

        $data['requests'][] = $now;

        if (count($data['requests']) > $limit) {
            // Block the IP for 10 minutes (600 seconds)
            $data['blocked_until'] = $now + 600;
            @file_put_contents($rate_file, json_encode($data));

            // Log the incident
            @error_log("IP BLOCKED: " . $ip . " at " . date('Y-m-d H:i:s') . " - Excessive requests.\n", 3, $cache_dir . '/security_log.txt');

            header('HTTP/1.1 429 Too Many Requests');
            header('Retry-After: 600');
            die('Access Denied: Too many requests. Your IP has been temporarily blocked for security reasons.');
        }
    } else {
        $data = ['requests' => [$now]];
    }
} else {
    $data = ['requests' => [$now]];
}
@file_put_contents($rate_file, json_encode($data));

if (rand(1, 100) === 1) {
    $files = glob($cache_dir . '/rate_*.json');
    if (is_array($files)) {
        foreach ($files as $file) {
            if (is_file($file) && ($now - filemtime($file)) > 14400) {
                @unlink($file);
            }
        }
    }
}
