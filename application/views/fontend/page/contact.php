<section class="hero-wrap hero-wrap-2" style="background-image: url('assets/fontend/images/top-banner.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs mb-2">
                    <span class="mr-2">
                        <a href="/">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Contact us <i class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread">Contact us</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section bg-light" id="ContactForm">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 mb-5">
                <div class="wrapper">
                    <div class="row no-gutters">
                        <div class="col-md-7 d-flex">
                            <div class="contact-wrap w-100 p-md-5 p-4">
                                <h3 class="mb-4">Get in touch</h3>
                                <form @submit.prevent="saveContact" id="contactForm" class="contactForm">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" v-model="contact.name" id="name" placeholder="Name" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="email" class="form-control" v-model="contact.email" id="email" placeholder="Email" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="number" class="form-control" v-model="contact.phone" id="phone" placeholder="Phone" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" v-model="contact.subject" id="subject" placeholder="Subject" />
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <textarea v-model="contact.message" class="form-control" id="message" cols="30" rows="7" placeholder="Message"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="submit" value="Send Message" class="btn btn-primary" />
                                                <div class="submitting"></div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-5 d-flex align-items-stretch">
                            <div class="info-wrap bg-primary w-100 p-lg-5 p-4">
                                <h3 class="mb-4 mt-md-4">Contact us</h3>
                                <div class="dbox w-100 d-flex align-items-start">
                                    <div class="icon d-flex align-items-center justify-content-center">
                                        <span class="fa fa-map-marker"></span>
                                    </div>
                                    <div class="text pl-3">
                                        <p><span>Address:</span> <?php echo $company->address; ?></p>
                                    </div>
                                </div>
                                <div class="dbox w-100 d-flex align-items-center">
                                    <div class="icon d-flex align-items-center justify-content-center">
                                        <span class="fa fa-phone"></span>
                                    </div>
                                    <div class="text pl-3">
                                        <p><span>Phone:</span> <a href="tel://<?php echo $company->phone; ?>"><?php echo $company->phone; ?></a></p>
                                    </div>
                                </div>
                                <div class="dbox w-100 d-flex align-items-center">
                                    <div class="icon d-flex align-items-center justify-content-center">
                                        <span class="fa fa-paper-plane"></span>
                                    </div>
                                    <div class="text pl-3">
                                        <p><span>Email:</span> <a href="mailto:<?php echo $company->email; ?>"><?php echo $company->email; ?></a></p>
                                    </div>
                                </div>
                                <div class="dbox w-100 d-flex align-items-center">
                                    <div class="icon d-flex align-items-center justify-content-center">
                                        <span class="fa fa-globe"></span>
                                    </div>
                                    <div class="text pl-3">
                                        <p><span>Website</span> <a href="https://skgautobd.com/">skgautobd.com</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    var app = new Vue({
        el: "#ContactForm",
        data(){
            return {
                contact: {
                    id: 0,
                    name: '',
                    email: '',
                    phone: '',
                    subject: '',
                    message: '',
                },
                regMobile: /^01[13-9][\d]{8}$/,
            }
        },
        methods:{
            saveContact() {
                if(this.contact.name == '') {
                    $.notify('Please Enter Your Name', "error");
                    return;
                }
                if(this.contact.phone == '') {
                    $.notify('Enter Your phone number', "error");
                    return;
                }
                if(!this.validateMobile(this.contact.phone)) {
                    $.notify('Please Enter a valid phone number!', "error");
                    return;
                }
                axios.post('/save_contact', this.contact)
                .then(res => {
                    let r = res.data;
                    $.notify(r.message, "success");
                    this.clearContactForm();
                })
            },
            clearContactForm() {
                this.contact = {
                    id: 0,
                    name: '',
                    email: '',
                    phone: '',
                    subject: '',
                    message: '',
                }
            },
            validateMobile(mobile) {
                if(mobile == null || mobile == '') return true;
                return this.regMobile.test(mobile);
            }
        },
    })
</script>