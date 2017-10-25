<?php
namespace frontend\models;

use Yii;
use yii\data\ActiveDataProvider;


class Water extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'water';
    }


    public function rules()
    {
        return [
            [['user_id', 'cup'], 'required'],
            [['user_id', 'cup'], 'integer']
        ];
    }

    //Get count couples of water by current day
    public function DayWater()
    {
        $user_id = Yii::$app->user->identity->getId();

        $couple_count = static::find()
            ->where(['user_id' => $user_id])
            ->andWhere('DATE(created_at) = CURDATE()')
            ->sum('cup');

        return [
            'count_cups' => $couple_count != null ? $couple_count : 0,
            'user_id' => $user_id,
            'created_at' => date('Y-m-d')
        ];
    }

}
