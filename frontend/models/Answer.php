<?php
namespace frontend\models;

use yii\base\Model;


class Answer extends Model
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
    
}
