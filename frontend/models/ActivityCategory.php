<?php
namespace frontend\models;

use Yii;
use yii\data\ActiveDataProvider;


class ActivityCategory extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'activity_category';
    }

    public function rules()
    {
        return [
            [['name'], 'required'],
            [['name', 'image'], 'string']
        ];
    }

    public function ActivityCategory($params)
    {
        $query = static::find()->orderBy(['created_at' => SORT_DESC]);

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => false
        ]);

        $query->andFilterWhere(['like', 'name', $params['name']]);

        return $dataProvider;
    }

}
