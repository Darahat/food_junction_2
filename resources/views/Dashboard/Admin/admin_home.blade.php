@extends('dashboard.dashbaord_layout')
@section('content')
    <script src="{{ URL::asset('public/jquery/jquery-3.6.0.min.js') }}"></script>
    <script src="{{ URL::asset('public/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ URL::asset('public/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ URL::asset('public/datatable/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ URL::asset('public/datatable/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ URL::asset('public/sweetalert2/sweetalert2.min.js') }}"></script>
    <script src="{{ URL::asset('public/toastr/toastr.min.js') }}"></script>

<div class="container-fluid">
 

{{-- card design --}}
<div class="row">
  <div class="col">
    @include('dashboard.components.order_pending_card')

  </div>
  <div class="col">
    @include('dashboard.components.order_approved_card')

  </div>
  <div class="col">
    @include('dashboard.components.order_rejected_card')

  </div>
  {{-- <div class="col">
    @include('dashboard.components.card')

  </div> --}}
  
</div>
</div>
@endsection