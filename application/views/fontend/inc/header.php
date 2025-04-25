<?php $website = $this->db->query("SELECT * FROM tbl_website_profile LIMIT 1")->row(); ?>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- <meta name="csrf-token" content="G3MYR7oERhJ74qLw7kn7hJhWCWaDitFIkh5PZtQB" /> -->
    <title>
        <?= $title != '' ? $title . ' - ' . $website->Website_Name . ' - ' . $website->Website_TagLine : $website->Website_Name . ' - ' . $website->Website_TagLine; ?>
    </title>
    <link rel="manifest" href="<?= base_url('assets/fontend/') ?>json/manifest.json" />
    <!-- App favicon -->
    <!-- <meta name="facebook-domain-verification" content="irkk0bt6na8i9yw1zrib1iiosqm9p3" /> -->
    <!-- <script src="<?php echo base_url('assets/website/') ?>chunks/webpack-a707e99c69361791.js" defer=""></script> -->
    <link rel="preconnect" href="https://fonts.googleapis.com/" />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="true" />
    <link rel="shortcut icon" href="<?= $iurl . $website->Fav_Logo ?>" alt="<?= $website->Website_Name ?>" />
    <meta name="author" content="SopnoJhuri" />
    <link rel="canonical" href="#" />
    <meta name="app-url" content="" />
    <meta name="robots" content="index, follow" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <!-- Open Graph data -->
    <meta property="og:title" content="" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="<?= $iurl . $website->Header_Logo ?>" />
    <meta property="og:description" content="" />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/owl.carousel.min.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/animate-web.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/animate.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/all.min.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/owl.carousel.min.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/mobile-menu.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/select2.min.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/lightbox.css" />
    <!-- toastr css -->
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/toastr.min.css" />

    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/wsit-menu.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/custom_style.css?v=1.2.2" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/responsivefbbb.css?v=1.2.3" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/main.css" />
    <script src="<?= base_url('assets/fontend/') ?>js/jquery-3.6.3.min.js"></script>
    <style rel='stylesheet' data-href="<?= base_url('assets/fontend/') ?>css/jost-font.css">
        @font-face {
            font-family: 'Jost';
            font-style: normal;
            font-weight: 400;
            font-display: swap;
            src: url('/assets/fontend/fonts/jost/v15/92zPtBhPNqw79Ij1E865zBUv7myjJQVF.woff') format('woff')
        }

        @font-face {
            font-family: 'Jost';
            font-style: normal;
            font-weight: 500;
            font-display: swap;
            src: url('/assets/fontend/fonts/jost/v15/92zPtBhPNqw79Ij1E865zBUv7myRJQVF.woff') format('woff')
        }

        @font-face {
            font-family: 'Jost';
            font-style: normal;
            font-weight: 600;
            font-display: swap;
            src: url('/assets/fontend/fonts/jost/v15/92zPtBhPNqw79Ij1E865zBUv7mx9IgVF.woff') format('woff')
        }

        @font-face {
            font-family: 'Jost';
            font-style: normal;
            font-weight: 400;
            font-display: swap;
            src: url('/assets/fontend/fonts/jost/v15/92zatBhPNqw73oDd4jQmfxIC7w.woff2') format('woff2');
            unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116
        }

        @font-face {
            font-family: 'Jost';
            font-style: normal;
            font-weight: 400;
            font-display: swap;
            src: url('/assets/fontend/fonts/jost/v15/92zatBhPNqw73ord4jQmfxIC7w.woff2') format('woff2');
            unicode-range: U+0100-02AF, U+0304, U+0308, U+0329, U+1E00-1E9F, U+1EF2-1EFF, U+2020, U+20A0-20AB, U+20AD-20C0, U+2113, U+2C60-2C7F, U+A720-A7FF
        }

        @font-face {
            font-family: 'Jost';
            font-style: normal;
            font-weight: 400;
            font-display: swap;
            src: url('/assets/fontend/fonts/jost/v15/92zatBhPNqw73oTd4jQmfxI.woff2') format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD
        }

        @font-face {
            font-family: 'Jost';
            font-style: normal;
            font-weight: 500;
            font-display: swap;
            src: url('/assets/fontend/fonts/jost/v15/92zatBhPNqw73oDd4jQmfxIC7w.woff2') format('woff2');
            unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116
        }

        @font-face {
            font-family: 'Jost';
            font-style: normal;
            font-weight: 500;
            font-display: swap;
            src: url('/assets/fontend/fonts/jost/v15/92zatBhPNqw73ord4jQmfxIC7w.woff2') format('woff2');
            unicode-range: U+0100-02AF, U+0304, U+0308, U+0329, U+1E00-1E9F, U+1EF2-1EFF, U+2020, U+20A0-20AB, U+20AD-20C0, U+2113, U+2C60-2C7F, U+A720-A7FF
        }

        @font-face {
            font-family: 'Jost';
            font-style: normal;
            font-weight: 500;
            font-display: swap;
            src: url('/assets/fontend/fonts/jost/v15/92zatBhPNqw73oTd4jQmfxI.woff2') format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD
        }

        @font-face {
            font-family: 'Jost';
            font-style: normal;
            font-weight: 600;
            font-display: swap;
            src: url('/assets/fontend/fonts/jost/v15/92zatBhPNqw73oDd4jQmfxIC7w.woff2') format('woff2');
            unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116
        }

        @font-face {
            font-family: 'Jost';
            font-style: normal;
            font-weight: 600;
            font-display: swap;
            src: url('/assets/fontend/fonts/jost/v15/92zatBhPNqw73ord4jQmfxIC7w.woff2') format('woff2');
            unicode-range: U+0100-02AF, U+0304, U+0308, U+0329, U+1E00-1E9F, U+1EF2-1EFF, U+2020, U+20A0-20AB, U+20AD-20C0, U+2113, U+2C60-2C7F, U+A720-A7FF
        }

        @font-face {
            font-family: 'Jost';
            font-style: normal;
            font-weight: 600;
            font-display: swap;
            src: url('/assets/fontend/fonts/jost/v15/92zatBhPNqw73oTd4jQmfxI.woff2') format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD
        }
    </style>

    <!-- Google Tag Manager -->
    <!-- <script>
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s);
            j.async = true;
            j.src = "../analytic.ozybd.com/5lahktimrd41d.html?" + i;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'bvvrw=aWQ9R1RNLVc5UUtNU1dM&apiKey=f8fe72c7');
    </script> -->

</head>

<body class="gotop">