<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('oldal_elems', function (Blueprint $table) {
            $table->id('elem_id');
            $table->string('elem_tipus');
            $table->unsignedBigInteger('tartalom_id');
            $table->string('oldal_tipus');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('oldal_elems');
    }
};
