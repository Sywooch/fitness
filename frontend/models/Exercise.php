<?php
namespace frontend\models;

use Yii;
use yii\data\ActiveDataProvider;
use yii\data\SqlDataProvider;


class Exercise extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'exercises';
    }


    public function rules()
    {
        return [
            [['user_id', 'activity_category_id', 'min', 'burned_cal', 'daily_goal'], 'required'],
            [['min', 'burned_cal', 'daily_goal'], 'number'],
            [['user_id', 'activity_category_id'], 'integer']
        ];
    }

    //Get all user exercises for the current day
    public function DayExercises()
    {
        $user = Yii::$app->user->identity->getId();

        $dataProvider = new SqlDataProvider([
            'sql' => "SELECT exercises.id AS exercises_id, user_id, activity_category.image, activity_category.name AS category_name, min, burned_cal, daily_goal, exercises.created_at
                    FROM exercises
                    INNER JOIN activity_category ON activity_category.id = exercises.activity_category_id
                    WHERE user_id = $user AND DATE(exercises.created_at) = CURDATE()
                    ORDER BY exercises.created_at DESC
                    ",
            'pagination' => false
        ]);

        return $dataProvider;
    }

    //Get all user exercises for date
    public function ExercisesByDate($date)
    {
        $user = Yii::$app->user->identity->getId();

        $dataProvider = new SqlDataProvider([
            'sql' => "SELECT exercises.id AS exercises_id, user_id, activity_category.image, activity_category.name AS category_name, min, burned_cal, daily_goal, exercises.created_at
                    FROM exercises
                    INNER JOIN activity_category ON activity_category.id = exercises.activity_category_id
                    WHERE user_id = $user AND DATE(exercises.created_at) = $date
                    ORDER BY exercises.created_at DESC
                    ",
            'pagination' => false
        ]);

        return $dataProvider;
    }

}
