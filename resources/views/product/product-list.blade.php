@extends('dashboard.dashbaord_layout')
@section('content')
<div class="container">
   <div class="card p-4 table-responsive">
   <div class="row">
        <div class="col-sm-9"><h3>Product List</h3></div>
        <div class="col-sm-3 text-right">
            <button type="button" class="btn btn-primary" id="addProductBtn">
                Add New
            </button>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
                            <table class="table table-hover table-condensed" id="products-table">
                                <thead>
                                    <th><input type="checkbox" name="main_checkbox"><label></label></th>
                                    <th>#</th>
                                     <th>Product Code</th>
                                     <th>Product Name</th>
                                     <th>Product Category</th>
                                     <th>Product Type</th>
                                     <th>Photo</th>
                                     <th>Actions <button class="btn btn-sm btn-danger d-none" id="deleteAllBtn">Delete All</button></th>
                                </thead>
                                <tbody></tbody>
                            </table>
             </div>
        </div>
      </div>
   </div>
@include('product/add-product-modal')
@include('product/edit-product-modal')

@endsection
    <script src="{{ URL::asset('public/jquery/jquery-3.6.0.min.js') }}"></script>
    <script src="{{ URL::asset('public/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ URL::asset('public/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ URL::asset('public/datatable/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ URL::asset('public/datatable/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ URL::asset('public/sweetalert2/sweetalert2.min.js') }}"></script>
    <script src="{{ URL::asset('public/toastr/toastr.min.js') }}"></script>

    <script>

         toastr.options.preventDuplicates = true;

         $.ajaxSetup({
             headers:{
                 'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')
             }
         });


         $(function(){

			   $(document).on('click','#addProductBtn', function(){
                $('.addProduct').modal('show');
                });

                //ADD NEW ITEM TYPE
                $('#add-product-form').on('submit', function(e){
                    e.preventDefault();
                    var form = this;
                    $.ajax({
                        url:$(form).attr('action'),
                        method:$(form).attr('method'),
                        data:new FormData(form),
                        processData:false,
                        dataType:'json',
                        contentType:false,
                        beforeSend:function(){
                             $(form).find('span.error-text').text('');
                        },
                        success:function(data){
                             if(data.code == 0){
                                   $.each(data.error, function(prefix, val){
                                       $(form).find('span.'+prefix+'_error').text(val[0]);
                                   });
                             }else{
                                 $(form)[0].reset();
                                  $('#products-table').DataTable().ajax.reload(null, false);
                                  $('.addProduct').modal('hide');
                                  toastr.success(data.msg);
                             }
                        }
                    });
                });

                //GET ALL ITEM TYPES
               var table =  $('#products-table').DataTable({
                     processing:true,
                     info:true,
                     ajax:"{{ route('get.product.list') }}",
                     "pageLength":5,
                     "aLengthMenu":[[5,10,25,50,-1],[5,10,25,50,"All"]],
                     columns:[
                        //  {data:'id', name:'id'},
                         {data:'checkbox', name:'checkbox', orderable:false, searchable:false},
                         {data:'DT_RowIndex', name:'DT_RowIndex'},
                         {data:'product_code', name:'product_code'},
                         {data:'product_name', name:'product_name'},
                         {data:'product_category', name:'product_category'},
                         {data:'product_type_id', name:'product_type_id'},
                         {data:'product_photo', name:'product_photo'},
                         {data:'actions', name:'actions', orderable:false, searchable:false},
                     ]
                }).on('draw', function(){
                    $('input[name="product_checkbox"]').each(function(){this.checked = false;});
                    $('input[name="main_checkbox"]').prop('checked', false);
                    $('button#deleteAllBtn').addClass('d-none');
                });

                $(document).on('click','#editProductBtn', function(){
                    var product_id = $(this).data('id');
                    $('.editProduct').find('form')[0].reset();
                    $('.editProduct').find('span.error-text').text('');
                    $.post('<?= route("get.product.details") ?>',{"_token": "{{ csrf_token() }}",product_id:product_id}, function(data){
                        //  alert(data.details.country_name);
                        $('.editProduct').find('input[name="cid"]').val(data.details.id);
                        $('.editProduct').find('input[name="product_name"]').val(data.details.product_name);
                        $('.editProduct').modal('show');
                    },'json');
                });


                //UPDATE ITEM TYPE DETAILS
                $('#update-product-form').on('submit', function(e){
                    e.preventDefault();
                    var form = this;
                    $.ajax({
                        url:$(form).attr('action'),
                        method:$(form).attr('method'),
                        data:new FormData(form),
                        processData:false,
                        dataType:'json',
                        contentType:false,
                        beforeSend: function(){
                             $(form).find('span.error-text').text('');
                        },
                        success: function(data){
                              if(data.code == 0){
                                  $.each(data.error, function(prefix, val){
                                      $(form).find('span.'+prefix+'_error').text(val[0]);
                                  });
                              }else{
                                  $('#products-table').DataTable().ajax.reload(null, false);
                                  $('.editProduct').modal('hide');
                                  $('.editProduct').find('form')[0].reset();
                                  toastr.success(data.msg);
                              }
                        }
                    });
                });

                //DELETE ITEM TYPE RECORD
                $(document).on('click','#deleteProductBtn', function(){
                    var product_id = $(this).data('id');
                    var url = '<?= route("delete.product") ?>';

                    swal.fire({
                         title:'Are you sure?',
                         html:'You want to <b>delete</b> this Item',
                         showCancelButton:true,
                         showCloseButton:true,
                         cancelButtonText:'Cancel',
                         confirmButtonText:'Yes, Delete',
                         cancelButtonColor:'#d33',
                         confirmButtonColor:'#556ee6',
                         width:300,
                         allowOutsideClick:false
                    }).then(function(result){
                          if(result.value){
                              $.post(url,{"_token": "{{ csrf_token() }}",product_id:product_id}, function(data){
                                   if(data.code == 1){
                                       $('#products-table').DataTable().ajax.reload(null, false);
                                       toastr.success(data.msg);
                                   }else{
                                       toastr.error(data.msg);
                                   }
                              },'json');
                          }
                    });

                });




           $(document).on('click','input[name="main_checkbox"]', function(){
                  if(this.checked){
                    $('input[name="product_checkbox"]').each(function(){
                        this.checked = true;
                    });
                  }else{
                     $('input[name="product_checkbox"]').each(function(){
                         this.checked = false;
                     });
                  }
                  toggledeleteAllBtn();
           });

           $(document).on('change','input[name="product_checkbox"]', function(){

               if( $('input[name="product_checkbox"]').length == $('input[name="product_checkbox"]:checked').length ){
                   $('input[name="main_checkbox"]').prop('checked', true);
               }else{
                   $('input[name="main_checkbox"]').prop('checked', false);
               }
               toggledeleteAllBtn();
           });


           function toggledeleteAllBtn(){
               if( $('input[name="product_checkbox"]:checked').length > 0 ){
                   $('button#deleteAllBtn').text('Delete ('+$('input[name="product_checkbox"]:checked').length+')').removeClass('d-none');
               }else{
                   $('button#deleteAllBtn').addClass('d-none');
               }
           }


           $(document).on('click','button#deleteAllBtn', function(){
               var checkedProducts = [];
               $('input[name="product_checkbox"]:checked').each(function(){
                   checkedProducts.push($(this).data('id'));
               });

               var url = '{{ route("delete.selected.product") }}';
               if(checkedProducts.length > 0){
                   swal.fire({
                       title:'Are you sure?',
                       html:'You want to delete <b>('+checkedProducts.length+')</b> products',
                       showCancelButton:true,
                       showCloseButton:true,
                       confirmButtonText:'Yes, Delete',
                       cancelButtonText:'Cancel',
                       confirmButtonColor:'#556ee6',
                       cancelButtonColor:'#d33',
                       width:300,
                       allowOutsideClick:false
                   }).then(function(result){
                       if(result.value){
                           $.post(url,{product_ids:checkedProducts},function(data){
                              if(data.code == 1){
                                  $('#products-table').DataTable().ajax.reload(null, true);
                                  toastr.success(data.msg);
                              }
                           },'json');
                       }
                   })
               }
           });




         });

    </script>
