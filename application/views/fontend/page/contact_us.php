<?php $wab = $this->db->query("SELECT * FROM tbl_website_profile LIMIT 1")->row(); ?>
<div id="content">
    <section class="comn_sec">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="cmn_menu">
                        <ul>
                            <li>
                                <a href="<?= base_url('about-us') ?>">About us</a>
                            </li>
                            <li>
                                <a href="<?= base_url('contact-us') ?>">Contact Us</a>
                            </li>
                            <li>
                                <a href="<?= base_url('return-refund') ?>">Returns & Refund</a>
                            </li>
                            <li>
                                <a href="<?= base_url('privacy-policy') ?>">Privacy Policy</a>
                            </li>
                            <li>
                                <a href="<?= base_url('terms-conditions') ?>">Terms & Conditions</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="contact-section">
        <div class="container">

            <div class="row">
                <div class="col-sm-6">
                    <div class="cont_item">
                        <a href="tel:<?= $wab->Website_Mobile ?>">
                            <i data-feather="phone"></i>
                            <?= $wab->Website_Mobile ?>
                        </a>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="cont_item">
                        <a href="mailto:<?= $wab->Website_Email ?>">
                            <i data-feather="mail"></i>
                            <?= $wab->Website_Email ?>
                        </a>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-sm-12">

                </div>
                <div class="col-sm-10">
                    <div class="contact-form">
                        <h5 class="account-title">অথবা </h5>
                        <form action="<?= base_url() ?>" method="POST" class="row" enctype="multipart/form-data" data-parsley-validate="">
                            <div class="col-sm-6">
                                <div class="form-group mb-3">
                                    <label for="name">সম্পূর্ণ নাম *</label>
                                    <input type="text" id="name" class="form-control " name="name" value="" required>
                                </div>
                            </div>
                            <!-- col-end -->
                            <div class="col-sm-6">
                                <div class="form-group mb-3">
                                    <label for="phone">মোবাইল নাম্বার *</label>
                                    <input type="number" id="phone" class="form-control " name="phone" value="" required>
                                </div>
                            </div>
                            <!-- col-end -->
                            <div class="col-sm-12">
                                <div class="form-group mb-3">
                                    <label for="email">ইমেইল *</label>
                                    <input type="email" id="email" class="form-control " name="email" value="" required>
                                </div>
                            </div>
                            <!-- col-end -->
                            <div class="col-sm-12">
                                <div class="form-group mb-3">
                                    <label for="subject">বিষয় *</label>
                                    <input type="text" id="subject" class="form-control " name="subject" value="" required>
                                </div>
                            </div>
                            <!-- col-end -->
                            <div class="col-sm-12">
                                <div class="form-group mb-3">
                                    <label for="message">মেসেজ লিখুন *</label>
                                    <textarea type="text" id="message" class="form-control " name="message" value="" required></textarea>
                                </div>
                            </div>
                            <!-- col-end -->
                            <div class="col-sm-12">
                                <div class="form-group mb-3">
                                    <button type="submit" class="submit-btn">মেসেজ পাঠান</button>
                                </div>
                            </div>
                            <!-- col-end -->
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </section>
</div>