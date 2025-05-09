<div id="content">
    <div id="WEB_DATA">
        <section class="customer-section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="customer-sidebar">
                            <div class="customer-auth">
                                <div class="customer-img">
                                    <img :src="customerImage" alt="">
                                </div>
                                <div class="customer-name">
                                    <p><small>Hello</small></p>
                                    <p>{{ customerName }}</p>
                                </div>
                            </div>
                            <div class="sidebar-menu">
                                <ul>
                                    <li><a href="<?= base_url('customer/account') ?>" class=""><i data-feather="user"></i> My Account</a></li>
                                    <li><a href="<?= base_url('customer/orders') ?>" class=""><i data-feather="database"></i> My Order</a></li>
                                    <li><a href="<?= base_url('customer/account-edit') ?>" class="active"><i data-feather="edit"></i> Profile Edit</a></li>
                                    <li><a href="<?= base_url('customer/change-password') ?>" class=""><i data-feather="lock"></i> Change Password</a></li>
                                    <li><a href="<?= base_url('customer/logout') ?>"><i data-feather="log-out"></i> Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="customer-content checkout-shipping">
                            <h5 class="account-title">Profile Update</h5>
                            <form action="https://www.ozybd.com/customer/profile-update" method="POST" class="row" enctype="multipart/form-data" data-parsley-validate="">
                                <input type="hidden" name="_token" value="rw88yYjeeffxPz8uQWa0uWvHMt1fyb8MxsnCC82T">
                                <div class="col-sm-6">
                                    <div class="form-group mb-3">
                                        <label for="name">Full Name *</label>
                                        <input type="text" id="name" class="form-control " name="name" value="Abid Ali" required>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-6">
                                    <div class="form-group mb-3">
                                        <label for="phone">Phone Number *</label>
                                        <input type="number" id="phone" class="form-control " name="phone" value="01712131415" required>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-6">
                                    <div class="form-group mb-3">
                                        <label for="email">Email Address *</label>
                                        <input type="email" id="email" class="form-control " name="email" value="AbidAli@gmail.com" required>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-6">
                                    <div class="form-group mb-3">
                                        <label for="address">Address *</label>
                                        <input type="text" id="address" class="form-control " name="address" value="Madhobdi" required>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-6">
                                    <div class="form-group mb-3">
                                        <label for="district">District *</label>
                                        <select id="district" class="form-control select2 district " name="district" value="" required>
                                            <option value="">Select...</option>
                                            <option value="Dhaka">Dhaka</option>
                                            <option value="Chittagong" selected>Chittagong</option>
                                            <option value="Sylhet">Sylhet</option>
                                            <option value="Gazipur">Gazipur</option>
                                            <option value="Narayanganj">Narayanganj</option>
                                            <option value="Comilla">Comilla</option>
                                            <option value="Khulna">Khulna</option>
                                            <option value="Mymensingh">Mymensingh</option>
                                            <option value="Barisal">Barisal</option>
                                            <option value="Jamalpur">Jamalpur</option>
                                            <option value="Patuakhali">Patuakhali</option>
                                            <option value="Madaripur">Madaripur</option>
                                            <option value="Munshiganj">Munshiganj</option>
                                            <option value="Sherpur">Sherpur</option>
                                            <option value="Perojpur">Perojpur</option>
                                            <option value="Chandpur">Chandpur</option>
                                            <option value="Faridpur">Faridpur</option>
                                            <option value="Tangail">Tangail</option>
                                            <option value="Jhalokathi">Jhalokathi</option>
                                            <option value="Moulvibazar">Moulvibazar</option>
                                            <option value="Habiganj">Habiganj</option>
                                            <option value="Rangpur">Rangpur</option>
                                            <option value="Jessore">Jessore</option>
                                            <option value="Panchagarh">Panchagarh</option>
                                            <option value="Nilphamari">Nilphamari</option>
                                            <option value="Cox&#039;s Bazar">Cox&#039;s Bazar</option>
                                            <option value="Bandarban">Bandarban</option>
                                            <option value="Bhola">Bhola</option>
                                            <option value="Barguna">Barguna</option>
                                            <option value="Sirajganj">Sirajganj</option>
                                            <option value="Pabna">Pabna</option>
                                            <option value="Natore">Natore</option>
                                            <option value="Naogaon">Naogaon</option>
                                            <option value="Joypurhat">Joypurhat</option>
                                            <option value="Satkhira">Satkhira</option>
                                            <option value="Meherpur">Meherpur</option>
                                            <option value="Shariatpur">Shariatpur</option>
                                            <option value="Rajbari">Rajbari</option>
                                            <option value="Manikganj">Manikganj</option>
                                            <option value="Gopalganj">Gopalganj</option>
                                            <option value="Thakurgaon">Thakurgaon</option>
                                            <option value="Netrokona">Netrokona</option>
                                            <option value="Sunamganj">Sunamganj</option>
                                            <option value="Norshingdi">Norshingdi</option>
                                            <option value="Feni">Feni</option>
                                            <option value="Dinajpur">Dinajpur</option>
                                            <option value="Gaibandha">Gaibandha</option>
                                            <option value="Chuadanga">Chuadanga</option>
                                            <option value="Rajshahi">Rajshahi</option>
                                            <option value="Magura">Magura</option>
                                            <option value="Narail">Narail</option>
                                            <option value="Rangamati">Rangamati</option>
                                            <option value="Kushtia">Kushtia</option>
                                            <option value="Chapai Nawabganj">Chapai Nawabganj</option>
                                            <option value="Jhenaidah">Jhenaidah</option>
                                            <option value="Noakhali">Noakhali</option>
                                            <option value="Laksmipur">Laksmipur</option>
                                            <option value="Kurigram">Kurigram</option>
                                            <option value="Kishoreganj">Kishoreganj</option>
                                            <option value="Bogra">Bogra</option>
                                            <option value="Khagrachari">Khagrachari</option>
                                            <option value="Brahmanbaria">Brahmanbaria</option>
                                            <option value="Bagerhat">Bagerhat</option>
                                            <option value="Lalmonirhat">Lalmonirhat</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-6">
                                    <div class="form-group mb-3">
                                        <label for="area">Area *</label>
                                        <select id="area" class="form-control area select2 " name="area" value="" required>
                                            <option value="">Select...</option>
                                            <option value="399">Firozshah</option>
                                            <option value="400">GEC</option>
                                            <option value="401">Halishahar</option>
                                            <option value="402">Halishshar</option>
                                            <option value="403">Sadarghat</option>
                                            <option value="404">Cadet College</option>
                                            <option value="405">Chandgaon</option>
                                            <option value="406">Chattogram Airport</option>
                                            <option value="407">Chattogram Bandar</option>
                                            <option value="408">Chattogram Cantonment</option>
                                            <option value="409">Chattogram Chawkbazar</option>
                                            <option value="410">Mohard</option>
                                            <option value="411">Chattogram Customs Acca</option>
                                            <option value="412">Sitakundu</option>
                                            <option value="413">Chattogram GPO</option>
                                            <option value="414">Nasirabad</option>
                                            <option value="415">Jalalabad</option>
                                            <option value="416">Chattogram New Market</option>
                                            <option value="417">North Halishahar</option>
                                            <option value="418">Chattogram Oxygen</option>
                                            <option value="419" selected>North Kattali</option>
                                            <option value="420">Kotwali Chattogram</option>
                                            <option value="421">Bondor (Chittagong)</option>
                                            <option value="422">Chattogram Politechnic Institute</option>
                                            <option value="423">North Katuli</option>
                                            <option value="424">Noyabazar</option>
                                            <option value="425">Agrabad</option>
                                            <option value="426">Sitakunda Barabkunda</option>
                                            <option value="427">Barahatia</option>
                                            <option value="428">Chattogram Sailors Colony</option>
                                            <option value="429">Pahartoli</option>
                                            <option value="430">AK Khan</option>
                                            <option value="431">Sitakunda Baroidhala</option>
                                            <option value="432">Colonel Hat</option>
                                            <option value="433">Combined Military Hospital (CMH)</option>
                                            <option value="434">Panchlaish</option>
                                            <option value="435">Al- Amin Baria Madra</option>
                                            <option value="436">Sitakunda Bawashbaria</option>
                                            <option value="437">Court Buliding</option>
                                            <option value="438">Patenga</option>
                                            <option value="439">Al- Amin Baria Madrasa</option>
                                            <option value="440">Sitakunda Bhatiari</option>
                                            <option value="441">Amin Jute Mills</option>
                                            <option value="442">Sitakunda Fouzdarhat</option>
                                            <option value="443">Chittagong Sadar</option>
                                            <option value="444">Dakkshin Pahartoli</option>
                                            <option value="445">Anandabazar</option>
                                            <option value="446">Sitakunda Jafrabad</option>
                                            <option value="447">Double Mooring</option>
                                            <option value="448">Rampur</option>
                                            <option value="449">Sitakunda Kumira</option>
                                            <option value="450">South Halishahar</option>
                                            <option value="451">Rampura TSO</option>
                                            <option value="452">Bayezid Bostami</option>
                                            <option value="453">Wazedia</option>
                                            <option value="454">Kattuli</option>
                                            <option value="455">Khulshi</option>
                                            <option value="456">Export Processing</option>
                                            <option value="457">Middle Patenga</option>
                                            <option value="1072">Fatikchhari Harualchhari</option>
                                            <option value="1073">Raozan Fatepur</option>
                                            <option value="1074">Fatikchhari Najirhat</option>
                                            <option value="1075">Fatikchari</option>
                                            <option value="1076">Raozan Guzra Noapara</option>
                                            <option value="1077">Fatikchhari Nanupur</option>
                                            <option value="1078">Hathazari</option>
                                            <option value="1079">Raozan jagannath Hat</option>
                                            <option value="1080">Raozan Kundeshwari</option>
                                            <option value="1081">Fatikchhari Narayanhat</option>
                                            <option value="1082">Raozan Mohamuni</option>
                                            <option value="1083">Raozan Pouroshobha</option>
                                            <option value="1084">Rangunia</option>
                                            <option value="1085">Rauzan Gahira</option>
                                            <option value="1086">Raojan</option>
                                            <option value="1087">Chattogram University</option>
                                            <option value="1088">Hathazari Fatahabad</option>
                                            <option value="1089">Hathazari Gorduara</option>
                                            <option value="1090">Hathazari Katirhat</option>
                                            <option value="1091">Hathazari Madrasa</option>
                                            <option value="1092">Hathazari Mirzapur</option>
                                            <option value="1093">Sayad Bari</option>
                                            <option value="1094">Hathazari Nuralibari</option>
                                            <option value="1095">Muradnagar - Hathazari</option>
                                            <option value="1096">Hathazari Yunus Nagar</option>
                                            <option value="1097">Dakkhin Ghatchak</option>
                                            <option value="1098">Kadeer Nagar</option>
                                            <option value="1099">Kaptai Chandraghona</option>
                                            <option value="1100">Uttar Gatchak</option>
                                            <option value="1101">Rangunia Dhamair</option>
                                            <option value="1102">Rangunia Sadar</option>
                                            <option value="1103">Ranir Hat</option>
                                            <option value="1104">Raozan B.I.T Post Office</option>
                                            <option value="1105">Fakirkill</option>
                                            <option value="1106">Raozan Beenajuri</option>
                                            <option value="1107">Fatikchhari Bhandar Sharif</option>
                                            <option value="1108">Raozan Dewanpur</option>
                                            <option value="1109">Mirsharai Abutorab</option>
                                            <option value="1110">Mirsharai Azampur</option>
                                            <option value="1111">Mirsharai Bharawazhat</option>
                                            <option value="1112">Mirsharai Darrogahat</option>
                                            <option value="1113">Mirsarai</option>
                                            <option value="1114">Mirsharai Joarganj</option>
                                            <option value="1115">Mirsharai Korerhat</option>
                                            <option value="1116">Mirsharai Mohazanhat</option>
                                            <option value="1117">Boalkhali Sakpura</option>
                                            <option value="1118">Patiya</option>
                                            <option value="1119">Boalkhali Saroatoli</option>
                                            <option value="1120">Karnaphuli</option>
                                            <option value="1121">Jaldia Marine Academy</option>
                                            <option value="1122">Jaldia Merine Accade</option>
                                            <option value="1123">Patiya Budhpara</option>
                                            <option value="1124">Patiya Sadar</option>
                                            <option value="1125">Anawara Battali</option>
                                            <option value="1126">Anawara Paroikora</option>
                                            <option value="1127">Boalkhali Charandwip</option>
                                            <option value="1128">Boalkhali Iqbal Park</option>
                                            <option value="1129">Anwara</option>
                                            <option value="1130">Boalkhali Kadurkhal</option>
                                            <option value="1131">Boalkhali Kanungopara</option>
                                            <option value="1132">Boalkhali Sadar</option>
                                            <option value="1133">Boalkhali</option>
                                            <option value="1214">Sandwip (Guptachara)</option>
                                            <option value="1215">Sandwip Shiberhat</option>
                                            <option value="1216">Sandwip Urirchar</option>
                                            <option value="1217">Sandwip (Enam Nagar)</option>
                                            <option value="1218">Sandwip (Complex)</option>
                                            <option value="1219">Sandwip (Kalapaniya)</option>
                                            <option value="1220">Sandwip (Gasua)</option>
                                            <option value="1328">Chandanaish</option>
                                            <option value="1329">Lohagara</option>
                                            <option value="1330">Satkania Baitul Ijjat</option>
                                            <option value="1331">Satkania Bazalia</option>
                                            <option value="1332">Satkania</option>
                                            <option value="1333">Jaldi Banigram</option>
                                            <option value="1334">Jaldi Gunagari</option>
                                            <option value="1335">Jaldi Khan Bahadur</option>
                                            <option value="1336">Jaldi Sadar</option>
                                            <option value="1337">East Joara Barma</option>
                                            <option value="1338">East Joara Dohazari</option>
                                            <option value="1339">East Joara East Joara</option>
                                            <option value="1340">East Joara Gachbaria</option>
                                            <option value="1341">Lohagara Chunti</option>
                                            <option value="1342">Lohagara Padua</option>
                                            <option value="1343">Banshkhali</option>

                                        </select>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-12">
                                    <div class="form-group mb-3">
                                        <label for="image">Image *</label>
                                        <input type="file" id="image" class="form-control " name="image" value="public/uploads/default/user.png">
                                        <img src="https://www.ozybd.com/public/uploads/default/user.png" class="rounded-circle m-1" width="50px" alt="">
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-12">
                                    <div class="form-group mb-3">
                                        <button type="submit" class="submit-btn">Update</button>
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
</div>

<script src="<?php echo base_url('assets/fontend/') ?>js/vue/vue.min.js"></script>
<script src="<?php echo base_url('assets/fontend/') ?>js/vue/axios.min.js"></script>
<script src="<?php echo base_url('assets/fontend/') ?>js/vue/moment.min.js"></script>

<script>
    new Vue({
        el: '#WEB_DATA',
        data() {
            return {
                img_url: "<?php echo $iurl; ?>",
                customerId: '<?php echo $this->session->userdata("customer_id"); ?>',
                customerName: '<?php echo $this->session->userdata("customer_name"); ?>',
                customerType: '<?php echo $this->session->userdata("customer_type"); ?>',
                customerMobile: '<?php echo $this->session->userdata("customer_mobile"); ?>',
                customerEmail: '<?php echo $this->session->userdata("customer_email"); ?>',
                customerAddress: '<?php echo $this->session->userdata("customer_address"); ?>',
                districtId: '<?php echo $this->session->userdata("district_id"); ?>',
                districtName: '<?php echo $this->session->userdata("district_name"); ?>',
                thanaId: '<?php echo $this->session->userdata("thana_id"); ?>',
                thanaName: '<?php echo $this->session->userdata("thana_name"); ?>',
                customerImage: '',
                imageFile: '<?php echo $this->session->userdata("customer_image"); ?>',
            }
        },
        filters: {
            pDecimal(value) {
                return value == null || value == '' ? '0' : parseFloat(value).toFixed(0);
            },
            decimal(value) {
                return value == null || value == '' ? '0.00' : parseFloat(value).toFixed(2);
            }
        },
        async created() {
            this.customerImage = this.imageFile == '' ? '/uploads/no_user.png' : this.img_url + this.imageFile;
            if (this.product_slug != '') {
                await this.getProducts();
            }
        },
        methods: {
            async getProducts() {
                await axios.post('/get_product_details', {
                    productSlug: this.product_slug
                }).then(async res => {
                    let product = res.data;
                    let shownProduct = product.map((pro, index) => {
                        pro.pro_image = this.img_url + pro.Product_Image;
                        pro.size_image = this.img_url + pro.Product_SizeImage;
                        return pro;
                    });

                    this.selectedProduct = shownProduct[0];
                })
            }
        }
    })
</script>