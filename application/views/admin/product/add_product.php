<div class="container">
  <div class="row">
    <div class="well" style="min-height: 500px">
       <form class="form-horizontal" id="productForm" enctype="multipart/form-data">
        <div class="col-md-12">
          <div id="output" class="text-success text-center"></div>
          <div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
            <div class="row">
              <div class="col-md-5">     
                <div class="row">
                  <div>
                    <label for="pro_name" class="control-label col-lg-4">Product Name</label>
                    <div class="col-lg-8">
                        <input type="text" name="pro_name" id="pro_name" class="form-control" placeholder="Product name" style="margin-bottom: 5px" value="">
                      </div>
                  </div>
                </div>
                <div class="row">
                  <div>
                    <label for="cat_id" class="control-label col-lg-4">Category Name</label>
                      <div class="col-lg-8">
                        <select class="form-control select-box" name="cat_id" id="cat_id">
                            <option value="0">Choose Category</option>
                            <?php 
                              $categorys=$this->db->query("select * from tbl_category where status='a'")->result();
                              foreach($categorys as $cat){?>
                                <option value="<?php echo $cat->id ?>"><?php echo $cat->category_name ?></option>
                           <?php } ?>
                          </select>
                     </div>
                   </div>
                 </div>
                 <div class="row">
                  <div>
                    <label for="pro_price" class="control-label col-lg-4">Product Price</label>
                    <div class="col-lg-8">
                        <input type="text" name="pro_price" id="pro_price" class="form-control" placeholder="Product price" style="margin: 5px 0px" value="">
                      </div>
                  </div>
                </div>
                <div class="row">
                  <div>
                    <label for="discount_price" class="control-label col-lg-4">Discount %</label>
                    <div class="col-lg-8">
                        <input type="text" name="discount_price" id="discount_price" class="form-control" placeholder="Discount price %" style="margin: 5px 0px" value="">
                      </div>
                  </div>
                </div>
                <div class="row">
                  <div>
                    <label for="discount_amount" class="control-label col-lg-4">Discount Amount</label>
                    <div class="col-lg-8">
                        <input type="text" name="discount_amount" id="discount_amount" class="form-control" placeholder="Discount amount" style="margin: 5px 0px" value="">
                      </div>
                  </div>
                </div> 
                <div class="row">
                  <div>
                    <label for="pro_image" class="control-label col-lg-4">Product Image</label>
                    <div class="col-lg-6">
                       <input type="file" name="pro_image"> 
                    </div>
                    <div class="col-md-2">
                      <div id="image"></div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div>
                    <label for="pro_pdf" class="control-label col-lg-4">Product Pdf</label>
                    <div class="col-lg-6">
                       <input type="file" name="pro_pdf" id="pro_pdf"> 
                    </div>
                    <div class="col-md-2">
                      <div id="pdfimage"></div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div>
                    <label for="pro_image" class="control-label col-lg-4">Chart Image</label>
                    <div class="col-lg-6">
                       <input type="file" name="chart_image"> 
                    </div>
                    <div class="col-md-2">
                      <div id="chart-image"></div>
                    </div>
                  </div>
                </div>
                
                <div class="row">
                  <div>
                        <label for="emp_name" class="control-label col-lg-4"></label>
                        <div class="col-lg-8">
                          <input type="hidden" name="action" id="action" value="create">
                          <input type="hidden" name="old_image" id="old_image">
                          <input type="hidden" name="action_id" id="action_id" >
                            <input type="submit" name="submit" id="submit" value="Save" class="btn btn-info ">
                          </div>
                    </div>
                </div>
              </div>
              <div class="col-md-7">
                <div>
                    <label for="pro_desc" class="control-label col-lg-3"> Description</label>
                    <div class="col-lg-9">
                        <textarea id="pro_desc" name="pro_desc"></textarea>
                    </div>
                </div>  
              </div>
            </div>
        </div>
      </form>
      
      <div class="row"><br>
        <div class="col-md-10">
          <table class="table table-stripded table-bordered" id="dataTable">
                <thead>
                  <th>Serial</th>
                  <th>Name</th>
                  <th>Price</th>
                  <th>Category</th>
                  <th>Image</th>
                  <th>Description</th>
                  <th>Action</th>
                </thead>
                <?php 

                if(!empty($productlist)){
                   $j=1;
                 foreach($productlist as $value){ ?>
                  <tr>
                    <td><?php echo $j++ ?></td>
                    <td><?php echo $value->pro_name ?></td>
                    <td><?php echo $value->pro_price ?></td>
                    <td><?php echo $value->category_name ?></td>
                    <td><img src="<?php echo base_url().'assets/backend/images/product/'.$value->pro_image ?>" style="height: 40px;width: 40px"></td>
                    <td><?php echo substr($value->pro_desc, 0,50) ?></td>
                    <td>
                      <a href="" id="edit-product" data-id="<?php echo $value->id ?>" class=""><i class="fa fa-pencil-square-o text-success" aria-hidden="true"></i></a>
                      <a href="" class="" id="delete-product" data-id="<?php echo $value->id ?>"><i class="fa fa-trash-o text-danger" aria-hidden="true"></i></a>
                    </td>
                  </tr>
                <?php }} ?>
                <tbody>
                </tbody>
          </table>
        </div>
      </div>
       
    </div>
  </div>
</div>
<script>
  CKEDITOR.replace( 'pro_desc',{
   height: 130,
  });
  $(document).on('submit','#productForm',function(e){
    e.preventDefault();
    var action=$('#action','#productForm').val();
    var pro_name=$('#pro_name','#productForm').val();
    var cat_id=$('#cat_id','#productForm').val();
    var pro_price=$('#pro_price','#productForm').val();
    var pro_desc=$('#pro_desc','#productForm').val();
    var pro_price=$('#pro_price','#productForm').val();
    var pro_pdf=$('#pro_pdf','#productForm').val();
    if (pro_name =='') {
      alert('Please fill up prodcut name !!');
    }
    else if (cat_id ==0) {
      alert('Please choose prodcut category !!');
    }
    else if (pro_desc =='') {
      alert('Please fill up prodcut description !!');
    }
    else if (pro_price =='') {
      alert('Please fill up prodcut price !!');
    }
     // else if (pro_pdf =='') {
     //  alert('Please choose product pdf  !!');
     // }
    else{
      $.ajax({
        url:'<?php echo base_url("save-product") ?>',
        method:'post',
        data:new FormData(this),
        contentType:false,
        processData:false,
        success: function(data){
          if (data.trim()=='insert') {
           alert("Insert Successfully !!");
            location.reload();
          }
          else if(data.trim()=='update'){
            alert("Update Successfully !!");
            location.reload();
          }
          else{
            alert(data);
          }
        }
      })
    } 
  })


  $(document).on('click','#edit-product',function(e){
    e.preventDefault();
    var id=$(this).attr('data-id');
     var img_url='<?php echo base_url("assets/backend/images/product/") ?>';
    $.ajax({
      url:'<?php echo base_url("edit-product") ?>',
      method:'post',
      data:{id:id},
      dataType:'json',
      success:function(data){
       //alert(data);
        $('#pro_name','#productForm').val(data.pro_name);
        $('#cat_id','#productForm').val(data.cat_id);
        $('#cat_id').trigger("chosen:updated");
        $('#discount_price','#productForm').val(data.discount_price);
        $('#discount_amount','#productForm').val(data.discount_amount);
        CKEDITOR.instances['pro_desc'].setData(data.pro_desc);
        $('#pro_price','#productForm').val(data.pro_price);
        $('#image','#productForm').val(data.pro_image);
        $('#image').html('<img src="'+img_url+data.pro_image+'" style="height:40px;width:40px"/>');
         $('#pdfimage').html('<iframe src="'+img_url+data.pro_pdf+'" style="height:40px;width:80px"></iframe>');
        $('#chart_old_image','#productForm').val(data.chart_image);
        $('#chart-image').html('<img src="'+img_url+data.chart_image+'" style="height:40px;width:40px"/>');
        $('#old_image','#productForm').val(data.pro_image);
        $('#action','#productForm').val('update');
        $('#action_id','#productForm').val(id);
        $('#submit','#productForm').val('Update');
      }
    })
  })

  $(document).on('click','#delete-product',function(e){
    e.preventDefault();
    var id=$(this).attr('data-id');
    if (confirm('Are you sure to delete this ?')) {
      $.ajax({
        url:'<?php echo base_url("delete-product") ?>',
        method:'post',
        data:{id:id},
        success:function(data){
          alert("Deleted Successfully !!");
          location.reload();
        }
      })
    }

  })
</script>
