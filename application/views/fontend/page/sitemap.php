<!-- Banner Section -->
<section class="slider-section" style="background: linear-gradient(135deg, #156274 0%, #0d3e4a 100%); padding: 50px 0; color: #fff; text-align: center;">
    <div class="container">
        <h2 style="font-weight: 700; font-family: 'Jost', sans-serif; font-size: 2.2rem; margin-bottom: 10px; color: #fff;">Website Sitemap</h2>
        <p style="font-size: 1.05rem; opacity: 0.9; margin-bottom: 0;">Explore all sections, categories, and products of our online store</p>
    </div>
</section>

<!-- Sitemap Links Section -->
<section class="py-5" style="background: #f8f9fa;">
    <div class="container">
        <div class="row">
            
            <!-- Quick Links -->
            <div class="col-md-4 mb-4">
                <div class="card border-0 shadow-sm p-4" style="border-radius: 12px; height: 100%;">
                    <h4 style="font-weight: 600; color: #156274; margin-bottom: 20px; font-family: 'Jost', sans-serif; border-bottom: 2px solid #e2e8f0; padding-bottom: 10px;">
                        <i class="fa fa-link mr-2"></i> Quick Links
                    </h4>
                    <ul class="list-unstyled" style="line-height: 2;">
                        <li class="mb-2">
                            <a href="<?= base_url() ?>" style="color: #4a5568; font-weight: 500; text-decoration: none; transition: color 0.2s;" onmouseover="this.style.color='#ff5722'" onmouseout="this.style.color='#4a5568'">
                                <i class="fa fa-chevron-right mr-2" style="font-size: 11px;"></i> Home Page
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="<?= base_url('shop') ?>" style="color: #4a5568; font-weight: 500; text-decoration: none; transition: color 0.2s;" onmouseover="this.style.color='#ff5722'" onmouseout="this.style.color='#4a5568'">
                                <i class="fa fa-chevron-right mr-2" style="font-size: 11px;"></i> Shop / Products
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="<?= base_url('contact-us') ?>" style="color: #4a5568; font-weight: 500; text-decoration: none; transition: color 0.2s;" onmouseover="this.style.color='#ff5722'" onmouseout="this.style.color='#4a5568'">
                                <i class="fa fa-chevron-right mr-2" style="font-size: 11px;"></i> Contact Us
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="<?= base_url('about-us') ?>" style="color: #4a5568; font-weight: 500; text-decoration: none; transition: color 0.2s;" onmouseover="this.style.color='#ff5722'" onmouseout="this.style.color='#4a5568'">
                                <i class="fa fa-chevron-right mr-2" style="font-size: 11px;"></i> About Us
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="<?= base_url('faqs') ?>" style="color: #4a5568; font-weight: 500; text-decoration: none; transition: color 0.2s;" onmouseover="this.style.color='#ff5722'" onmouseout="this.style.color='#4a5568'">
                                <i class="fa fa-chevron-right mr-2" style="font-size: 11px;"></i> FAQs
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="<?= base_url('privacy-policy') ?>" style="color: #4a5568; font-weight: 500; text-decoration: none; transition: color 0.2s;" onmouseover="this.style.color='#ff5722'" onmouseout="this.style.color='#4a5568'">
                                <i class="fa fa-chevron-right mr-2" style="font-size: 11px;"></i> Privacy Policy
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="<?= base_url('terms-conditions') ?>" style="color: #4a5568; font-weight: 500; text-decoration: none; transition: color 0.2s;" onmouseover="this.style.color='#ff5722'" onmouseout="this.style.color='#4a5568'">
                                <i class="fa fa-chevron-right mr-2" style="font-size: 11px;"></i> Terms & Conditions
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- Categories -->
            <div class="col-md-4 mb-4">
                <div class="card border-0 shadow-sm p-4" style="border-radius: 12px; height: 100%;">
                    <h4 style="font-weight: 600; color: #156274; margin-bottom: 20px; font-family: 'Jost', sans-serif; border-bottom: 2px solid #e2e8f0; padding-bottom: 10px;">
                        <i class="fa fa-tags mr-2"></i> Categories
                    </h4>
                    <div style="max-height: 450px; overflow-y: auto; padding-right: 5px;">
                        <ul class="list-unstyled" style="line-height: 2;">
                            <?php if (!empty($categories)): ?>
                                <?php foreach ($categories as $cat): ?>
                                    <li class="mb-2">
                                        <a href="<?= base_url('category/' . $cat->route) ?>" style="color: #4a5568; font-weight: 500; text-decoration: none; transition: color 0.2s;" onmouseover="this.style.color='#ff5722'" onmouseout="this.style.color='#4a5568'">
                                            <i class="fa fa-chevron-right mr-2" style="font-size: 11px; opacity: 0.7;"></i> <?= htmlspecialchars($cat->Category_Name) ?>
                                        </a>
                                    </li>
                                <?php endforeach; ?>
                            <?php else: ?>
                                <li style="color: #718096;">No categories found</li>
                            <?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Products -->
            <div class="col-md-4 mb-4">
                <div class="card border-0 shadow-sm p-4" style="border-radius: 12px; height: 100%;">
                    <h4 style="font-weight: 600; color: #156274; margin-bottom: 20px; font-family: 'Jost', sans-serif; border-bottom: 2px solid #e2e8f0; padding-bottom: 10px;">
                        <i class="fa fa-shopping-bag mr-2"></i> Products List
                    </h4>
                    <div style="max-height: 450px; overflow-y: auto; padding-right: 5px;">
                        <ul class="list-unstyled" style="line-height: 2;">
                            <?php if (!empty($products)): ?>
                                <?php foreach ($products as $prod): ?>
                                    <li class="mb-2">
                                        <a href="<?= base_url('product/' . $prod->slug) ?>" style="color: #4a5568; font-weight: 500; text-decoration: none; transition: color 0.2s;" onmouseover="this.style.color='#ff5722'" onmouseout="this.style.color='#4a5568'">
                                            <i class="fa fa-chevron-right mr-2" style="font-size: 11px; opacity: 0.7;"></i> <?= htmlspecialchars($prod->Product_Name) ?>
                                        </a>
                                    </li>
                                <?php endforeach; ?>
                            <?php else: ?>
                                <li style="color: #718096;">No products found</li>
                            <?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
