<?php

namespace App\Http\Controllers;

use App\Models\Track;

class TrackController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getAll() {
        $track = Track::select('song_name', 'album')->get();
        return response()->json($track);
     }

     public function getSetlist($id) {
        $track = Track::join('albums', 'tracks.album', '=', 'albums.id')->select('song_name')->where('albums.id', '=', $id)->get();
        return response()->json($track);
     }

 

}
