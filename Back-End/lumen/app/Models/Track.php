<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Track extends Model
{
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['song_name', 'album'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}