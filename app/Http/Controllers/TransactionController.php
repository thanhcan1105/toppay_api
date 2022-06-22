<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Transaction;
use Validator;
use App\Http\Controllers\Controller;


class TransactionController extends Controller
{

    public function detailTransaction($id)
    {
        $user = auth()->user();
        $transaction = Transaction::where('user_id', $user->id)->where('id', $id)->first();
        return response()->json($transaction);
    }

    public function transaction(Request $request)
    {
        $user = auth()->user();

        $query = Transaction::query();

        if($request->status)
        {
            $query->where('status', $request->status);
        } 
        if ($request->day) {
            $query->whereRaw('DAY(created_at) ='.$request->day);
        }
        if ($request->month) {
            $query->whereRaw('MONTH(created_at) ='.$request->month);//->whereYear('created_at', '=', $request->year);
        }
        if ($request->year) {
            $query->whereRaw('YEAR(created_at) ='.$request->year);//->whereYear('created_at', '=', $request->year);
        }

        

        $transaction =$query->where('user_id', $user->id)->orderBy('created_at', 'desc')->get();
        return response()->json($transaction);
    }

    public function listDate(Request $request){
        $user = auth()->user();

            $data = Transaction::where('user_id', $user->id)->selectRaw('year(created_at) year, month(created_at) month')
                ->groupBy('year', 'month')
                ->orderBy('year', 'desc')
                ->orderBy('month', 'desc')
                ->get();
                return response()->json($data);   
    }

    public function withdraw(Request $request){
        $validator = \Validator::make($request->all(), [
            'amount' => 'required',
            'payment' => 'required',
            'tax' => 'required',
            'received' => 'required',
        ]);

        $withdraw = Transaction::create(array_merge(
            $validator->validated(),
            ['user_id' => auth()->user()->id, 'status' => 3, 'subject' => 1, 'transaction_code' => 'GD-'.rand(100000,999999)]
        ));

        if ($withdraw) {
            return $this->responseOK($withdraw);
        } else {
            return $this->responseError();
        }
    }

    public function update(Request $request, $id){
        $update = Transaction::where('id', $id)->update(['status' => 2]);
        return $this->responseOK($update);
    }
}
