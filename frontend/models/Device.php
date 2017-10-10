<?php
namespace frontend\models;

use Yii;


class Device extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'devices';
    }

    public function rules()
    {
        return [
            [['user_id'], 'integer'],
            [['device_token', 'type'], 'string'],
        ];
    }

}
