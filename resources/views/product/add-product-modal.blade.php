<div class="modal fade addProduct" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Product</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                 <form class="row gy-2 gx-3 align-items-center" action="{{ route('add.product') }}" method="post" id="add-product-form" enctype="multipart/form-data">
                    @csrf
                     <div class="col-12">
                         <label for="" class="form-label">Product Category</label>
                         {{ Form::radio('product_category', '1',['class' => 'form-control']) }} Main Item
                         {{ Form::radio('product_category', '2',['class' => 'form-control']) }} Row Material
                         {{ Form::radio('product_category', '3',['class' => 'form-control']) }} Package
                     </div>

                     <div class="col-12">
                         <label for="" class="form-label">Product Type</label>
                         {!! Form::select('product_type_id', $types, '', ['class' => 'form-control']) !!}
                         <span class="text-danger error-text product_type_id_error"></span>
                     </div>

                        <div class="col-12">
                          <label for="" class="form-label">Product Code</label>
                            {!! Form::text('product_code','',array('class'=>'form-control','placeholder'=>'Enter Code')) !!}
                          <span class="text-danger error-text product_code_error"></span>
                        </div>
                     <div class="col-12">
                         <label for="" class="form-label">Product Name</label>
                         {!! Form::text('product_name','',array('class'=>'form-control','placeholder'=>'Enter Name')) !!}
                         <span class="text-danger error-text product_name_error"></span>
                     </div>
                     <div class="col-12">
                         <label for="" class="form-label">Units</label>
                         {!! Form::select('unit_type_id', $units, '', ['class' => 'form-control']) !!}
                         <span class="text-danger error-text unit_type_id_error"></span>
                     </div>
                     <div class="col-12">
                         <label for="" class="form-label">Product Details</label>
                         {!! Form::textarea('description', null, ['class' => 'form-control', 'id' => 'description', 'rows' => 4]) !!}
                         <span class="text-danger error-text product_name_error"></span>
                     </div>
                     <div class="col-12">
                         <label for="" class="form-label">Purchase Cost</label>
                         {!! Form::text('purchase_cost','',array('class'=>'form-control','placeholder'=>'Purchase Cost')) !!}
                         <span class="text-danger error-text purchase_cost_error"></span>
                     </div>
                     <div class="col-12">
                         <label for="" class="form-label">Other Cost</label>
                         {!! Form::text('other_cost','',array('class'=>'form-control','placeholder'=>'Other Cost')) !!}
                          <span class="text-danger error-text other_cost_error"></span>
                     </div>
                     <div class="col-12">
                         <label for="" class="form-label">Sell Price</label>
                         {!! Form::text('sell_price','',array('class'=>'form-control','placeholder'=>'Sell Price')) !!}
                          <span class="text-danger error-text sell_price_error"></span>
                     </div>
                     <div class="col-12">
                         <label for="" class="form-label">Product Photo</label>
                         {{Form::file('cover_image', ['class' => 'form-control'])}}
                         <span class="text-danger error-text sell_price_error"></span>
                     </div>


                     <div class="col-12">
                         <button type="submit" class="btn btn-block btn-success">SAVE</button>
                        </div>
                 </form>

            </div>
        </div>
    </div>
</div>
