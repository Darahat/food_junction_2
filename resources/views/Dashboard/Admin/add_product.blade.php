@extends('dashboard.dashbaord_layout')
@section('content')

<div class="container">
  <div class="text-center">
    <h2>Add Menu Items</h2>
  </div>
  <div class="card shadow-sm p-5">

    <div class="row">
      <div class="col-md-4">
        <div class="input-group mb-3">
          <span class="input-group-text border-0 text-red" id="search-addon"><span class="material-icons-outlined">
              lunch_dining
            </span></span>
          <input type="text" class="form-control rounded" placeholder="Item Name" aria-label="Search" aria-describedby="search-addon" />
        </div>
      </div>
      <div class="col-md-4">
        <div class="input-group mb-3">
          <span class="input-group-text border-0 text-blue input-group-alternative " id="search-addon"><span class="material-icons-outlined">
              euro
            </span></span>
          <input type="text" class="form-control rounded input-group-alternative " placeholder="Price" aria-label="Price" aria-describedby="search-addon" />
        </div>
      </div>
      <div class="col-md-4">
        <div class="input-group   mb-3">
          <span class="input-group-text text-pink input-group-alternative " id="search-addon"><i class="fas fa-weight"></i></span>
          <input type="text" class="form-control rounded input-group-alternative " placeholder="Weight" aria-label="Weight" aria-describedby="" />
        </div>
      </div>
      <div class="col-md-12">
        <br>
        <h5>Add Ingredients</h5>
        <hr>
      </div>
      <div class="col-md-1">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
          <label class="form-check-label" for="flexCheckDefault">
            Flour
          </label>
        </div>
      </div>
      <div class="col-md-2">
        <div class="input-group mb-3">
          <span class="input-group-text  " id="search-addon"><i class="fas fa-balance-scale-right"></i></span>
          <input type="text" class="form-control rounded" Priceplaceholder="" aria-label="" aria-describedby="" />
        </div>
      </div>
      <div class="col-md-1">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
          <label class="form-check-label" for="flexCheckDefault">
            Oil
          </label>
        </div>
      </div>
      <div class="col-md-2">
        <div class="input-group mb-3">
          <span class="input-group-text  " id="search-addon"><i class="fas fa-balance-scale-right"></i></span>
          <input type="text" class="form-control rounded" Priceplaceholder="" aria-label="" aria-describedby="" />
        </div>
      </div>
      <div class="col-md-1">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
          <label class="form-check-label" for="flexCheckDefault">
            Salt
          </label>
        </div>
      </div>
      <div class="col-md-2">
        <div class="input-group mb-3">
          <span class="input-group-text  " id="search-addon"><i class="fas fa-balance-scale-right"></i></span>
          <input type="text" class="form-control rounded" Priceplaceholder="" aria-label="" aria-describedby="" />
        </div>
      </div>
      <div class="col-md-1">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
          <label class="form-check-label" for="flexCheckDefault">
            Coly Flower
          </label>
        </div>
      </div>
      <div class="col-md-2">
        <div class="input-group mb-3">
          <span class="input-group-text  " id="search-addon"><i class="fas fa-balance-scale-right"></i></span>
          <input type="text" class="form-control rounded" Priceplaceholder="" aria-label="" aria-describedby="" />
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-group shadow-textarea">
          <label for="exampleFormControlTextarea6">Shadow and placeholder</label>
          <textarea class="form-control z-depth-1  input-group-alternative" id="exampleFormControlTextarea6" rows="3" placeholder="Write something here..."></textarea>
        </div>
      </div>
    </div>
  </div>
</div>

@endsection