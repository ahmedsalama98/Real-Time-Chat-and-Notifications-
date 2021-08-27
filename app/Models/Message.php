<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Message extends Model
{
    use HasFactory;


protected $fillable =['user_id','body'];


public function user()
{
    return $this->belongsTo(User::class, 'user_id',);
}

// public function getCreatedAtAttribute($value)
// {
//     return $this->changeDateFormUTCtoLocal($value);
// }


// // public function getUpdatedAtAttribute($value)
// // {
// //     return $this->changeDateFormUTCtoLocal($value);
// // }

}
