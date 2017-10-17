<?php
namespace frontend\models;

use Yii;
use yii\data\ActiveDataProvider;


class FoodCategory extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'food_category';
    }

    public function rules()
    {
        return [
            [['name'], 'required'],
            [['name', 'image'], 'string']
        ];
    }

    public function FoodCategory($params)
    {
        $query = static::find()->orderBy(['created_at' => SORT_DESC]);

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => false
        ]);

        $query->andFilterWhere(['like', 'name', isset($params['name']) ? $params['name'] : '']);

        return $dataProvider;
    }

}
