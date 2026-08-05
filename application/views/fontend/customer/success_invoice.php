<div id="content">
    <div id="OrderInvoice">
        <section class="customer-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-sm-8">
                        <div class="success-img">
                            <img src="../../assets/fontend/images/ovinondon.png" alt="Order Success image">
                        </div>
                        <div class="success-title">
                            <h2>আপনার অর্ডারটি আমরা পেয়েছি। খুব শিগগিরই আমাদের একজন প্রতিনিধি আপনাকে ফোন করবেন।</h2>
                        </div>

                        <h5 class="my-3">Your Order Details</h5>
                        <div class="success-table">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td>
                                            <p>Invoice ID</p>
                                            <p><strong>{{ order.SaleMaster_InvoiceNo }}</strong></p>
                                        </td>
                                        <td>
                                            <p>Date</p>
                                            <p><strong>{{ order.SaleMaster_SaleDate }}</strong></p>
                                        </td>
                                        <td>
                                            <p>Phone</p>
                                            <p><strong>{{ order.Customer_Mobile }}</strong></p>
                                        </td>
                                        <td>
                                            <p>Total</p>
                                            <p><strong>৳ {{ order.SaleMaster_TotalSaleAmount }}</strong></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <p>Payment Method</p>
                                            <p><strong>{{ order.payment_type }}</strong></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- success table -->
                        <h5 class="my-4">Pay with cash upon delivery</h5>
                        <div class="success-table">
                            <h6 class="mb-3">Order Delivery</h6>
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="(product, sl) in cart">
                                        <td><p>{{ product.Product_Name }} x {{ product.SaleDetails_TotalQuantity }}</p></td>
                                        <td align="right"><p><strong>৳ {{ product.SaleDetails_TotalAmount }}</strong></p></td>
                                    </tr>
                                    <tr>
                                        <th class="text-end px-4">Net Total</th>
                                        <td><strong id="net_total">৳ {{ order.SaleMaster_SubTotalAmount }}</strong></td>
                                    </tr>
                                    <tr>
                                        <th class="text-end px-4">Delivery Charge</th>
                                        <td>
                                            <strong id="cart_shipping_cost">৳ {{ order.SaleMaster_Freight }}</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="text-end px-4">Grand Total</th>
                                        <td>
                                            <strong id="grand_total">৳ {{ order.SaleMaster_TotalSaleAmount }}</strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td>
                                            <h5 class="my-4">Billing Address</h5>
                                            <p>{{ order.Customer_Name }}</p>
                                            <p>{{ order.Customer_Mobile }}</p>
                                            <p>{{ order.Customer_Address }}</p>
                                            <!--<p>Pilkhana</p>-->
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- success table -->
                        <a href="/" class=" my-5 btn btn-primary">Go To Home</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<script>
    new Vue({
        el: '#OrderInvoice',
        data() {
            return {
                img_url: <?php echo json_encode($iurl); ?>,
                order: {
                    SaleMaster_SlNo: parseInt(<?php echo json_encode($orderId); ?>),
                    SaleMaster_InvoiceNo: null,
                    Customer_IDNo: null,
                    SaleMaster_SaleDate: null,
                    Customer_Name: null,
                    Customer_Address: null,
                    Customer_Mobile: null,
                    SaleMaster_TotalSaleAmount: null,
                    SaleMaster_TotalDiscountAmount: null,
                    SaleMaster_TaxAmount: null,
                    SaleMaster_Freight: null,
                    SaleMaster_SubTotalAmount: null,
                    SaleMaster_PaidAmount: null,
                    SaleMaster_DueAmount: null,
                    SaleMaster_Previous_Due: null,
                    SaleMaster_Description: null,
                    AddBy: null
                },
                cart: [],
                style: null,
            }
        },
        created() {
            this.setStyle();
            this.getCOrders();
        },
        methods: {
            getCOrders() {
                axios.post('/get_corders', {
                    orderId: this.order.SaleMaster_SlNo
                }).then(res => {
                    this.order = res.data.orders[0];
                    this.cart = res.data.orderDetails;
                })
            },
            formatNumber(num) {
                return parseFloat(num).toFixed(2)
            },
            setStyle() {
                this.style = document.createElement('style');
                this.style.innerHTML = `
                div[_h098asdh]{
                    background-color:#e0e0e0;
                    font-weight: bold;
                    font-size:15px;
                    margin-bottom:15px;
                    padding: 5px;
                }
                div[_d9283dsc]{
                    padding-bottom:10px;
                    border-bottom: 1px solid #ccc;
                    margin-bottom: 10px;
                }
                table[_a584de]{
                    width: 100%;
                    text-align:center;
                }
                table[_a584de] thead{
                    font-weight:bold;
                }
                table[_a584de] td{
                    padding: 3px;
                    border: 1px solid #ccc;
                }
                table[_t92sadbc2]{
                    width: 100%;
                }
                table[_t92sadbc2] td{
                    padding: 2px;
                }
                .cus_heading {
                    background: #DDDDDD;
                    padding: 5px;
                    font-size: 12px;
                }
                .complain,.investigation {
                    border: 1px solid #ccc;
		            margin: 5px 0px;
                    min-height: 90px;
                }
            `;
                document.head.appendChild(this.style);
            },
            convertNumberToWords(amountToWord) {
                var words = new Array();
                words[0] = '';
                words[1] = 'One';
                words[2] = 'Two';
                words[3] = 'Three';
                words[4] = 'Four';
                words[5] = 'Five';
                words[6] = 'Six';
                words[7] = 'Seven';
                words[8] = 'Eight';
                words[9] = 'Nine';
                words[10] = 'Ten';
                words[11] = 'Eleven';
                words[12] = 'Twelve';
                words[13] = 'Thirteen';
                words[14] = 'Fourteen';
                words[15] = 'Fifteen';
                words[16] = 'Sixteen';
                words[17] = 'Seventeen';
                words[18] = 'Eighteen';
                words[19] = 'Nineteen';
                words[20] = 'Twenty';
                words[30] = 'Thirty';
                words[40] = 'Forty';
                words[50] = 'Fifty';
                words[60] = 'Sixty';
                words[70] = 'Seventy';
                words[80] = 'Eighty';
                words[90] = 'Ninety';
                amount = amountToWord == null ? '0.00' : amountToWord.toString();
                var atemp = amount.split(".");
                var number = atemp[0].split(",").join("");
                var n_length = number.length;
                var words_string = "";
                if (n_length <= 9) {
                    var n_array = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0);
                    var received_n_array = new Array();
                    for (var i = 0; i < n_length; i++) {
                        received_n_array[i] = number.substr(i, 1);
                    }
                    for (var i = 9 - n_length, j = 0; i < 9; i++, j++) {
                        n_array[i] = received_n_array[j];
                    }
                    for (var i = 0, j = 1; i < 9; i++, j++) {
                        if (i == 0 || i == 2 || i == 4 || i == 7) {
                            if (n_array[i] == 1) {
                                n_array[j] = 10 + parseInt(n_array[j]);
                                n_array[i] = 0;
                            }
                        }
                    }
                    value = "";
                    for (var i = 0; i < 9; i++) {
                        if (i == 0 || i == 2 || i == 4 || i == 7) {
                            value = n_array[i] * 10;
                        } else {
                            value = n_array[i];
                        }
                        if (value != 0) {
                            words_string += words[value] + " ";
                        }
                        if ((i == 1 && value != 0) || (i == 0 && value != 0 && n_array[i + 1] == 0)) {
                            words_string += "Crores ";
                        }
                        if ((i == 3 && value != 0) || (i == 2 && value != 0 && n_array[i + 1] == 0)) {
                            words_string += "Lakhs ";
                        }
                        if ((i == 5 && value != 0) || (i == 4 && value != 0 && n_array[i + 1] == 0)) {
                            words_string += "Thousand ";
                        }
                        if (i == 6 && value != 0 && (n_array[i + 1] != 0 && n_array[i + 2] != 0)) {
                            words_string += "Hundred and ";
                        } else if (i == 6 && value != 0) {
                            words_string += "Hundred ";
                        }
                    }
                    words_string = words_string.split("  ").join(" ");
                }
                return words_string + ' only';
            }
        }
    })
</script>