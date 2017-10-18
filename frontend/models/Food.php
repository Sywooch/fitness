<?php
namespace frontend\models;

use Yii;
use yii\data\ActiveDataProvider;


class Food extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'food';
    }


    public function rules()
    {
        return [
            [['name', 'food_category_id', 'directions', 'cal', 'grams', 'proteins', 'fats', 'carbohydrates'], 'required'],
            [['directions'], 'string'],
            [['image', 'name'], 'string', 'max' => 255],
            [['cal', 'grams', 'proteins', 'fats', 'carbohydrates'], 'string', 'max' => 50],
            [['food_category_id'], 'integer']
        ];
    }

    //Get Food by category_id
    public function FoodByCategory($category_id)
    {
        $dataProvider = new ActiveDataProvider([
            'query' => static::find()
                ->select([
                    'id', 'name', 'cal', 'grams', 'proteins', 'fats', 'carbohydrates', 'image'
                ])
                ->where(['food_category_id' => $category_id])
                ->orderBy(['created_at' => SORT_DESC]),
            'pagination' => false
        ]);

        return $dataProvider;
    }

    //Get Food by id
    public function FoodById($id)
    {
        $query = static::findOne(['id' => $id]);

        return $query;
    }

}
