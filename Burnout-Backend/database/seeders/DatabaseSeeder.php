<?php

namespace Database\Seeders;

use App\Models\User;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        \App\Models\Kategoria::factory(5)->create();
        \App\Models\Szerzo::factory(5)->create();

        \App\Models\Cikk::factory(10)->create();
        \App\Models\Reklam::factory(5)->create();

        // OldalElem - mix reklám és cikk
        for ($i = 0; $i < 10; $i++) {
            $isCikk = rand(0, 1);
            \App\Models\OldalElem::create([
                'elem_tipus' => $isCikk ? 'cikk' : 'reklam',
                'tartalom_id' => $isCikk
                    ? \App\Models\Cikk::inRandomOrder()->first()->cikk_id
                    : \App\Models\Reklam::inRandomOrder()->first()->reklam_id,
                'oldal_tipus' => fake()->randomElement(['főoldal', 'cikk_oldal']),
            ]);
        }
    }

}
