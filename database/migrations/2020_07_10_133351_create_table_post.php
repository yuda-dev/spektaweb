<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePost extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_post', function (Blueprint $table) {
            $table->string('id');
            $table->string('title');
            $table->string('image')->default('default.png');
            $table->text('body');
            $table->integer('view_count')->default(0);
            $table->boolean('status')->default(0);
            $table->string('category');
            $table->timestamps();
            
            $table->foreign('category')->references('id')->on('tb_category')->onDelete('restrict')->onUpdate('cascade');

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
        Schema::dropIfExists('tb_post');
    }
}
