<div class="modal fade addType" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Type</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                 <form class="row gy-2 gx-3 align-items-center" action="{{ route('add.unit_type') }}" method="post" id="add-type-form">
                    @csrf
                        <div class="col-12">
                          <label for="" class="form-label">Type name</label>
                          <input type="text" class="form-control" name="type_name" placeholder="Enter type name">
                          <span class="text-danger error-text type_name_error"></span>
                        </div>
                        <div class="col-12">
                         <button type="submit" class="btn btn-block btn-success">SAVE</button>
                        </div>
                 </form>
				 
            </div>
        </div>
    </div>
</div>
