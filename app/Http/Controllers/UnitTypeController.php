<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\UnitType;
use DataTables;

class UnitTypeController extends Controller
{
    // LIST

    public function index(){
        return view('unit_type/type-list');
    }

    //ADD NEW 
    public function add(Request $request){
         $validator = Validator::make($request->all(),[
             'type_name'=>'required|unique:unit_type',
         ]);

         if(!$validator){
              return response()->json(['code'=>0,'error'=>$validator->errors()->toArray()]);
         }else{
             $unit_type = new UnitType();
             $unit_type->type_name = $request->type_name;
             $query = $unit_type->save();

             if(!$query){
                 return response()->json(['code'=>0,'msg'=>'Something went wrong']);
             }else{
                 return response()->json(['code'=>1,'msg'=>'New Unit Type has been successfully saved']);
             }
         }
    }

    // GET ALL  
    public function getList(Request $request){
          $types = UnitType::all();
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

    //GET   DETAILS
    public function getDetails(Request $request){
        $type_id = $request->type_id;
        $typeDetails = UnitType::find($type_id);
        return response()->json(['details'=>$typeDetails]);
    }

    //UPDATE  DETAILS
    public function updateDetails(Request $request){
        $type_id = $request->cid;

        $validator = Validator::make($request->all(),[
            'type_name'=>'required|unique:unit_type,type_name,'.$type_id
        ]);

        if(!$validator){
               return response()->json(['code'=>0,'error'=>$validator->errors()->toArray()]);
        }else{

            $ptype = UnitType::find($type_id);
            $ptype->type_name = $request->type_name;
            $query = $ptype->save();

            if($query){
                return response()->json(['code'=>1, 'msg'=>'Unit Type Details have Been updated']);
            }else{
                return response()->json(['code'=>0, 'msg'=>'Something went wrong']);
            }
        }
    }

    // DELETE RECORD
    public function delete(Request $request){
        $type_id = $request->type_id;
        $query = UnitType::find($type_id)->delete();

        if($query){
            return response()->json(['code'=>1, 'msg'=>'Unit Type has been deleted from database']);
        }else{
            return response()->json(['code'=>0, 'msg'=>'Something went wrong']);
        }
    }


    public function deleteSelected(Request $request){
       $type_ids = $request->type_ids;
        UnitType::whereIn('id', $type_ids)->delete();
       return response()->json(['code'=>1, 'msg'=>'Unit Type have been deleted from database']);
    }


}
