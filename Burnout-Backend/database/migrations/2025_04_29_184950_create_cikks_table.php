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
        Schema::create('cikks', function (Blueprint $table) {
            $table->id('cikk_id');
            $table->string('cim');
            $table->text('szoveg');
            $table->date('datum_kiadas');
            $table->unsignedBigInteger('kategoria_id');
            $table->unsignedBigInteger('szerzo_id');
            $table->timestamps();

            $table->foreign('kategoria_id')->references('kategoria_id')->on('kategorias')->onDelete('cascade');
            $table->foreign('szerzo_id')->references('szerzo_id')->on('szerzos')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cikks');
    }
};
