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
        $album = Album::all();
        return response()->json($band);
     }

     public function getOne($id) {
        $album = Album::find($id);
        return response()->json($band);
     }

 

}
