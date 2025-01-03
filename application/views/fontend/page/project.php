<section class="hero-wrap hero-wrap-2" style="background-image: url('assets/fontend/images/top-banner.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs mb-2">
                    <span class="mr-2">
                        <a href="/">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Our Project <i class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread">Our Project</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row d-flex">
            <?php 
                if(!empty($projects)) {
                    foreach($projects as $project){
            ?>
            <div class="col-md-4 d-flex ftco-animate">
                <div class="blog-entry align-self-stretch">
                    <a href="<?php echo base_url().'single-project/'.$project->id ?>" class="block-20 rounded" style="background-image: url(<?php echo $img_url.'uploads/Project/'.$project->image ?>);"> </a>
                    <div class="text mt-2">
                        <div class="posted">
                            <div class="desc">
                                <span><i class="fa fa-calendar"></i> <?php echo $project->date; ?></span>
                            </div>
                        </div>
                        <h3 class="heading"><a href="<?php echo base_url().'single-project/'.$project->id ?>"><?php echo $project->title ?></a></h3>
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