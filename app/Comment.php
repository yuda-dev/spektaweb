<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = 'tb_comment';
    public $incrementing = false;

    protected $fillable = [
        'id','artikel_id','body','nama','email'
    ];

    public function post()
    {
        return $this->belongsTo('App\Artikel','artikel_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function role()
    {
        return $this->belongsTo(Role::class);
    }
}
