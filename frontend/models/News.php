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
    public function AllNews($params)
    {
        $dataProvider = new ActiveDataProvider([
            'query' => static::find(),
            'pagination' => [
                'pageSize' => 20
            ]
        ]);

        $this->load($params);

        $dataProvider->setSort([
            'attributes' => [
                'created_at' => [
                    'asc' => ['created_at' => SORT_ASC],
                    'desc' => ['created_at' => SORT_DESC],
                    'default' => SORT_ASC
                ],
            ],
            'defaultOrder' => [
                'created_at' => SORT_DESC
            ]
        ]);

        return $dataProvider;
    }

}
