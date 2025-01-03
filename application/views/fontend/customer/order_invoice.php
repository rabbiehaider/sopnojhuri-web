<div id="OrderInvoice">
    <div class="section">
        <div class="container pt-3">
            <div class="row" style="display:none;" v-bind:style="{display: cart.length > 0 ? '' : 'none'}">
                <div class="col-md-12 col-md-offset-2">
                    <!-- <div class="row">
                        <div class="col-sm-12">
                            <a href="" v-on:click.prevent="print"><i class="fa fa-print"></i> Print</a>
                        </div>
                    </div> -->

                    <div id="invoiceContent">
                        <div class="row">
                            <div class="col-sm-12 text-center" style="width: 100%;">
                                <div _h098asdh>
                                    Order Invoice
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-8" style="width: 100%;">
                                <strong>Customer Name:</strong> {{ sales.customer_name }}<br>
                                <strong>Customer Mobile:</strong> {{ sales.customer_phone }}<br>
                                <strong>Customer Email:</strong> {{ sales.customer_email }}
                            </div>
                            <div class="col-sm-4 text-right" style="width: 100%;">
                                <strong>Invoice No.:</strong> {{ sales.invoice_no }}<br>
                                <strong>Order Date:</strong> {{ sales.date }}
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12" style="width: 100%;">
                                <div _d9283dsc></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6" style="width: 100%;">
                                <div class="complain">
                                    <div class="cus_heading">
                                        <strong>Shipping Address</strong>
                                    </div>

                                    <p>{{ sales.shipping_address }}</p>
                                </div>
                            </div>
                            <div class="col-sm-6" style="width: 100%;">
                                <div class="investigation">
                                    <div class="cus_heading">
                                        <strong>Customer Address</strong>
                                    </div>
                                    <p>{{ sales.shipping_address }}</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12" style="width: 100%;">
                                <table _a584de>
                                    <thead>
                                        <tr>
                                            <td>Sl.</td>
                                            <td>Description</td>
                                            <td>Qnty</td>
                                            <td>Unit Price</td>
                                            <td>Total</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="(product, sl) in cart">
                                            <td>{{ sl + 1 }}</td>
                                            <td>{{ product.Product_Name }}</td>
                                            <td>{{ product.quantity }} {{ product.Unit_Name }}</td>
                                            <td>{{ product.product_price }}</td>
                                            <td align="right">{{ product.total_amount }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6" style="width: 100%;">
                                <br>
                                <table class="pull-left" style="width: 100%;">
                                </table>
                            </div>
                            <div class="col-sm-6" style="width: 100%;">
                                <table _t92sadbc2>
                                    <tr>
                                        <td><strong>Sub Total:</strong></td>
                                        <td style="text-align:right">{{ formatNumber(sales.total_amount - sales.shipping_cost)  }}</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Shipping Cost:</strong></td>
                                        <td style="text-align:right">{{ sales.shipping_cost }}</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="border-bottom: 1px solid #ccc"></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Total:</strong></td>
                                        <td style="text-align:right">{{ sales.total_amount }}</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12" style="width: 100%;">
                                <strong>In Word: </strong> {{ convertNumberToWords(sales.total_amount) }}<br><br>
                                <strong>Note: </strong>
                                <p style="white-space: pre-line">{{ sales.order_note }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    new Vue({
        el: '#OrderInvoice',
        data() {
            return {
                sales: {
                    SaleMaster_SlNo: parseInt('<?php echo $saleId; ?>'),
                    SaleMaster_InvoiceNo: null,
                    SalseCustomer_IDNo: null,
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
                companyProfile: null,
                currentBranch: null
            }
        },
        created() {
            this.setStyle();
            this.getSales();
        },
        methods: {
            getSales() {
                axios.post('/get_orders', {
                    salesId: this.sales.SaleMaster_SlNo
                }).then(res => {
                    this.sales = res.data.sales[0];
                    this.cart = res.data.saleDetails;
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
                <!DOCTYPE html>
                    <html lang="en">
                    <head>
                        <meta charset="UTF-8">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <meta http-equiv="X-UA-Compatible" content="ie=edge">
                        <title>Invoice</title>
                        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
                        <style>
                            body, table{
                                font-size: 13px;
                            }
                        </style>
                    </head>
                    <body>
                        <div class="container">
                            <table style="width:100%;">
                                <thead>
                                    <tr>
                                        <td>
                                            <div class="row">
                                                
                                                <div class="col-xs-10" style="padding-top:20px;">
                                                    <strong style="font-size:18px;">SKG Auto</strong><br>
                                                    <p style="white-space:pre-line;">Mirpur-10, Dhaka-1216</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <div style="border-bottom: 4px double #454545;margin-top:7px;margin-bottom:7px;"></div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    ${document.querySelector('#invoiceContent').innerHTML}
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td>
                                            <div style="width:100%;height:50px;">&nbsp;</div>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                            <div class="row" style="border-bottom:1px solid #ccc;margin-bottom:5px;padding-bottom:6px;">
                                <div class="col-xs-6">
                                    <span style="text-decoration:overline;">Received by</span><br><br>
                                    ** THANK YOU FOR YOUR BUSINESS **
                                </div>
                                <div class="col-xs-6 text-right">
                                    <span style="text-decoration:overline;">Authorized by</span>
                                </div>
                            </div>
                            <div style="position:fixed;left:0;bottom:15px;width:100%;">
                                <div class="row" style="font-size:12px;">
                                    <div class="col-xs-6">
                                        Print Date: ${moment().format('DD-MM-YYYY h:mm a')}, Printed by: ${this.sales.AddBy}
                                    </div>
                                    <div class="col-xs-6 text-right">
                                        Developed by: Link-Up Technology Ltd., Contact no: 01743134075
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </body>
                    </html>
				`;

                var reportWindow = window.open('', 'PRINT', `height=${screen.height}, width=${screen.width}`);

                reportWindow.document.body.innerHTML += reportContent;

                if (this.searchType == '' || this.searchType == 'user') {
                    let rows = reportWindow.document.querySelectorAll('.record-table tr');
                    rows.forEach(row => {
                        row.lastChild.remove();
                    })
                }

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