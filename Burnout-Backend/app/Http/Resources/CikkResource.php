<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CikkResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'cikk_id'      => $this->cikk_id,
            'cim'          => $this->cim,
            'szoveg'       => $this->szoveg,
            'datum_kiadas' => $this->datum_kiadas->toDateString(),
            'kategoria'    => [
                'id'  => $this->kategoria->kategoria_id,
                'nev' => $this->kategoria->nev,
            ],
            'szerzo'       => [
                'id'    => $this->szerzo->szerzo_id,
                'nev'   => $this->szerzo->nev,
                'email' => $this->szerzo->email,
            ],
        ];
    }
}
