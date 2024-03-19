<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['album_name', 'release_date', 'album_cover', 'artist', 'favourite_song', 'song_sample'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}
