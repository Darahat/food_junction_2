@extends('dashboard.dashbaord_layout')
@section('content')
<div class="container">
   <div class="card p-4 table-responsive">
   <div class="row">
        <div class="col-sm-9"><h3>Unit Types</h3></div>
        <div class="col-sm-3 text-right">
            <button type="button" class="btn btn-primary" id="addTypeBtn">
                Add New
            </button>
        </div>
    </div>
   
    <div class="row">
        <div class="col-sm-12">
                            <table class="table table-hover table-condensed" id="types-table">
                                <thead>
                                    <th><input type="checkbox" name="main_checkbox"><label></label></th>
                                    <th>#</th>
                                    <th>Type name</th>
                                     <th>Actions <button class="btn btn-sm btn-danger d-none" id="deleteAllBtn">Delete All</button></th>
                                </thead>
                                <tbody></tbody>
                            </table>
             </div>
        </div>
      </div>
   </div>
    @include('unit_type/add-type-modal')
    @include('unit_type/edit-type-modal')

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
			   
			   $(document).on('click','#addTypeBtn', function(){
                $('.addType').modal('show');
                });

                //ADD NEW ITEM TYPE
                $('#add-type-form').on('submit', function(e){
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
                                  $('#types-table').DataTable().ajax.reload(null, false);
                                  $('.addType').modal('hide');
                                  toastr.success(data.msg);								
                             }
                        }
                    });
                });

                //GET ALL 
               var table =  $('#types-table').DataTable({
                     processing:true,
                     info:true,
                     ajax:"{{ route('get.unit_type.list') }}",
                     "pageLength":5,
                     "aLengthMenu":[[5,10,25,50,-1],[5,10,25,50,"All"]],
                     columns:[
                        //  {data:'id', name:'id'},
                         {data:'checkbox', name:'checkbox', orderable:false, searchable:false},
                         {data:'DT_RowIndex', name:'DT_RowIndex'},
                         {data:'type_name', name:'type_name'},
                         {data:'actions', name:'actions', orderable:false, searchable:false},
                     ]
                }).on('draw', function(){
                    $('input[name="type_checkbox"]').each(function(){this.checked = false;});
                    $('input[name="main_checkbox"]').prop('checked', false);
                    $('button#deleteAllBtn').addClass('d-none');
                });

                $(document).on('click','#editTypeBtn', function(){
                    var type_id = $(this).data('id');
                    $('.editType').find('form')[0].reset();
                    $('.editType').find('span.error-text').text('');
                    $.post('<?= route("get.unit_type.details") ?>',{"_token": "{{ csrf_token() }}",type_id:type_id}, function(data){
                        //  alert(data.details.type_name);
                        $('.editType').find('input[name="cid"]').val(data.details.id);
                        $('.editType').find('input[name="type_name"]').val(data.details.type_name);
                        $('.editType').modal('show');
                    },'json');
                });


                //UPDATE  DETAILS
                $('#update-type-form').on('submit', function(e){
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
                                  $('#types-table').DataTable().ajax.reload(null, false);
                                  $('.editType').modal('hide');
                                  $('.editType').find('form')[0].reset();
                                  toastr.success(data.msg);
                              }
                        }
                    });
                });

                //DELETE  RECORD
                $(document).on('click','#deleteTypeBtn', function(){
                    var type_id = $(this).data('id');
                    var url = '<?= route("delete.unit_type") ?>';

                    swal.fire({
                         title:'Are you sure?',
                         html:'You want to <b>delete</b> this Unit Type',
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
                              $.post(url,{"_token": "{{ csrf_token() }}",type_id:type_id}, function(data){
                                   if(data.code == 1){
                                       $('#types-table').DataTable().ajax.reload(null, false);
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
                    $('input[name="type_checkbox"]').each(function(){
                        this.checked = true;
                    });
                  }else{
                     $('input[name="type_checkbox"]').each(function(){
                         this.checked = false;
                     });
                  }
                  toggledeleteAllBtn();
           });

           $(document).on('change','input[name="type_checkbox"]', function(){

               if( $('input[name="type_checkbox"]').length == $('input[name="type_checkbox"]:checked').length ){
                   $('input[name="main_checkbox"]').prop('checked', true);
               }else{
                   $('input[name="main_checkbox"]').prop('checked', false);
               }
               toggledeleteAllBtn();
           });


           function toggledeleteAllBtn(){
               if( $('input[name="type_checkbox"]:checked').length > 0 ){
                   $('button#deleteAllBtn').text('Delete ('+$('input[name="type_checkbox"]:checked').length+')').removeClass('d-none');
               }else{
                   $('button#deleteAllBtn').addClass('d-none');
               }
           }


           $(document).on('click','button#deleteAllBtn', function(){
               var checkedTypes = [];
               $('input[name="type_checkbox"]:checked').each(function(){
                   checkedTypes.push($(this).data('id'));
               });

               var url = '{{ route("delete.selected.unit_type") }}';
               if(checkedTypes.length > 0){
                   swal.fire({
                       title:'Are you sure?',
                       html:'You want to delete <b>('+checkedTypes.length+')</b> types',
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
                           $.post(url,{type_ids:checkedTypes},function(data){
                              if(data.code == 1){
                                  $('#types-table').DataTable().ajax.reload(null, true);
                                  toastr.success(data.msg);
                              }
                           },'json');
                       }
                   })
               }
           });




         });

    </script>
