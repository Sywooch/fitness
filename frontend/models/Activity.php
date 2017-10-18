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
            [['name', 'working_weight', 'number_of_approaches', 'number_of_repetitions', 'interval_between_approaches', 'technique', 'activity_category_id'], 'required'],
            [['image', 'name', 'working_weight', 'number_of_approaches', 'number_of_repetitions', 'interval_between_approaches', 'technique', 'important'], 'string', 'max' => 255],
            [['activity_category_id'], 'integer']
        ];
    }

    //Get Activities by category_id
    public function ActivityByCategory($category_id)
    {
        $dataProvider = new ActiveDataProvider([
            'query' => static::find()
                ->where(['activity_category_id' => $category_id])
                ->orderBy(['created_at' => SORT_DESC]),
            'pagination' => false
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
