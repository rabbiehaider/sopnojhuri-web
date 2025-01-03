<section class="hero-wrap hero-wrap-2" style="background-image: url('../assets/fontend/images/top-banner.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs mb-2">
                    <span class="mr-2">
                        <a href="/">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Project Details<i class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread">Project Details</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-degree-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 ftco-animate">
                <p>
                    <img src="<?php echo $img_url.'uploads/Project/'.$project->image ?>" alt="" class="img-fluid" />
                </p>
                <h2 class="mb-3"><?php echo $project->title ?></h2>
                <div>
                    <?php echo $project->details;?>
                </div>
            </div>
            <!-- .col-md-8 -->
            <div class="col-lg-4 sidebar pl-lg-5 ftco-animate">
                <div class="sidebar-box ftco-animate">
                    <div class="categories">
                        <h3>Services</h3>
                        <?php 
                            if(!empty($services)) {
                                foreach($services as $item) {
                        ?>
                        <li>
                            <a href="/"><?php echo $item->name ?> <span class="fa fa-chevron-right"></span></a>
                        </li>
                        <?php
                            
                                }
                            }
                        ?>
                    </div>
                </div>

                <div class="sidebar-box ftco-animate">
                    <h3>Recent Project</h3>

                    <?php
                        if(!empty($projects)) {
                            foreach($projects as $item) {

                    ?>
                    <div class="block-21 mb-4 d-flex">
                        <a class="blog-img mr-4" style="background-image: url(<?php echo $img_url.'uploads/Project/'.$item->image ?>);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="<?php echo base_url().'single-project/'.$item->id ?>"><?php echo $item->title ?></a></h3>
                            <div class="meta">
                                <div>
                                    <a href="<?php echo base_url().'single-project/'.$item->id ?>"><i class="fa fa-calendar"></i> <?php echo $item->date ?></a>
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
