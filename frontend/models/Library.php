<?php
namespace frontend\models;

use yii\base\Model;


class Library extends Model
{
    
    //Response array
    public function response($status, $message, $params = [])
    {
        return [
            'status' => $status,
            'message' => $message,
            'params' => $params
        ];
    }
    
    public function CheckUpdateAvatar($user_avatar)
    {
        if(!preg_match('/^(http|https):\\/\\/[a-z0-9_]+([\\-\\.]{1}[a-z_0-9]+)*\\.[_a-z]{2,5}'.'((:[0-9]{1,5})?\\/.*)?$/i', $user_avatar) && file_exists(getcwd().'/'.$user_avatar)){
            unlink(getcwd().'/'.$user_avatar);
        }
    }
    
}
