<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\ProductType;
use DataTables;

class ProductTypeController extends Controller
{
    //Product Type LIST

    public function index(){
        return view('product_type/type-list');
    }

    //ADD NEW PRODUCT TYPES
    public function add(Request $request){
         $validator = Validator::make($request->all(),[
             'type_name'=>'required|unique:product_type',
         ]);

         if(!$validator){
              return response()->json(['code'=>0,'error'=>$validator->errors()->toArray()]);
         }else{
             $product_type = new ProductType();
             $product_type->type_name = $request->type_name;
             $query = $product_type->save();

             if(!$query){
                 return response()->json(['code'=>0,'msg'=>'Something went wrong']);
             }else{
                 return response()->json(['code'=>1,'msg'=>'New Item Type has been successfully saved']);
             }
         }
    }

    // GET ALL  PRODUCT TYPES
    public function getList2(Request $request){
          $types = ProductType::all();
          return DataTables::of($types)
                              ->addIndexColumn()
                              ->addColumn('actions', function($row){
                                  return '<div class="btn-group">
                                                <button class="btn btn-sm btn-primary" data-id="'.$row['id'].'" id="editTypeBtn">Update</button>
                                                <button class="btn btn-sm btn-danger" data-id="'.$row['id'].'" id="deleteTypeBtn">Delete</button>
                                          </div>';
                              })
                              ->addColumn('checkbox', function($row){
                                  return '<input type="checkbox" name="type_checkbox" data-id="'.$row['id'].'"><label></label>';
                              })

                              ->rawColumns(['actions','checkbox'])
                              ->make(true);
    }

    //GET  PRODUCT TYPE DETAILS
    public function getDetails2(Request $request){
        $type_id = $request->type_id;
        $typeDetails = ProductType::find($type_id);
        return response()->json(['details'=>$typeDetails]);
    }

    //UPDATE PRODUCT TYPE DETAILS
    public function updateDetails2(Request $request){
        $type_id = $request->cid;

        $validator = Validator::make($request->all(),[
            'type_name'=>'required|unique:product_type,type_name,'.$type_id
        ]);

        if(!$validator){
               return response()->json(['code'=>0,'error'=>$validator->errors()->toArray()]);
        }else{

            $ptype = ProductType::find($type_id);
            $ptype->type_name = $request->type_name;
            $query = $ptype->save();

            if($query){
                return response()->json(['code'=>1, 'msg'=>'Item Type Details have Been updated']);
            }else{
                return response()->json(['code'=>0, 'msg'=>'Something went wrong']);
            }
        }
    }

    // DELETE COUNTRY RECORD
    public function delete(Request $request){
        $type_id = $request->type_id;
        $query = ProductType::find($type_id)->delete();

        if($query){
            return response()->json(['code'=>1, 'msg'=>'Item Type has been deleted from database']);
        }else{
            return response()->json(['code'=>0, 'msg'=>'Something went wrong']);
        }
    }


    public function deleteSelected(Request $request){
       $type_ids = $request->type_ids;
        ProductType::whereIn('id', $type_ids)->delete();
       return response()->json(['code'=>1, 'msg'=>'Item Type have been deleted from database']);
    }


}
