<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableComment extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_comment', function (Blueprint $table) {
            $table->string('id');
            $table->string('post');
            $table->string('nama');
            $table->string('email');
            $table->text('body');
            $table->timestamps();

            $table->foreign('post')->references('id')->on('tb_post')->onDelete('cascade')->onUpdate('cascade');
            $table->primary('id');
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
        Schema::dropIfExists('tb_comment');
    }
}
