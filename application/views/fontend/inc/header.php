<?php $website = $this->db->query("SELECT * FROM tbl_website_profile LIMIT 1")->row(); ?>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>
        <?= $title != '' ? $title . ' - ' . $website->Website_Name . ' - ' . $website->Website_TagLine : $website->Website_Name . ' - ' . $website->Website_TagLine; ?>
    </title>
    <link rel="manifest" href="<?= base_url('assets/fontend/') ?>json/manifest.json" />
    <link rel="preconnect" href="https://fonts.googleapis.com/" />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="true" />
    <link rel="shortcut icon" href="<?= $iurl . $website->Fav_Logo ?>" alt="<?= $website->Website_Name ?>" />
    <meta name="author" content="SopnoJhuri" />
    <link rel="canonical" href="<?= current_url(); ?>" />
    <meta name="app-url" content="<?= base_url(); ?>" />
    <meta name="robots" content="index, follow" />
    
    <?php 
    $seo_description = strip_tags($website->Short_Details);
    $seo_image = $iurl . $website->Header_Logo;
    
    if (isset($product) && !empty($product)) {
        if (!empty($product->Product_Description)) {
            $desc_clean = strip_tags($product->Product_Description);
            $seo_description = mb_strlen($desc_clean) > 160 ? mb_substr($desc_clean, 0, 157) . '...' : $desc_clean;
        } else {
            $seo_description = $product->Product_Name . ' - Shop online at ' . $website->Website_Name;
        }
        $seo_image = $iurl . $product->Product_Image;
    }
    ?>

    <meta name="description" content="<?= htmlspecialchars($seo_description); ?>" />
    <meta name="keywords" content="" />

    <!-- ============ VERIFICATION META TAGS ============ -->
    <?php if (!empty($website->google_verification_code)): ?>
        <meta name="google-site-verification" content="<?= $website->google_verification_code; ?>" />
    <?php endif; ?>

    <?php if (!empty($website->pinterest_verification)): ?>
        <meta name="p:domain_verify" content="<?= $website->pinterest_verification; ?>" />
    <?php endif; ?>

    <?php if (!empty($website->facebook_domain_verification)): ?>
        <meta name="facebook-domain-verification" content="<?= $website->facebook_domain_verification; ?>" />
    <?php endif; ?>

    <!-- ============ OPEN GRAPH META TAGS ============ -->
    <meta property="og:title" content="<?= $title != '' ? $title . ' - ' . $website->Website_Name : $website->Website_Name; ?>" />
    <meta property="og:type" content="<?= isset($product) ? 'product' : 'website'; ?>" />
    <meta property="og:url" content="<?= current_url(); ?>" />
    <meta property="og:image" content="<?= $seo_image; ?>" />
    <meta property="og:description" content="<?= htmlspecialchars($seo_description); ?>" />
    <meta property="og:site_name" content="<?= $website->Website_Name; ?>" />
    <meta property="og:locale" content="bn_BD" />

    <?php if (!empty($website->facebook_app_id)): ?>
        <meta property="fb:app_id" content="<?= $website->facebook_app_id; ?>" />
    <?php endif; ?>

    <!-- Twitter Cards -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="<?= $title != '' ? $title . ' - ' . $website->Website_Name : $website->Website_Name; ?>" />
    <meta name="twitter:description" content="<?= htmlspecialchars($seo_description); ?>" />
    <meta name="twitter:image" content="<?= $seo_image; ?>" />

    <!-- JSON-LD Structured Data for Products -->
    <?php if (isset($product) && !empty($product)): ?>
        <script type="application/ld+json">
        {
          "@context": "https://schema.org/",
          "@type": "Product",
          "name": <?= json_encode($product->Product_Name); ?>,
          "image": [
            <?= json_encode($iurl . $product->Product_Image); ?>
          ],
          "description": <?= json_encode($seo_description); ?>,
          "sku": <?= json_encode($product->Product_Code); ?>,
          "mpn": <?= json_encode($product->Product_Code); ?>,
          "brand": {
            "@type": "Brand",
            "name": <?= json_encode($website->Website_Name); ?>
          },
          "offers": {
            "@type": "Offer",
            "url": <?= json_encode(current_url()); ?>,
            "priceCurrency": "BDT",
            "price": <?= json_encode($product->Product_SellingPrice); ?>,
            "priceValidUntil": <?= json_encode(date('Y-12-31', strtotime('+1 year'))); ?>,
            "availability": "https://schema.org/InStock",
            "itemCondition": "https://schema.org/NewCondition"
          }
        }
        </script>
    <?php endif; ?>

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
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/toastr.min.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/wsit-menu.css" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/custom_style.css?v=1.2.2" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/responsivefbbb.css?v=1.2.3" />
    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/main.css" />

    <!-- ============ GOOGLE TAG MANAGER ============ -->
    <?php if (!empty($website->google_tag_manager_id)): ?>
        <script>
            (function(w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({
                    'gtm.start': new Date().getTime(),
                    event: 'gtm.js'
                });
                var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s),
                    dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', '<?= $website->google_tag_manager_id; ?>');
        </script>
    <?php endif; ?>

    <!-- ============ GOOGLE ANALYTICS 4 (GA4) ============ -->
    <?php if (!empty($website->google_analytics_id)): ?>
        <script async src="https://www.googletagmanager.com/gtag/js?id=<?= $website->google_analytics_id; ?>"></script>
        <script>
            window.dataLayer = window.dataLayer || [];

            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', '<?= $website->google_analytics_id; ?>');
            gtag('set', 'currency_code', 'BDT');
        </script>
    <?php endif; ?>

    <!-- ============ GOOGLE ADS CONVERSION TRACKING ============ -->
    <?php if (!empty($website->google_ads_id)): ?>
        <script async src="https://www.googletagmanager.com/gtag/js?id=<?= $website->google_ads_id; ?>"></script>
        <script>
            window.dataLayer = window.dataLayer || [];

            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', '<?= $website->google_ads_id; ?>');
        </script>
    <?php endif; ?>

    <!-- ============ FACEBOOK / META PIXEL ============ -->
    <?php if (!empty($website->facebook_pixel_id)): ?>
        <script>
            ! function(f, b, e, v, n, t, s) {
                if (f.fbq) return;
                n = f.fbq = function() {
                    n.callMethod ?
                        n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                };
                if (!f._fbq) f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
                t = b.createElement(e);
                t.async = !0;
                t.src = v;
                s = b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t, s)
            }(window, document, 'script',
                'https://connect.facebook.net/en_US/fbevents.js');
            fbq('init', '<?= $website->facebook_pixel_id; ?>');
            fbq('track', 'PageView');

            <?php if (isset($product) && !empty($product)): ?>
                fbq('track', 'ViewContent', {
                    content_name: '<?= addslashes($product->Product_Name); ?>',
                    content_category: '<?= addslashes($product->Category_Name ?? ''); ?>',
                    content_ids: ['<?= $product->Product_SlNo; ?>'],
                    content_type: 'product',
                    value: <?= $product->Sales_Price; ?>,
                    currency: 'BDT'
                });
            <?php endif; ?>
        </script>
        <noscript>
            <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=<?= $website->facebook_pixel_id; ?>&ev=PageView&noscript=1" />
        </noscript>
    <?php endif; ?>

    <!-- ============ MICROSOFT CLARITY ============ -->
    <?php if (!empty($website->clarity_id)): ?>
        <script>
            (function(c, l, a, r, i, t, y) {
                c[a] = c[a] || function() {
                    (c[a].q = c[a].q || []).push(arguments)
                };
                t = l.createElement(r);
                t.async = 1;
                t.src = "https://www.clarity.ms/tag/" + i;
                y = l.getElementsByTagName(r)[0];
                y.parentNode.insertBefore(t, y);
            })(window, document, "clarity", "script", "<?= $website->clarity_id; ?>");
        </script>
    <?php endif; ?>

    <!-- ============ TIKTOK PIXEL ============ -->
    <?php if (!empty($website->tiktok_pixel_id)): ?>
        <script>
            ! function(w, d, t) {
                w.TiktokAnalyticsObject = t;
                var ttq = w[t] = w[t] || [];
                ttq.methods = ["page", "track", "identify", "instances", "debug", "on", "off", "once", "ready", "alias", "group",
                    "enableCookie", "disableCookie"
                ];
                ttq.setAndDefer = function(t, e) {
                    t[e] = function() {
                        t.push([e].concat(Array.prototype.slice.call(arguments, 0)))
                    }
                };
                for (var i = 0; i < ttq.methods.length; i++) ttq.setAndDefer(ttq, ttq.methods[i]);
                ttq.instance = function(t) {
                    for (var e = ttq._i[t] || [], n = 0; n < ttq.methods.length; n++) ttq.setAndDefer(e, ttq.methods[n]);
                    return e
                };
                ttq.load = function(e, n) {
                    var i = "https://analytics.tiktok.com/i18n/pixel/events.js";
                    ttq._i = ttq._i || {};
                    ttq._i[e] = [];
                    ttq._i[e]._u = i;
                    ttq._t = ttq._t || {};
                    ttq._t[e] = +new Date;
                    ttq._o = ttq._o || {};
                    ttq._o[e] = n || {};
                    var o = document.createElement("script");
                    o.type = "text/javascript";
                    o.async = !0;
                    o.src = i + "?sdkid=" + e + "&lib=" + t;
                    var a = document.getElementsByTagName("script")[0];
                    a.parentNode.insertBefore(o, a)
                };

                ttq.load('<?= $website->tiktok_pixel_id; ?>');
                ttq.page();
            }(window, document, 'ttq');
        </script>
    <?php endif; ?>

    <!-- ============ PINTEREST TAG ============ -->
    <?php if (!empty($website->pinterest_tag_id)): ?>
        <script>
            ! function(e) {
                if (!window.pintrk) {
                    window.pintrk = function() {
                        window.pintrk.queue.push(Array.prototype.slice.call(arguments))
                    };
                    var n = window.pintrk;
                    n.queue = [];
                    n.version = "3.0";
                    var t = document.createElement("script");
                    t.async = !0;
                    t.src = e;
                    var r = document.getElementsByTagName("script")[0];
                    r.parentNode.insertBefore(t, r)
                }
            }("https://s.pinimg.com/ct/core.js");
            pintrk('load', '<?= $website->pinterest_tag_id; ?>');
            pintrk('page');
        </script>
        <noscript>
            <img height="1" width="1" style="display:none;" alt=""
                src="https://ct.pinterest.com/v3/?event=init&tid=<?= $website->pinterest_tag_id; ?>&noscript=1" />
        </noscript>
    <?php endif; ?>

    <!-- ============ HOTJAR ============ -->
    <?php if (!empty($website->hotjar_id)): ?>
        <script>
            (function(h, o, t, j, a, r) {
                h.hj = h.hj || function() {
                    (h.hj.q = h.hj.q || []).push(arguments)
                };
                h._hjSettings = {
                    hjid: <?= $website->hotjar_id; ?>,
                    hjsv: 6
                };
                a = o.getElementsByTagName('head')[0];
                r = o.createElement('script');
                r.async = 1;
                r.src = t + h._hjSettings.hjid + j + h._hjSettings.hjsv;
                a.appendChild(r);
            })(window, document, 'https://static.hotjar.com/c/hotjar-', '.js?sv=');
        </script>
    <?php endif; ?>

    <!-- ============ LINKEDIN INSIGHT TAG ============ -->
    <?php if (!empty($website->linkedin_partner_id)): ?>
        <script>
            _linkedin_partner_id = "<?= $website->linkedin_partner_id; ?>";
            window._linkedin_data_partner_ids = window._linkedin_data_partner_ids || [];
            window._linkedin_data_partner_ids.push(_linkedin_partner_id);
        </script>
        <script>
            (function(l) {
                if (!l) {
                    window.lintrk = function(a, b) {
                        window.lintrk.q.push([a, b])
                    };
                    window.lintrk.q = []
                }
                var s = document.getElementsByTagName("script")[0];
                var b = document.createElement("script");
                b.type = "text/javascript";
                b.async = true;
                b.src = "https://snap.licdn.com/li.lms-analytics/insight.min.js";
                s.parentNode.insertBefore(b, s);
            })(window.lintrk);
        </script>
        <noscript>
            <img height="1" width="1" style="display:none;" alt=""
                src="https://dc.ads.linkedin.com/collect/?pid=<?= $website->linkedin_partner_id; ?>&fmt=gif" />
        </noscript>
    <?php endif; ?>

    <!-- ============ STRUCTURED DATA (JSON-LD) ============ -->
    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "Organization",
            "name": "<?= $website->Website_Name; ?>",
            "url": "<?= base_url(); ?>",
            "logo": "<?= $iurl . $website->Header_Logo; ?>",
            "contactPoint": {
                "@type": "ContactPoint",
                "telephone": "<?= $website->Website_Mobile; ?>",
                "contactType": "customer service",
                "availableLanguage": ["Bengali", "English"]
            },
            "sameAs": [
                "<?= $website->Facebook_Url; ?>",
                "<?= $website->Youtube_Url; ?>",
                "<?= $website->Instragram_Url; ?>"
            ]
        }
    </script>

    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "WebSite",
            "name": "<?= $website->Website_Name; ?>",
            "url": "<?= base_url(); ?>",
            "potentialAction": {
                "@type": "SearchAction",
                "target": "<?= base_url('search?q='); ?>{search_term_string}",
                "query-input": "required name=search_term_string"
            }
        }
    </script>

    <?php if (isset($product) && !empty($product)): ?>
        <script type="application/ld+json">
            {
                "@context": "https://schema.org",
                "@type": "Product",
                "name": "<?= addslashes($product->Product_Name); ?>",
                "image": "<?= $iurl . $product->Product_Image; ?>",
                "description": "<?= addslashes(strip_tags($product->Product_Description)); ?>",
                "sku": "<?= $product->Product_SlNo; ?>",
                "brand": {
                    "@type": "Brand",
                    "name": "<?= $product->Manufacturer_Name ?? 'SopnoJhuri'; ?>"
                },
                "offers": {
                    "@type": "Offer",
                    "url": "<?= current_url(); ?>",
                    "priceCurrency": "BDT",
                    "price": "<?= $product->Sales_Price; ?>",
                    "priceValidUntil": "<?= date('Y-m-d', strtotime('+1 year')); ?>",
                    "availability": "https://schema.org/InStock",
                    "seller": {
                        "@type": "Organization",
                        "name": "<?= $website->Website_Name; ?>"
                    }
                }
            }
        </script>
    <?php endif; ?>

    <script src="<?= base_url('assets/fontend/') ?>js/jquery-3.6.3.min.js"></script>
    <script src="<?= base_url('assets/fontend/') ?>js/vue/vue.min.js"></script>
    <script src="<?= base_url('assets/fontend/') ?>js/vue/axios.min.js"></script>
    <script src="<?= base_url('assets/fontend/') ?>js/vue/moment.min.js"></script>

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

</head>

<body class="gotop">
    <!-- ============ GOOGLE TAG MANAGER (NOSCRIPT) ============ -->
    <?php if (!empty($website->google_tag_manager_id)): ?>
        <noscript>
            <iframe src="https://www.googletagmanager.com/ns.html?id=<?= $website->google_tag_manager_id; ?>" height="0" width="0" style="display:none;visibility:hidden"></iframe>
        </noscript>
    <?php endif; ?>