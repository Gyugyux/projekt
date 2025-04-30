<?php

namespace App\Http\Controllers;

use App\Models\Cikk;
use App\Http\Resources\CikkResource;

class CikkController extends Controller
{
    public function index()
    {
        $cikkek = Cikk::with(['kategoria','szerzo'])->latest('datum_kiadas')->get();
        return CikkResource::collection($cikkek);
    }
}
