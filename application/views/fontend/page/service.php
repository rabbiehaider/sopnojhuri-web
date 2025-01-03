<section class="hero-wrap hero-wrap-2" style="background-image: url('assets/fontend/images/top-banner.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs mb-2">
                    <span class="mr-2">
                        <a href="/">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Our Services <i class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread">Our Services</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section pt-3">
    <div class="container">
        <div class="row">
            <?php 
                if(!empty($services)) {
                    foreach($services as $service) {

            ?>
            <div class="col-md-4 services ftco-animate">
                <div class="d-block d-flex">
                    <div class="icon d-flex justify-content-center align-items-center">
                        <img style="height: 65%; width: 70%;" src="<?php echo $img_url.'uploads/Service/'.$service->image ?>" alt="">
                    </div>
                    <div class="media-body pl-3">
                        <h3 class="heading"><?php echo $service->name ?></h3>
                        <p><?php echo $service->details ?></p>
                        <!-- <p><a href="#" class="btn-custom">Read more</a></p> -->
                    </div>
                </div>
            </div>
            <?php 
                    }
                }
            ?>
        </div>
    </div>
</section>

<section class="ftco-section bg-light">
    <div class="container">
        <div class="row justify-content-center pb-3 mb-3">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <span class="subheading">Price &amp; Plans</span>
                <h2>Pricing</h2>
            </div>
        </div>
        <div class="row">
            <?php 
                if(!empty($pricings)) {
                    foreach($pricings as $key => $item) {

            ?>
            <div class="col-md-6 col-lg-3 ftco-animate">
                <div class="block-7">
                    <div class="text-center pt-2">
                        <span class="excerpt d-block"><?php echo $item->name ?></span>
                        <span class="price"><sup>৳</sup> <span class="number"><?php echo $item->price ?></span></span>

                        <div class="pricing-text px-3">
                            <p><?php echo $item->details ?></p>
                        </div>

                        <!-- <a href="#" class="btn btn-secondary d-block px-2 py-3">Get Started</a> -->
                    </div>
                </div>
            </div>
            <?php 
                    }
                } 
            ?>
        </div>
    </div>
</section>