<?php
namespace frontend\models;

use Yii;
use yii\data\ActiveDataProvider;
use yii\data\SqlDataProvider;


class UserFood extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'user_food';
    }


    public function rules()
    {
        return [
            [['food_category_id', 'product_name', 'protein', 'fat', 'carbs', 'kcal', 'gram'], 'required'],
            [['user_id', 'food_category_id'], 'integer'],
            [['product_name'], 'string', 'max' => 255],
            [['protein', 'fat', 'carbs', 'kcal', 'gram'], 'number']
        ];
    }

    //Get all user food by current day
    public function DayFood()
    {
        $user_id = Yii::$app->user->identity->getId();

        $dataProvider = new SqlDataProvider([
            'sql' => "SELECT food_category_id, user_id, food_category.image, product_name, protein, fat, carbs, kcal, gram, user_food.created_at
                    FROM user_food
                    INNER JOIN food_category ON food_category.id = user_food.food_category_id
                    WHERE user_id = $user_id AND DATE(user_food.created_at) = CURDATE()
                    ORDER BY user_food.created_at DESC
                    ",
            'pagination' => false
        ]);

        return $dataProvider;
    }

}
