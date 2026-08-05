<div id="content">
    <div id="WEB_DATA">
        <section class="auth-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-sm-5">
                        <div class="form-content">
                            <p class="auth-title"> Track Your Order </p>
                            <form @submit.prevent="getSearchResult">
                                <div class="form-group mb-3">
                                    <label for="phone">Phone Number</label>
                                    <input type="number" class="form-control" v-model="filter.phone_no" placeholder="Type Your Phone Number" required>
                                </div>
                                <!-- col-end -->
                                <div class="form-group mb-3">
                                    <label for="invoice_id">Invoice ID</label>
                                    <input type="number" class="form-control" v-model="filter.invoice_id" placeholder="Type Your Invoice ID">
                                </div>
                                <!-- col-end -->
                                <div class="form-group mb-3">
                                    <button class="submit-btn">submit</button>
                                </div>
                                <!-- col-end -->
                            </form>
                        </div>
                    </div>

                    <div class="col-sm-10" v-if="orders.length > 0" style="display:none" v-bind:style="{display: orders.length > 0 ? '' : 'none'}">
                        <div class="customer-content" style="background: #fff;margin-bottom: 25px;">
                            <h5 class="account-title">My Orders</h5>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th style="text-align: center;">SL</th>
                                            <th style="text-align: center;">Invoice No</th>
                                            <th style="text-align: center;">Order Date</th>
                                            <th style="text-align: center;">Name</th>
                                            <th style="text-align: center;">Bill Amount</th>
                                            <th style="text-align: center;">Status</th>
                                            <th style="text-align: center;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="(sale, sl) in orders">
                                            <td style="text-align: center;">{{ sl + 1 }}</td>
                                            <td style="text-align: center;">{{ sale.SaleMaster_InvoiceNo }}</td>
                                            <td style="text-align: center;">{{ sale.SaleMaster_SaleDate }}</td>
                                            <td style="text-align: center;">{{ sale.Customer_Name }}</td>
                                            <td style="text-align: right;">৳ {{ sale.SaleMaster_TotalSaleAmount | decimal }}</td>
                                            <td style="text-align: center;"><button style="padding: 1px 5px; color: white; background-color: orange; border-radius: 5px;"><b>{{ sale.order_status }}</b></button></td>
                                            <td style="text-align: center;">
                                                <a href="" title="Order Invoice" v-bind:href="`/order-report/${sale.SaleMaster_SlNo}`">
                                                    <button style="padding: 1px 5px; color: white; background-color: #167389; border-radius: 5px;"><i class="fa fa-file"></i> Invoice</button>
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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
        el: '#WEB_DATA',
        data() {
            return {
                img_url: "<?php echo $iurl; ?>",
                filter: {
                    phone_no: '',
                    invoice_id: '',
                },
                orders: [],
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
        methods: {
            async getSearchResult() {
                if (this.filter.phone_no == '') {
                    toastr.error('Type Your Phone Number');
                    return;
                }

                if (this.filter.invoice_id == '') {
                    toastr.error('Type Your Invoice ID');
                    return;
                }

                await axios.post('/get_corders', this.filter).then(res => {
                    this.orders = res.data.orders;
                }).catch(error => {
                    if (error.response) {
                        toastr.error("You have no pending order!");
                    }
                })
            },
        }
    })
</script>