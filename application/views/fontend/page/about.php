<section class="hero-wrap hero-wrap-2" style="background-image: url('assets/fontend/images/top-banner.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs mb-2">
                    <span class="mr-2">
                        <a href="/">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>About us <i class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread">About Us</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-no-pt ftco-no-pb bg-light my-4">
    <div class="container">
        <div class="row d-flex no-gutters">
            <div class="col-md-6 d-flex">
                <div class="img img-video d-flex align-self-stretch align-items-center justify-content-center mb-4 mb-sm-0" style="background-image: url(<?php echo $img_url.'uploads/About/'.$about->image ?>);">
                    <a href="<?php echo $about->video_url ?>" class="icon-video popup-vimeo d-flex justify-content-center align-items-center">
                        <span class="fa fa-play"></span>
                    </a>
                </div>
            </div>
            <div class="col-md-6 pl-md-5">
                <div class="row justify-content-start py-5">
                    <div class="col-md-12 heading-section ftco-animate">
                        <span class="subheading">Welcome to SKG Auto</span>
                        <h2 class="mb-4"><?php echo $about->title ?></h2>
                        <p>
                            <?php echo $about->about_us ?>
                        </p>
                        <div class="tabulation-2 mt-4">
                            <ul class="nav nav-pills nav-fill d-md-flex d-block">
                                <li class="nav-item mb-md-0 mb-2">
                                    <a class="nav-link active py-2" data-toggle="tab" href="#home1">Our Mission</a>
                                </li>
                                <li class="nav-item px-lg-2 mb-md-0 mb-2">
                                    <a class="nav-link py-2" data-toggle="tab" href="#home2">Our Vision</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link py-2 mb-md-0 mb-2" data-toggle="tab" href="#home3">Our Value</a>
                                </li>
                            </ul>
                            <div class="tab-content rounded mt-2">
                                <div class="tab-pane container p-0 active" id="home1">
                                    <p>
                                        <?php echo $about->mission ?>
                                    </p>
                                </div>
                                <div class="tab-pane container p-0 fade" id="home2">
                                    <p>
                                        <?php echo $about->vision ?>
                                    </p>
                                </div>
                                <div class="tab-pane container p-0 fade" id="home3">
                                    <p>
                                        <?php echo $about->value ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section testimony-section bg-light">
    <div class="container">
        <div class="row justify-content-center pb-5 mb-3">
            <div class="col-md-7 heading-section heading-section-white text-center ftco-animate">
                <span class="subheading">Testimonies</span>
                <h2>Happy Clients &amp; Feedbacks</h2>
            </div>
        </div>
        <div class="row ftco-animate">
            <div class="col-md-12">
                <div class="carousel-testimony owl-carousel ftco-owl">
                    <?php 
                        if(!empty($testimonials)){
                            foreach($testimonials as $key => $item) {
                    ?>
                    <div class="item">
                        <div class="testimony-wrap py-4">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                            <div class="text">
                                <p class="mb-4"><?php echo $item->feedback ?></p>
                                <div class="d-flex align-items-center">
                                    <div class="user-img" style="background-image: url(<?php echo $img_url.'uploads/Testimonial/'.$item->image ?>);"></div>
                                    <div class="pl-3">
                                        <p class="name"><?php echo $item->name ?></p>
                                        <span class="position"><?php echo $item->designation ?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>
