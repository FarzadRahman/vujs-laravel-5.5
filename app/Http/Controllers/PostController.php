<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Http\Resources\PostResource;

class PostController extends Controller
{
    public function index()
    {
        $posts=Post::orderBy('postId','desc')->paginate(3);

        return PostResource::collection($posts);
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        $post=$request->isMethod('put')?Post::findOrFail
        ($request->postId):new Post;

        $post->title=$request->title;
        $post->body=$request->body;
        $post->save();

        return new PostResource($post);

    }

    public function show($id)
    {
       $post=Post::findOrFail($id);

       return new PostResource($post);
    }


    public function edit($id)
    {
        //
    }




    public function destroy($id)
    {
        $post=Post::findOrFail($id);
        $post->delete();

        return new PostResource($post);
    }
}
