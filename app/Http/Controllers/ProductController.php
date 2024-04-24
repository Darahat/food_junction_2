<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Product;
use App\Models\ProductType;
use App\Models\UnitType;
use DataTables;

class ProductController extends Controller
{
    //Product Type LIST

    public function index(){
        $types = ProductType::pluck('type_name', 'id');
        $units = UnitType::pluck('type_name', 'id');

        return view('product/product-list', with(compact('types', 'units')));
    }

    //ADD NEW PRODUCT TYPES
    public function addProduct(Request $request){
         $validator = Validator::make($request->all(),[
             'product_name'=>'required|unique:product_name',
             'cover_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
         ]);

         if(!$validator){
              return response()->json(['code'=>0,'error'=>$validator->errors()->toArray()]);
         }else{
             $product = new Product();
             $product->product_category = $request->product_category;
             $product->product_type_id = $request->product_type_id;
             $product->product_code = $request->product_code;
             $product->product_name = $request->product_name;
             $product->unit_type_id = $request->unit_type_id;
             $product->description = $request->description;
             $product->purchase_cost = $request->purchase_cost;
             $product->other_cost = $request->other_cost;
             $product->sell_price = $request->sell_price;

             $imageName = time().'.'.$request->cover_image->extension();
             $request->cover_image->move(public_path('photos/product'), $imageName);

             $product->product_photo = $imageName;
             $query = $product->save();

             if(!$query){
                 return response()->json(['code'=>0,'msg'=>'Something went wrong']);
             }else{
                 return response()->json(['code'=>1,'msg'=>'New Item has been successfully saved']);
             }
         }
    }

    // GET ALL  PRODUCT TYPES
    public function getProductList(Request $request){
          $products = Product::all();
          return DataTables::of($products)
                              ->addIndexColumn()
                              ->addColumn('actions', function($row){
                                  return '<div class="btn-group">
                                                <button class="btn btn-sm btn-primary" data-id="'.$row['id'].'" id="editProductBtn">Update</button>
                                                <button class="btn btn-sm btn-danger" data-id="'.$row['id'].'" id="deleteProductBtn">Delete</button>
                                          </div>';
                              })
                              ->addColumn('checkbox', function($row){
                                  return '<input type="checkbox" name="product_checkbox" data-id="'.$row['id'].'"><label></label>';
                              })

                              ->rawColumns(['actions','checkbox'])
                              ->make(true);
    }

    //GET  PRODUCT TYPE DETAILS
    public function getProductDetails(Request $request){
        $product_id = $request->product_id;
        $productDetails = Product::find($product_id);
        return response()->json(['details'=>$productDetails]);
    }

    //UPDATE PRODUCT TYPE DETAILS
    public function updateProductDetails(Request $request){
        $product_id = $request->cid;

        $validator = Validator::make($request->all(),[
            'product_name'=>'required|unique:product_code,product_name,'.$product_id
        ]);

        if(!$validator){
               return response()->json(['code'=>0,'error'=>$validator->errors()->toArray()]);
        }else{

            $product = Product::find($product_id);
            $product->product_code = $request->product_code;
            $product->product_name = $request->product_name;
            $product->product_type_id = $request->product_type_id;
            $product->unit_type_id = $request->unit_type_id;
            $product->product_category = $request->product_category;
            $product->description = $request->description;
            $product->purchase_cost = $request->purchase_cost;
            $product->other_cost = $request->other_cost;
            $product->sell_price = $request->sell_price;
            $query = $product->save();

            if($query){
                return response()->json(['code'=>1, 'msg'=>'Item  Details have Been updated']);
            }else{
                return response()->json(['code'=>0, 'msg'=>'Something went wrong']);
            }
        }
    }

    // DELETE COUNTRY RECORD
    public function deleteProduct(Request $request){
        $product_id = $request->product_id;
        $query = Product::find($product_id)->delete();

        if($query){
            return response()->json(['code'=>1, 'msg'=>'Item has been deleted from database']);
        }else{
            return response()->json(['code'=>0, 'msg'=>'Something went wrong']);
        }
    }


    public function deleteSelectedProduct(Request $request){
        $product_ids = $request->product_ids;
        Product::whereIn('id', $product_ids)->delete();
       return response()->json(['code'=>1, 'msg'=>'Item have been deleted from database']);
    }


}
