<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePortofolio extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_portofolio', function (Blueprint $table) {
            $table->string('id');
            $table->string('title');
            $table->string('category_p');
            $table->string('image')->default('default.png');
            $table->text('body');
            $table->timestamps();

            $table->primary('id');
            $table->foreign('category_p')->references('id')->on('tb_category_p')->onDelete('restrict')->onUpdate('cascade');
            $table->engine = 'InnoDB';
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_portofolio');
    }
}
