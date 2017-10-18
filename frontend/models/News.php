<?php
namespace frontend\models;

use Yii;
use yii\data\ActiveDataProvider;


class News extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'news';
    }


    public function rules()
    {
        return [
            [['title', 'description'], 'required'],
            [['image', 'title'], 'string', 'max' => 255],
            [['description'], 'string'],
        ];
    }

    //Get All news
    public function AllNews()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => static::find()->orderBy(['created_at' => SORT_DESC]),
            'pagination' => [
                'pageSize' => 20
            ]
        ]);

        return $dataProvider;
    }

}
