const jobInvoice = Vue.component('job-invoice', {
    template: `
        <div>
            <div class="row">
                <div class="col-xs-12">
                    <a href="" v-on:click.prevent="print"><i class="fa fa-print"></i> Print</a>
                </div>
            </div>
            
            <div id="invoiceContent">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <div _h098asdh>
                            {{ job.status == 'a' ? 'Invoice' : 'Estimate' }}                            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-7">
                        <strong>Customer Id:</strong> {{ job.Customer_Code }}<br>
                        <strong>Customer Name:</strong> {{ job.Customer_Name }}<br>
                        <strong>Customer Address:</strong> {{ job.Customer_Address }}<br>
                        <strong>Customer Mobile:</strong> {{ job.Customer_Mobile }}
                    </div>
                    <div class="col-xs-5 text-right">
                        <strong>{{ job.status == 'a' ? 'Delivery' : 'Job' }} by:</strong> {{ job.added_by }}<br>
                        <strong>Invoice No.:</strong> {{ job.invoice }}<br>
                        <strong>{{ job.status == 'a' ? 'Delivery' : 'Job' }} Date:</strong> {{ job.date }} {{ job.added_time | formatDateTime('h:mm a') }} <br>
                        <strong>Reference:</strong> {{ job.referenceName }}
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div _d9283dsc></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <div class="complain">
                            <div class="cus_heading">  
                                <strong>Requirement</strong> 
                            </div>
                            <ul>
                                <li v-for="requ in job.requirements">{{ requ.name }}</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="investigation">
                            <div class="cus_heading">  
                                <strong>Diagnostic</strong> 
                            </div>
                            <p>{{ job.investigation }}</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <table _a584de style="display: none" :style="{display: cart.length > 0 ? '' : 'none'}">
                            <thead>
                                <tr>
                                    <td>Sl.</td>
                                    <td>Description</td>
                                    <td>Quantity</td>
                                    <td>Unit</td>
                                    <td>Unit Price</td>
                                    <td>Total</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="(product, sl) in cart">
                                    <td>{{ sl + 1 }}</td>
                                    <td>{{ product.Product_Name }}</td>
                                    <td>{{ product.quantity }}</td>
                                    <td>{{ product.Unit_Name }}</td>
                                    <td>{{ product.rate }}</td>
                                    <td align="right">{{ product.total }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-xs-12">
                        <table _a584de style="margin-top:10px;display: none"  :style="{display: services.length > 0 ? '' : 'none'}">
                            <thead>
                                <tr>
                                    <td colspan="6" align="left">Services Information</td>
                                </tr>
                                <tr>
                                    <td>Sl.</td>
                                    <td>Service By</td>
                                    <td>Description</td>
                                    <td>Quantity</td>
                                    <td>Unit Price</td>
                                    <td>Total</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="(service, sl) in services">
                                    <td>{{ sl + 1 }}</td>
                                    <td>{{ service.mechanic }}</td>
                                    <td>{{ service.name }}</td>
                                    <td>{{ service.quantity }}</td>
                                    <td>{{ service.rate }}</td>
                                    <td align="right">{{ service.total }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-xs-12">
                        <table _a584de style="margin-top:10px;display: none"  :style="{display: packages.length > 0 ? '' : 'none'}">
                            <thead>
                                <tr>
                                    <td colspan="6" align="left">Packages Information</td>
                                </tr>
                                <tr>
                                    <td>Sl.</td>
                                    <td>Description</td>
                                    <td>Quantity</td>
                                    <td>Unit Price</td>
                                    <td>Total</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="(package, sl) in packages">
                                    <td>{{ sl + 1 }}</td>
                                    <td>{{ package.package_name }}
                                    <hr style="margin: 0;">
                                        <ul style="padding: 0; margin: 0px 0 0px 25px;" v-for="(packaged, ind) in package.packageDetails">
                                            <li style="text-align:left;">{{ packaged.Service_Name }} | Qnty: {{ packaged.PackageDetails_Quantity }} pcs</li>
                                            <!--<li style="text-align:left;">{{ packaged.PackageDetails_Quantity }}</li>-->
                                        </ul>
                                    </td>
                                    <td>{{ package.quantity }}</td>
                                    <td>{{ package.rate }}</td>
                                    <td align="right">{{ package.total }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <br>
                        <table class="pull-left">
                        </table>
                    </div>
                    <div class="col-xs-6">
                        <table _t92sadbc2>
                            <tr>
                                <td><strong>Product Total:</strong></td>
                                <td style="text-align:right">{{ job.product_total }}</td>
                            </tr>
                            <tr>
                                <td><strong>Service Total:</strong></td>
                                <td style="text-align:right">{{ job.service_total }}</td>
                            </tr>
                            <tr>
                                <td><strong>Sub Total:</strong></td>
                                <td style="text-align:right">{{ job.sub_total }}</td>
                            </tr>
                            <tr>
                                <td><strong>Discount:</strong></td>
                                <td style="text-align:right">{{ job.discount }}</td>
                            </tr>
                            <tr><td colspan="2" style="border-bottom: 1px solid #ccc"></td></tr>
                            <tr>
                                <td><strong>Total:</strong></td>
                                <td style="text-align:right">{{ job.total }}</td>
                            </tr>
                            <tr>
                                <td><strong>Paid:</strong></td>
                                <td style="text-align:right">{{ job.paid }}</td>
                            </tr>
                            <tr><td colspan="2" style="border-bottom: 1px solid #ccc"></td></tr>
                            <tr>
                                <td><strong>Due:</strong></td>
                                <td style="text-align:right">{{ job.due }}</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <strong>In Word: </strong> {{ convertNumberToWords(job.total) }}<br><br>
                        <strong>Note: </strong>
                        <p style="white-space: pre-line">{{ job.SaleMaster_Description }}</p>
                    </div>
                </div>
            </div>
        </div>
    `,
    props: ['job_id'],
    data(){
        return {
            job:{
                invoice: null,
                date: null,
                Customer_Name: null,
                Customer_Address: null,
                Customer_Mobile: null,
                total: null,
                discount: null,
                sub_total: null,
                paid: null,
                due: null,
                added_by: null
            },
            cart: [],
            services: [],
            packages: [],
            style: null,
            companyProfile: null,
            currentBranch: null
        }
    },
    filters: {
        formatDateTime(dt, format) {
            return dt == '' || dt == null ? '' : moment(dt).format(format);
        }
    },
    created(){
        this.setStyle();
        this.getjob();
        this.getCurrentBranch();
    },
    methods:{
        getjob(){
            axios.post('/get_jobcards', {jobId: this.job_id}).then(res=>{
                this.job = res.data.jobs[0];
                this.cart = res.data.details;
                this.services = res.data.services;
                this.packages = res.data.packages;
            })
        },
        getCurrentBranch() {
            axios.get('/get_current_branch').then(res => {
                this.currentBranch = res.data;
            })
        },
        setStyle(){
            this.style = document.createElement('style');
            this.style.innerHTML = `
                div[_h098asdh]{
                    /*background-color:#e0e0e0;*/
                    font-weight: bold;
                    font-size:15px;
                    margin-bottom:15px;
                    padding: 5px;
                    border-top: 1px dotted #454545;
                    border-bottom: 1px dotted #454545;
                }
                div[_d9283dsc]{
                    padding-bottom: 10px;
                    border-bottom: 1px solid #ccc;
                    margin-bottom: 7px;
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
        async print(){
            let invoiceContent = document.querySelector('#invoiceContent').innerHTML;
            let printWindow = window.open('', 'PRINT', `width=${screen.width}, height=${screen.height}, left=0, top=0`);
            if (this.currentBranch.print_type == '3') {
                printWindow.document.write(`
                    <html>
                        <head>
                            <title>Invoice</title>
                            <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
                            <style>
                                body, table{
                                    font-size:11px;
                                }
                            </style>
                        </head>
                        <body>
                            <div style="text-align:center;">
                                <img src="/uploads/company_profile_thum/${this.currentBranch.Company_Logo_org}" alt="Logo" style="height:80px;margin:0px;" /><br>
                                <strong style="font-size:18px;">${this.currentBranch.Company_Name}</strong><br>
                                <p style="white-space:pre-line;">${this.currentBranch.Repot_Heading}</p>
                            </div>
                            ${invoiceContent}
                        </body>
                    </html>
                `);
            } else if (this.currentBranch.print_type == '2') {
                printWindow.document.write(`
                    <!DOCTYPE html>
                    <html lang="en">
                    <head>
                        <meta charset="UTF-8">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <meta http-equiv="X-UA-Compatible" content="ie=edge">
                        <title>Invoice</title>
                        <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
                        <style>
                            html, body{
                                width:500px!important;
                            }
                            body, table{
                                font-size: 13px;
                            }
                        </style>
                    </head>
                    <body>
                        <div class="row">
                            <div class="col-xs-2"><img src="/uploads/company_profile_thum/${this.currentBranch.Company_Logo_org}" alt="Logo" style="height:80px;" /></div>
                            <div class="col-xs-10" style="padding-top:20px;">
                                <strong style="font-size:18px;">${this.currentBranch.Company_Name}</strong><br>
                                <p style="white-space:pre-line;">${this.currentBranch.Repot_Heading}</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div style="border-bottom: 4px double #454545;margin-top:7px;margin-bottom:7px;"></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                ${invoiceContent}
                            </div>
                        </div>
                    </body>
                    </html>
				`);
            } else {
				printWindow.document.write(`
                    <!DOCTYPE html>
                    <html lang="en">
                    <head>
                        <meta charset="UTF-8">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <meta http-equiv="X-UA-Compatible" content="ie=edge">
                        <title>Invoice</title>
                        <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
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
                                                <div class="col-xs-2"><img src="/uploads/company_profile_thum/${this.currentBranch.Company_Logo_org}" alt="Logo" style="height:80px;" /></div>
                                                <div class="col-xs-10" style="padding-top:20px;">
                                                    <strong style="font-size:18px;">${this.currentBranch.Company_Name}</strong><br>
                                                    <p style="white-space:pre-line;">${this.currentBranch.Repot_Heading}</p>
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
                                                    ${invoiceContent}
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
                                        Print Date: ${moment().format('DD-MM-YYYY h:mm a')}, Printed by: ${this.job.added_by}
                                    </div>
                                    <div class="col-xs-6 text-right">
                                        Developed by: Link-Up Technology Ltd., Contact no: 01743134075
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </body>
                    </html>
				`);
            }
            let invoiceStyle = printWindow.document.createElement('style');
            invoiceStyle.innerHTML = this.style.innerHTML;
            printWindow.document.head.appendChild(invoiceStyle);
            printWindow.moveTo(0, 0);
            
            printWindow.focus();
            await new Promise(resolve => setTimeout(resolve, 1000));
            printWindow.print();
            printWindow.close();
        }
    }
})