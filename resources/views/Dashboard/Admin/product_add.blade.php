
            <!-- Modal body -->
            <div class="modal-body">
                <form action="#" method="post" enctype="multipart/form-data">
                    {{ method_field('patch') }}
                    {{ csrf_field() }}
                    <div class="modal fade text-left" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">{{ __('Edit User') }}</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <div class="form-group">
                                            <strong>{{ __('Name') }}:</strong>
                                            <input type="text" class="form-control" id="name" placeholder="Name" name="name" required>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <div class="form-group">
                                            <strong>{{ __('Email') }}:</strong>
                                            <input type="email" class="form-control" id="email" placeholder="Email" name="email" required>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <div class="form-group">
                                            <strong>{{ __('Password') }}:</strong>
                                            <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <div class="form-group">
                                            <strong>{{ __('Confirm Password') }}:</strong>
                                            <input type="confirm-password" class="form-control" id="confirm-password" placeholder="Confirm Password" name="confirm-password" required>
                                        </div>
                                    </div>
                                     <div class="col-xs-12 col-sm-12 col-md-12">
                                        <button type="submit" class="btn btn-warning">{{ __('Save') }}</button>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
