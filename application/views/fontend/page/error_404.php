<div id="content" class="py-5" style="background: linear-gradient(135deg, #fdfbf7 0%, #f5f0e6 100%); min-height: 80vh; display: flex; align-items: center; justify-content: center; position: relative; overflow: hidden;">
    <!-- Abstract background circles for richness -->
    <div style="position: absolute; width: 300px; height: 300px; background: rgba(255, 87, 34, 0.05); border-radius: 50%; top: -100px; left: -100px; filter: blur(50px); pointer-events: none;"></div>
    <div style="position: absolute; width: 400px; height: 400px; background: rgba(21, 98, 116, 0.05); border-radius: 50%; bottom: -150px; right: -100px; filter: blur(60px); pointer-events: none;"></div>

    <div class="container text-center" style="position: relative; z-index: 1;">
        <div class="row justify-content-center">
            <div class="col-lg-7 col-md-9">
                <div class="error-container p-5" style="background: rgba(255, 255, 255, 0.8); backdrop-filter: blur(15px); -webkit-backdrop-filter: blur(15px); border-radius: 24px; border: 1px solid rgba(255, 255, 255, 0.5); box-shadow: 0 15px 35px rgba(0, 0, 0, 0.05);">

                    <!-- Floating SVG Illustration -->
                    <div class="floating-illustration mb-4" style="animation: floatAnim 4s ease-in-out infinite;">
                        <svg width="120" height="120" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" style="filter: drop-shadow(0 8px 16px rgba(255, 87, 34, 0.25));">
                            <path d="M12 2C6.48 2 2 6.48 2 12C2 17.52 6.48 22 12 22C17.52 22 22 17.52 22 12C22 6.48 17.52 2 12 2ZM13 17H11V15H13V17ZM13 13H11V7H13V13Z" fill="#ff5722" />
                        </svg>
                    </div>

                    <!-- Glowing Animated 404 Text -->
                    <h1 class="display-1 font-weight-bold" style="font-size: 7.5rem; color: #156274; margin: 0; line-height: 1; font-family: 'Jost', sans-serif; letter-spacing: -2px; font-weight: 700;">
                        4<span style="color: #ff5722; animation: pulseColor 2s infinite alternate;">0</span>4
                    </h1>

                    <h3 class="mt-3 mb-2" style="font-weight: 600; color: #2c3e50; font-family: 'Jost', sans-serif;">Looking for Something?</h3>
                    <p class="text-muted mb-4 mx-auto" style="max-width: 480px; font-size: 1rem; line-height: 1.6;">
                        The page you requested couldn't be found. Try searching below, explore our categories, or return to the main store.
                    </p>

                    <!-- Beautiful Search Bar -->
                    <div class="search-box-404 mx-auto mb-4" style="max-width: 450px;">
                        <form action="<?= base_url('shop') ?>" method="GET" class="position-relative">
                            <input type="text" name="keyword" placeholder="Search products..." class="form-control px-4" style="height: 52px; border-radius: 50px; border: 2px solid #e2e8f0; font-size: 1rem; transition: all 0.3s ease; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.02);" onfocus="this.style.borderColor='#ff5722'; this.style.boxShadow='0 0 0 3px rgba(255, 87, 34, 0.15)'" onblur="this.style.borderColor='#e2e8f0'; this.style.boxShadow='none'">
                            <button type="submit" class="btn text-white position-absolute" style="top: 4px; right: 4px; height: 44px; width: 44px; border-radius: 50%; background: #ff5722; border: none; padding: 0; display: flex; align-items: center; justify-content: center; transition: all 0.3s ease; box-shadow: 0 4px 10px rgba(255, 87, 34, 0.3);" onmouseover="this.style.transform='scale(1.05)'" onmouseout="this.style.transform='scale(1)'">
                                <i class="fa fa-search"></i>
                            </button>
                        </form>
                    </div>

                    <!-- Quick Links Grid -->
                    <div class="quick-links d-flex flex-wrap justify-content-center gap-2 mb-4" style="gap: 10px;">
                        <a href="<?= base_url('trending-products') ?>" class="quick-link-item px-3 py-2 text-decoration-none" style="background: rgba(21, 98, 116, 0.08); color: #156274; font-weight: 500; font-size: 0.9rem; border-radius: 30px; transition: all 0.3s ease;" onmouseover="this.style.background='#156274'; this.style.color='#fff'" onmouseout="this.style.background='rgba(21, 98, 116, 0.08)'; this.style.color='#156274'">
                            <i class="fa fa-fire mr-1"></i> Trending Products
                        </a>
                        <a href="<?= base_url('hot-deals') ?>" class="quick-link-item px-3 py-2 text-decoration-none" style="background: rgba(255, 87, 34, 0.08); color: #ff5722; font-weight: 500; font-size: 0.9rem; border-radius: 30px; transition: all 0.3s ease;" onmouseover="this.style.background='#ff5722'; this.style.color='#fff'" onmouseout="this.style.background='rgba(255, 87, 34, 0.08)'; this.style.color='#ff5722'">
                            <i class="fa fa-percent mr-1"></i> Hot Deals
                        </a>
                        <a href="<?= base_url('track-order') ?>" class="quick-link-item px-3 py-2 text-decoration-none" style="background: rgba(45, 55, 72, 0.08); color: #2d3748; font-weight: 500; font-size: 0.9rem; border-radius: 30px; transition: all 0.3s ease;" onmouseover="this.style.background='#2d3748'; this.style.color='#fff'" onmouseout="this.style.background='rgba(45, 55, 72, 0.08)'; this.style.color='#2d3748'">
                            <i class="fa fa-truck mr-1"></i> Track Order
                        </a>
                    </div>

                    <!-- Main Action -->
                    <div class="action-btn-container">
                        <a href="<?php echo base_url(); ?>" class="btn px-5 py-3 text-white d-inline-flex align-items-center" style="background: #156274; border-radius: 50px; font-weight: 500; font-size: 1.05rem; box-shadow: 0 6px 20px rgba(21, 98, 116, 0.3); transition: all 0.3s ease;" onmouseover="this.style.background='#ff5722'; this.style.boxShadow='0 6px 20px rgba(255, 87, 34, 0.3)'" onmouseout="this.style.background='#156274'; this.style.boxShadow='0 6px 20px rgba(21, 98, 116, 0.3)'">
                            <i class="fa fa-home mr-2"></i> Go Back Home
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<style>
    @keyframes floatAnim {
        0% {
            transform: translateY(0px) rotate(0deg);
        }

        50% {
            transform: translateY(-10px) rotate(3deg);
        }

        100% {
            transform: translateY(0px) rotate(0deg);
        }
    }

    @keyframes pulseColor {
        0% {
            color: #ff5722;
            filter: drop-shadow(0 0 2px rgba(255, 87, 34, 0.3));
        }

        100% {
            color: #e0471b;
            filter: drop-shadow(0 0 10px rgba(255, 87, 34, 0.6));
        }
    }
</style>