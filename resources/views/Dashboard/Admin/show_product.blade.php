@extends('dashboard.dashbaord_layout')
@section('content')

<div class="container">
   <div class="card p-4 table-responsive">
    <div class="row">
        <div class="col-sm-4"><h3>Menue List</h3></div>
        <div class="col-sm-4">&nbsp;</div>
        <div class="col-sm-4">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
                Add New
            </button>
        </div>
    </div>

     <hr>
    <table class="table table-striped display nowrap " id="dataTable" width="100%" cellspacing="0">
        <thead>
            <tr>
                <th>Item Name</th>
                <th>Item Code</th>
                <th>Description</th>
                <th>Price</th>
                <th>Active</th>
                <th>Status</th>
                <th class="text-center">Action</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Item Name</th>
                <th>Item Code</th>
                <th>Description</th>
                <th>Price</th>
                <th>Active</th>
                <th>Status</th>
                <th class="text-center">Action</th>
            </tr>
        </tfoot>
        <tbody>
            <tr>
                <td>Chicken Fried Rice</td>
                <td>#654782</td>
                <td>Lorem  </td>
                <td>$345</td>
                <td>
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault" checked />
                </div></td>

                <td>
                    <span class="badge bg-green pr-lg-2">Running</span>
                </td>
                <td >
                    <button class=" btn   text-green  ">
                        <span class="material-icons-outlined">
                          info
                        </span>
                    </button>
                    <button class=" btn   text-red  ">
                        <span class="material-icons-outlined">
                        delete
                        </span>
                    </button>
                    <button class=" btn   text-blue ">
                        <span class="material-icons-outlined">
                            edit
                        </span>
                    </button>
                </td>
            </tr>
            <tr>
                <td>Chicken Fried Rice</td>
                <td>#654782</td>
                <td>Lorem  </td>
                <td>$345</td>
                <td>
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault"  />
                </div></td>

                <td>
                    <span class="badge bg-red pr-lg-2">Out of Stock</span>
                </td>
                <td >
                    <button class=" btn   text-green ">
                        <span class="material-icons-outlined">
                          info
                        </span>
                    </button>
                    <button class=" btn   text-red  ">
                        <span class="material-icons-outlined">
                        delete
                        </span>
                    </button>
                    <button class=" btn   text-blue  ">
                        <span class="material-icons-outlined">
                            edit
                        </span>
                    </button>
                </td>
            </tr>
            <tr>
                <td>Chicken Fried Rice</td>
                <td>#654782</td>
                <td>Lorem  </td>
                <td>$345</td>
                <td>
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault"  checked/>
                </div></td>

                <td>
                    <span class="badge bg-orange pr-lg-2">Limited Stock</span>
                </td>
                <td >
                    <button class=" btn   text-green ">
                        <span class="material-icons-outlined">
                          info
                        </span>
                    </button>
                    <button class=" btn   text-red  ">
                        <span class="material-icons-outlined">
                        delete
                        </span>
                    </button>
                    <button class=" btn   text-blue  ">
                        <span class="material-icons-outlined">
                            edit
                        </span>
                    </button>
                </td>
            </tr>
            <tr>
                <td>Chicken Fried Rice</td>
                <td>#654782</td>
                <td>Lorem  </td>
                <td>$345</td>
                <td>
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault" checked />
                </div></td>

                <td>
                    <span class="badge bg-green pr-lg-2">Running</span>
                </td>
                <td >
                    <button class=" btn   text-green  ">
                        <span class="material-icons-outlined">
                          info
                        </span>
                    </button>
                    <button class=" btn   text-red  ">
                        <span class="material-icons-outlined">
                        delete
                        </span>
                    </button>
                    <button class=" btn   text-blue ">
                        <span class="material-icons-outlined">
                            edit
                        </span>
                    </button>
                </td>
            </tr>
            <tr>
                <td>Chicken Fried Rice</td>
                <td>#654782</td>
                <td>Lorem  </td>
                <td>$345</td>
                <td>
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault"  />
                </div></td>

                <td>
                    <span class="badge bg-red pr-lg-2">Out of Stock</span>
                </td>
                <td >
                    <button class=" btn   text-green ">
                        <span class="material-icons-outlined">
                          info
                        </span>
                    </button>
                    <button class=" btn   text-red  ">
                        <span class="material-icons-outlined">
                        delete
                        </span>
                    </button>
                    <button class=" btn   text-blue  ">
                        <span class="material-icons-outlined">
                            edit
                        </span>
                    </button>
                </td>
            </tr>
            <tr>
                <td>Chicken Fried Rice</td>
                <td>#654782</td>
                <td>Lorem  </td>
                <td>$345</td>
                <td>
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault"  checked/>
                </div></td>

                <td>
                    <span class="badge bg-orange pr-lg-2">Limited Stock</span>
                </td>
                <td >
                    <button class=" btn   text-green ">
                        <span class="material-icons-outlined">
                          info
                        </span>
                    </button>
                    <button class=" btn   text-red  ">
                        <span class="material-icons-outlined">
                        delete
                        </span>
                    </button>
                    <button class=" btn   text-blue  ">
                        <span class="material-icons-outlined">
                            edit
                        </span>
                    </button>
                </td>
            </tr>

        </tbody>
    </table>
</div>
</div>
    @include('dashboard.admin.product_add')
    @endsection
