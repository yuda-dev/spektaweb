<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'tb_category';

    public $incrementing = false;

    public function artikels()
    {
        return $this->hasMany(Artikel::class);
    }
}
