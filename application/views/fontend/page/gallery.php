<section class="hero-wrap hero-wrap-2" style="background-image: url('assets/fontend/images/top-banner.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs mb-2">
                    <span class="mr-2">
                        <a href="/">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Gallery <i class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread">Gallery</h1>
            </div>
        </div>
    </div>
</section>
<div class="photo-gallery bg-light my-5">
	<div class="container-fluid">
        <div class="row no-gutters">
            <?php 
                if(!empty($galleries)) {
                    foreach($galleries as $key => $gallery) {
            ?>
            <div class="col-md-3 ftco-animate">
                <div class="work img d-flex align-items-end" style="background-image: url(<?php echo $img_url.'uploads/Gallery/'.$gallery->image ?>);">
                    <a href="<?php echo $img_url.'uploads/Gallery/'.$gallery->image ?>" class="icon image-popup d-flex justify-content-center align-items-center">
                        <span class="fa fa-expand"></span>
                    </a>
                    <div class="desc w-100 px-4">
                        <div class="text w-100 mb-3">
                            <h2><?php echo $gallery->title ?> </h2>
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