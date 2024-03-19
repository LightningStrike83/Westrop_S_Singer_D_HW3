<?php

namespace App\Http\Controllers;

use App\Models\Album;

class AlbumController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getAll() {
        $album = Album::select('album_name', 'release_date', 'album_cover', 'artist', 'favourite_song', 'song_sample')->orderBy('album_name', 'desc')->get();
        return response()->json($album);
     }

     public function getOne($id) {
        $album = Album::where('albums.id', '=', $id)->get();
        return response()->json($album);
     }

 

}
