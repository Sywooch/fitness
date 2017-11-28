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
            [['directions', 'specification'], 'string'],
            [['image', 'name'], 'string', 'max' => 255],
            [['cal', 'grams', 'proteins', 'fats', 'carbohydrates'], 'string', 'max' => 50],
            [['food_category_id'], 'integer']
        ];
    }

    //Get Food by category_id
    public function FoodByCategory($category_id, $params)
    {
        $dataProvider = new ActiveDataProvider([
            'query' => static::find()
                ->select([
                    'id', 'name', 'cal', 'grams', 'proteins', 'fats', 'carbohydrates', 'image'
                ])
                ->where(['food_category_id' => $category_id]),
            'pagination' => false
        ]);

        $this->load($params);

        $dataProvider->setSort([
            'attributes' => [
                'id' => [
                    'asc' => ['id' => SORT_ASC],
                    'desc' => ['id' => SORT_DESC],
                    'default' => SORT_ASC
                ],
            ],
            'defaultOrder' => [
                'id' => SORT_DESC
            ]
        ]);

        return $dataProvider;
    }

    //Get Food by id
    public function FoodById($id)
    {
        $query = static::findOne(['id' => $id]);

        return $query;
    }

    //Get recommended food for user
    public function Ingestion($time, $params)
    {
        $lib = new Library();

        if($time == 'breakfast'){
            $query = Food::find()
            ->select([
                'id', 'name', 'specification', 'cal', 'grams', 'proteins', 'fats', 'carbohydrates', 'image', 'created_at'
            ]);
        } elseif($time == 'dinner'){
            $query = Food::find()
                ->select([
                    'id', 'name', 'specification', 'cal', 'grams', 'proteins', 'fats', 'carbohydrates', 'image', 'created_at'
                ]);
        } elseif($time == 'launch'){
            $query = Food::find()
                ->select([
                    'id', 'name', 'specification', 'cal', 'grams', 'proteins', 'fats', 'carbohydrates', 'image', 'created_at'
                ]);
        }

        if(isset($query)){

            $dataProvider = new ActiveDataProvider([
                'query' => $query,
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
        } else {
            return $lib->response(404, 'Not found');
        }
    }

    //Food search in category
    public function FoodCategorySearch($category_id, $product_name, $params)
    {
        $query = static::find()
            ->select(['id', 'name', 'cal', 'grams', 'proteins', 'fats', 'carbohydrates', 'image']);

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => 20
            ]
        ]);

        $this->load($params);

        $dataProvider->setSort([
            'attributes' => [
                'id' => [
                    'asc' => ['id' => SORT_ASC],
                    'desc' => ['id' => SORT_DESC],
                    'default' => SORT_ASC
                ],
            ],
            'defaultOrder' => [
                'id' => SORT_DESC
            ]
        ]);

        $query->andFilterWhere(['like', 'name', $product_name])
            ->andWhere(['food_category_id' => $category_id]);

        return $dataProvider;
    }
}
