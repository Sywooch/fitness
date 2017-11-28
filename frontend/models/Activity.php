<?php
namespace frontend\models;

use Yii;
use yii\data\ActiveDataProvider;


class Activity extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'activity';
    }


    public function rules()
    {
        return [
            [['name', 'working_weight', 'number_of_approaches', 'number_of_repetitions', 'interval_between_approaches', 'technique', 'activity_category_id', 'training_time', 'specification'], 'required'],
            [['image', 'video', 'name', 'working_weight', 'number_of_approaches', 'number_of_repetitions', 'interval_between_approaches', 'technique', 'important'], 'string', 'max' => 255],
            [['cal', 'fats', 'training_time'], 'string', 'max' => 50],
            [['activity_category_id'], 'integer']
        ];
    }

    //Get Activities by category_id
    public function RecommendActivity($params)
    {
        $dataProvider = new ActiveDataProvider([
            'query' => static::find()
                ->select([
                    'id', 'name', 'cal', 'training_time', 'specification', 'image', 'video', 'created_at'
                ]),
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

    //Get Activity by id
    public function ActivityById($id)
    {
        $query = static::findOne(['id' => $id]);

        return $query;
    }

}
