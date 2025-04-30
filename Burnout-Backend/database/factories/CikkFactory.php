<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Cikk>
 */
class CikkFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array {
        return [
            'cim' => fake()->sentence(),
            'szoveg' => fake()->paragraph(5),
            'datum_kiadas' => fake()->date(),
            'kategoria_id' => \App\Models\Kategoria::factory(),
            'szerzo_id' => \App\Models\Szerzo::factory(),
        ];
    }

}
