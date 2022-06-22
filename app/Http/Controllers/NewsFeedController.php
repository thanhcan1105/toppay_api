<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\NewsFeed;

class NewsFeedController extends Controller
{
    //
    public function getList(Request $request){
        $page = $request->page ? (int)$request->page : 0;
        $limit = $request->limit ? (int)$request->limit : 1;
        
        $news = NewsFeed::orderBy('created_at', 'asc')->skip($page*$limit)->take($limit)->get();

        $data = [];
        $data['count'] = NewsFeed::count();
        $data['page'] = $page;
        $data['limit'] = $limit;
        $data['items'] = $news;

        return $this->responseOK($data);
    }

    public function detail_feed($id){
        $detail = NewsFeed::where('id', $id)->first();

        return $this->responseOK($detail);
    }
}
