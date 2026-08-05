<div id="content">
    <style>
        .customer-invoice {
            margin: 25px 0;
        }

        .invoice_btn {
            margin-bottom: 15px;
        }

        td {
            font-size: 16px;
        }

        @page {
            size: a4;
            margin: 0mm;
            background: #F9F9F9
        }

        @media print {
            td {
                font-size: 18px;
            }

            header,
            footer,
            .no-print,
            .mobile-menu {
                display: none !important;
            }
        }
    </style>

    <div id="OrderInvoice">
        <section class="customer-invoice">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <a href="<?= base_url('customer/orders') ?>"><strong><i class="fa-solid fa-arrow-left"></i> Back To Order</strong></a>
                    </div>
                    <div class="col-sm-6">
                        <button v-on:click.prevent="print" class="no-print invoice_btn"><i class="fa fa-print"></i></button>
                    </div>
                </div>
                <div id="invoiceContent">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="invoice-innter" style="width: 900px;margin: 0 auto;background: #f9f9f9;overflow: hidden;padding: 30px;padding-top: 0;">
                                <table style="width:100%">
                                    <tr>
                                        <td style="width: 40%; float: left; padding-top: 15px;">
                                            <img :src="website.web_logo" style="margin-top:15px !important;width:150px" alt="" />
                                            <p style="font-size: 14px; color: #222; margin: 20px 0;"><strong>Payment Method:</strong> <span style="text-transform: uppercase;">{{ order.payment_type }}</span></p>
                                            <div class="invoice_form">
                                                <p style="font-size:16px;line-height:1.8;color:#222"><strong>Invoice From:</strong></p>
                                                <p style="font-size:16px;line-height:1.8;color:#222">{{ website.Website_Name }}</p>
                                                <p style="font-size:16px;line-height:1.8;color:#222">{{ website.Website_Mobile }}</p>
                                                <p style="font-size:16px;line-height:1.8;color:#222">{{ website.Website_Email }}</p>
                                                <p style="font-size:16px;line-height:1.8;color:#222">{{ website.Website_Address }}</p>
                                            </div>
                                        </td>
                                        <td style="width:60%;float: left;">
                                            <div class="invoice-bar" style=" background: #167389; transform: skew(38deg); width: 100%; margin-left: 65px; padding: 20px 60px; ">
                                                <p style="font-size: 30px; color: #fff; transform: skew(-38deg); text-transform: uppercase; text-align: right; font-weight: bold;">Invoice</p>
                                            </div>
                                            <div class="invoice-bar" style="background:#fff; width: 80%; margin-left: 132px; padding: 12px 32px; margin-top: 6px;text-align:right">
                                                <p style="display:block;text-align: right;">Invoice Date: <strong>{{ order.SaleMaster_SaleDate | formatDateTime('DD-MM-YYYY') }}</strong></p>
                                                <p style="display:block;text-align: right;">Invoice No: <strong>{{ order.SaleMaster_InvoiceNo }}</p>
                                                </p>
                                            </div>
                                            <div class="invoice_to">
                                                <p style="font-size:16px;line-height:1.8;color:#222;text-align: right;"><strong>Invoice To:</strong></p>
                                                <p style="font-size:16px;line-height:1.8;color:#222;text-align: right;font-weight:normal">{{ order.Customer_Name }}</p>
                                                <p style="font-size:16px;line-height:1.8;color:#222;text-align: right;font-weight:normal">{{ order.Customer_Mobile }}</p>
                                                <p style="font-size:16px;line-height:1.8;color:#222;text-align: right;font-weight:normal">{{ order.Customer_Address }}</p>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <table class="table" style="margin-top: 30px">
                                    <thead style="background: #167389; color: #fff;">
                                        <tr>
                                            <th style="text-align: center;">SL</th>
                                            <th>Product Details</th>
                                            <th style="text-align: center;">Image</th>
                                            <th style="text-align: center;">Price</th>
                                            <th style="text-align: center;">Qty</th>
                                            <th style="text-align: center;">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="(product, sl) in cart">
                                            <td style="text-align: center;">{{ sl + 1 }}</td>
                                            <td>{{ product.Product_Name }}</td>
                                            <td style="text-align: center;" class="invoice-img">
                                                <img :src="product.pro_image" :alt="product.Product_Name">
                                            </td>
                                            <td style="text-align: right;">৳ {{ product.SaleDetails_Rate }}</td>
                                            <td style="text-align: center;">{{ product.SaleDetails_TotalQuantity }}</td>
                                            <td style="text-align: right;">৳ {{ product.SaleDetails_TotalAmount }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="invoice-bottom">

                                    <table class="table" style="width: 300px; float: right; margin-bottom: 30px;">
                                        <tbody style="background:#167389">
                                            <tr style="color:#fff">
                                                <td><strong>SubTotal</strong></td>
                                                <td style="text-align: right;"><strong>৳ {{ order.SaleMaster_SubTotalAmount }}</strong></td>
                                            </tr>
                                            <tr style="color:#fff">
                                                <td><strong>Delivery Charge (+)</strong></td>
                                                <td style="text-align: right;"><strong>৳ {{ order.SaleMaster_Freight }}</strong></td>
                                            </tr>
                                            <tr style="background:#167389;color:#fff">
                                                <td><strong>Final Total</strong></td>
                                                <td style="text-align: right;"><strong>৳ {{ order.SaleMaster_TotalSaleAmount }}</strong></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="terms-condition" style="overflow: hidden; width: 100%; text-align: center; border-top: 1px solid #ddd;">
                                        <p style="text-align: center; font-style: italic; font-size: 15px; margin-top: 10px;">* This is a computer generated invoice, does not require any signature.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                img_url: <?php echo json_encode($iurl); ?>,
                website: {
                    Website_Name: null,
                    Website_Mobile: null,
                    Website_Email: null,
                    Website_Address: null,
                    web_logo: null
                },
                style: null,
            }
        },
        filters: {
            formatDateTime(dt, format) {
                return dt == "" || dt == null ? "" : moment(dt).format(format);
            },
        },
        created() {
            this.setStyle();
            this.getWebsiteProfile();
            this.getCOrders();
        },
        methods: {
            getCOrders() {
                axios.post('/get_corders', {
                    orderId: this.order.SaleMaster_SlNo
                }).then(res => {
                    this.order = res.data.orders[0];
                    this.cart = res.data.orderDetails.map(item => {
                        item.pro_image = item.Product_Image ? this.img_url + item.Product_Image : this.img_url + 'uploads/no_image.jpg';
                        return item;
                    });
                })
            },
            getWebsiteProfile() {
                axios.get('/get_website_profile').then(res => {
                    let website = res.data.map(item => {
                        item.web_logo = this.img_url + item.Footer_Logo;
                        return item;
                    });
                    this.website = website[0];
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
            },
            async print() {
                let reportContent = `
                    <link rel="stylesheet" href="<?= base_url('assets/fontend/') ?>css/bootstrap.min.css">
					<div class="container">
						<div class="row">
							<div class="col-xs-12">
								${document.querySelector('#invoiceContent').innerHTML}
							</div>
						</div>
					</div>
				`;

                var reportWindow = window.open('', 'PRINT', `height=${screen.height}, width=${screen.width}`);

                reportWindow.document.body.innerHTML += reportContent;

                let invoiceStyle = reportWindow.document.createElement('style');
                invoiceStyle.innerHTML = this.style.innerHTML;
                reportWindow.document.head.appendChild(invoiceStyle);

                reportWindow.focus();
                await new Promise(resolve => setTimeout(resolve, 1000));
                reportWindow.print();
                reportWindow.close();
            }
        }
    })
</script>