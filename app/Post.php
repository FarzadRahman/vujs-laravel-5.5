<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    public $timestamps = false;
    protected $primaryKey = 'postId';
    protected $table = 'posts';

}
