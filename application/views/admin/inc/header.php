<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="">
    <!--<link rel="shortcut icon" href="img/favicon.png">-->

    <title><?php echo $title ?></title>

    <!-- Bootstrap CSS -->
    <link href="<?php echo base_url() . 'assets/backend/' ?>css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="<?php echo base_url() . 'assets/backend/' ?>css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <link href="<?php echo base_url() . 'assets/backend/' ?>css/font-awesome.min.css" rel="stylesheet" />
    <link href="<?php echo base_url() . 'assets/backend/' ?>css/elegant-icons-style.css" rel="stylesheet" />
    <!-- Custom styles -->
    <!-- <link href="<?php //echo base_url().'assets/backend/' 
                        ?>css/widgets.css" rel="stylesheet"> -->
    <link href="<?php echo base_url() . 'assets/backend/' ?>css/style.css" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/backend/' ?>css/style-responsive.css" rel="stylesheet" />
    <link href="<?php echo base_url() . 'assets/backend/' ?>css/datatable.css" rel="stylesheet" />
    <link href="<?php echo base_url() . 'assets/backend/' ?>css/chosen.min.css" rel="stylesheet" />
    <script src="<?php echo base_url() . 'assets/backend/' ?>js/jquery.js"></script>
    <script src="http://cdn.ckeditor.com/4.6.2/standard-all/ckeditor.js"></script>
</head>

<body>
    <!-- container section start -->
    <section id="container" class="">


        <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="<?php echo base_url('dashboard') ?>" class="logo">Habib Motors & Machineries</a>
            <!--logo end-->

            <div class="nav search-row" id="top_menu">
                <!--  search form start -->

                <!--  search form end -->
            </div>

            <div class="top-nav notification-row">
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    <li><a href="" style="color: #bdbdbd"><i class="ace-icon fa fa-clock-o"></i> <?php echo date("l jS \of F Y") ?> &nbsp;<span id="MyClockDisplay" onload="showTime()">
                            </span></a></li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="<?php echo base_url() . 'assets/backend/images/administator/' . $this->session->userdata('image'); ?>" style="width: 30px">
                            </span>
                            <span class="username"><?php echo $this->session->userdata('full_name'); ?></span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li class="eborder-top">
                                <a href="<?php echo base_url('admin-profile') ?>"><i class="icon_profile"></i> My Profile</a>
                            </li>

                            <li>
                                <a href="<?php echo base_url('logout') ?>"><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
        </header>
        <!--header end-->

        <!--sidebar start-->
        <aside>
            <div id="sidebar" class="nav-collapse ">
                <!-- sidebar menu start-->
                <ul class="sidebar-menu">
                    <li class="active">
                        <a class="" href="<?php echo base_url('dashboard') ?>">
                            <i class="icon_house_alt"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="fa fa-cog"></i>
                            <span>Administator</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="<?php echo base_url('administator'); ?>">Add User</a></li>
                            <li><a class="" href="<?php echo base_url('slider'); ?>">Add Slider</a></li>
                            <li><a class="" href="<?php echo base_url('news'); ?>">Add News</a></li>
                            <li><a class="" href="<?php echo base_url('service'); ?>">Add Service</a></li>
                            <li><a class="" href="<?php echo base_url('employee'); ?>">Add Employee</a></li>
                            <li><a class="" href="<?php echo base_url('brand'); ?>">Add Brand</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="fa fa-cog"></i>
                            <span>Company Profile</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="<?php echo base_url('company-profile'); ?>">Profile</a></li>
                            <li><a class="" href="<?php echo base_url('about'); ?>">About</a></li>
                            <li><a class="" href="<?php echo base_url('banner'); ?>">QR Code</a></li>
                            <li><a class="" href="<?php echo base_url('social-media'); ?>">Social Media</a></li>
                            <li><a class="" href="<?php echo base_url('condition'); ?>">Terms & Condition</a></li>
                            <li><a class="" href="<?php echo base_url('founder-profile'); ?>">Founder Profile</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="fa fa-cog"></i>
                            <span>Category</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="<?php echo base_url('category'); ?>">Add Category</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="fa fa-cog"></i>
                            <span>Product</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="<?php echo base_url('product'); ?>">Add Product</a></li>
                        </ul>
                    </li>

                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <i class="fa fa-image"></i>
                            <span>Gallery</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="<?php echo base_url('photo-gallery'); ?>">Add Photo</a></li>
                            <li><a class="" href="<?php echo base_url('video-gallery'); ?>">Add Video</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:; <?php echo base_url('contact-us'); ?>" class="">
                            <i class="fa fa-inbox"></i>
                            <span>Inbox</span>
                            <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="<?php echo base_url('contact-us'); ?>">Show Message</a></li>
                        </ul>
                    </li>
                </ul>
                <!-- sidebar menu end-->
            </div>
        </aside>
        <!--sidebar end-->

        <!--main content start-->
        <section id="main-content">
            <section class="wrapper">

                <div class="row">
                    <div class="col-lg-12">
                        <!-- <h3 class="page-header"><?php //echo $title; 
                                                        ?></h3> -->
                        <ol class="breadcrumb">
                            <li>Dashboard </li>
                            <li><?php echo $page; ?></li>
                        </ol>
                    </div>
                </div>
                <script type="text/javascript">
                    function showTime() {
                        var date = new Date();
                        var h = date.getHours(); // 0 - 23
                        var m = date.getMinutes(); // 0 - 59
                        var s = date.getSeconds(); // 0 - 59
                        var session = "AM";

                        if (h == 0) {
                            h = 12;
                        }

                        if (h > 12) {
                            h = h - 12;
                            session = "PM";
                        }

                        h = (h < 10) ? "0" + h : h;
                        m = (m < 10) ? "0" + m : m;
                        s = (s < 10) ? "0" + s : s;

                        var time = h + ":" + m + ":" + s + " " + session;
                        document.getElementById("MyClockDisplay").innerText = time;
                        document.getElementById("MyClockDisplay").textContent = time;

                        setTimeout(showTime, 1000);

                    }

                    showTime();
                </script>