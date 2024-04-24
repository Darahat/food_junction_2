<div class="modal fade editType" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Unit Type</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                 <form class="row gy-2 gx-3 align-items-center" action="<?= route('update.unit_type.details') ?>" method="post" id="update-type-form">
                    @csrf
                     <input type="hidden" name="cid">
                     <div class="form-group">
                         <label for="">Type name</label>
                         <input type="text" class="form-control" name="type_name" placeholder="Enter Type name">
                         <span class="text-danger error-text type_name_error"></span>
                     </div>
                     <div class="form-group">
                         <button type="submit" class="btn btn-block btn-success">Save Changes</button>
                     </div>
                 </form>


            </div>
        </div>
    </div>
</div>
