<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\OldalElem>
 */
class OldalElemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array {
        return [
            'elem_tipus' => fake()->randomElement(['cikk', 'reklam']),
            'tartalom_id' => 1, // később seedben random hozzárendeljük
            'oldal_tipus' => fake()->randomElement(['főoldal', 'cikk_oldal']),
        ];
    }

}
