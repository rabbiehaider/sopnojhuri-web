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
    <section class="customer-invoice ">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <a href="https://www.ozybd.com/customer/orders"><strong><i class="fa-solid fa-arrow-left"></i> Back To Order</strong></a>
                </div>
                <div class="col-sm-6">
                    <button onclick="printFunction()" class="no-print invoice_btn"><i class="fa fa-print"></i></button>
                </div>
                <div class="col-sm-12">
                    <div class="invoice-innter" style="width: 900px;margin: 0 auto;background: #f9f9f9;overflow: hidden;padding: 30px;padding-top: 0;">
                        <table style="width:100%">
                            <tr>
                                <td style="width: 40%; float: left; padding-top: 15px;">
                                    <img src="https://www.ozybd.com/public/uploads/settings/1749012750-website-svg.webp" style="margin-top:25px !important;width:150px" alt="">
                                    <p style="font-size: 14px; color: #222; margin: 20px 0;"><strong>Payment Method:</strong> <span style="text-transform: uppercase;">Cash On Delivery</span></p>
                                    <div class="invoice_form">
                                        <p style="font-size:16px;line-height:1.8;color:#222"><strong>Invoice From:</strong></p>
                                        <p style="font-size:16px;line-height:1.8;color:#222">ozybd</p>
                                        <p style="font-size:16px;line-height:1.8;color:#222">01877702077</p>
                                        <p style="font-size:16px;line-height:1.8;color:#222">info.ozybd@gmail.com</p>
                                        <p style="font-size:16px;line-height:1.8;color:#222">K-85/3,Bhai Bhai Road,Khilkhet, Dhaka 1229</p>
                                    </div>
                                </td>
                                <td style="width:60%;float: left;">
                                    <div class="invoice-bar" style=" background: #167389; transform: skew(38deg); width: 100%; margin-left: 65px; padding: 20px 60px; ">
                                        <p style="font-size: 30px; color: #fff; transform: skew(-38deg); text-transform: uppercase; text-align: right; font-weight: bold;">Invoice</p>
                                    </div>
                                    <div class="invoice-bar" style="background:#fff; width: 80%; margin-left: 132px; padding: 12px 32px; margin-top: 6px;text-align:right">
                                        <p style="display:block;text-align: right;">Invoice Date: <strong>09-06-25</strong></p>
                                        <p style="display:block;text-align: right;">Invoice No: <strong>94991</p>
                                        </p>
                                    </div>
                                    <div class="invoice_to" style="padding-top: 20px;">
                                        <p style="font-size:16px;line-height:1.8;color:#222;text-align: right;"><strong>Invoice To:</strong></p>
                                        <p style="font-size:16px;line-height:1.8;color:#222;text-align: right;font-weight:normal">Abid Ali</p>
                                        <p style="font-size:16px;line-height:1.8;color:#222;text-align: right;font-weight:normal">01712131415</p>
                                        <p style="font-size:16px;line-height:1.8;color:#222;text-align: right;font-weight:normal">Madhobdi</p>
                                        <p style="font-size:16px;line-height:1.8;color:#222;text-align: right;font-weight:normal">Pilkhana</p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="table" style="margin-top: 30px">
                            <thead style="background: #167389; color: #fff;">
                                <tr>
                                    <th>SL</th>
                                    <th>Product</th>
                                    <th>Image</th>
                                    <th>Price</th>
                                    <th>Qty</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>OZ-Special Premium Hand bag

                                    </td>
                                    <td class="invoice-img">
                                        <img src="https://www.ozybd.com/public/uploads/product/1737728533-44.webp"
                                            alt="">
                                    </td>
                                    <td>৳1899</td>
                                    <td>1</td>
                                    <td>৳1899</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="invoice-bottom">

                            <table class="table" style="width: 300px; float: right;    margin-bottom: 30px;">
                                <tbody style="background:#167389">
                                    <tr style="color:#fff">
                                        <td><strong>SubTotal</strong></td>
                                        <td><strong>৳1899</strong></td>
                                    </tr>
                                    <tr style="color:#fff">
                                        <td><strong>Shipping(+)</strong></td>
                                        <td><strong>৳80</strong></td>
                                    </tr>
                                    <tr style="background:#167389;color:#fff">
                                        <td><strong>Final Total</strong></td>
                                        <td><strong>৳1979</strong></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="terms-condition" style="overflow: hidden; width: 100%; text-align: center; padding: 20px 0; border-top: 1px solid #ddd;">
                                <h5 style="font-style: italic;"><a href="https://www.ozybd.com/page/terms-condition">Terms & Conditions</a></h5>
                                <p style="text-align: center; font-style: italic; font-size: 15px; margin-top: 10px;">* This is a computer generated invoice, does not require any signature.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<script src="<?php echo base_url('assets/fontend/') ?>js/vue/vue.min.js"></script>
<script src="<?php echo base_url('assets/fontend/') ?>js/vue/axios.min.js"></script>
<script src="<?php echo base_url('assets/fontend/') ?>js/vue/moment.min.js"></script>

<script>
    new Vue({
        el: '#OrderInvoice',
        data() {
            return {
                sales: {
                    SaleMaster_SlNo: parseInt('<?php echo $orderId; ?>'),
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
            this.getSales();
        },
        methods: {
            getSales() {
                axios.post('/get_corders', {
                    orderId: this.sales.SaleMaster_SlNo
                }).then(res => {
                    this.sales = res.data.orders[0];
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