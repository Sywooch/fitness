<?php

namespace frontend\controllers;

use Yii;
use yii\filters\auth\HttpBearerAuth;
use yii\web\Response;
use yii\rest\ActiveController;
use frontend\models\Food;
use frontend\models\Library;
use frontend\models\User;


class FoodController extends ActiveController
{

    public $modelClass = 'frontend\models\User';

    protected function verbs()
    {
        return [
            'get-food-by-category' => ['GET'],
            'get-food-by-id' => ['GET'],
            'recommend-food' => ['GET'],
            'food-category-search' => ['GET']
        ];
    }

    public function behaviors() {

        $behaviors = parent::behaviors();

        $behaviors['contentNegotiator']['formats']['text/html'] = Response::FORMAT_JSON;
        $behaviors['authenticator'] = [
            'class' => HttpBearerAuth::className()
        ];
        return $behaviors;
    }

    //get all food by category_id
    public function actionGetFoodByCategory($category_id)
    {
        $model = new Food();

        return $model->FoodByCategory($category_id);
    }

    //get food information by id
    public function actionGetFoodById($id)
    {
        $model = new Food();

        return $model->FoodById($id);
    }

    //get recommend food for user
    public function actionRecommendFood($ingestion)
    {
        $model = new Food();
        
        return $model->Ingestion($ingestion);
    }

    //Food search in category
    public function actionFoodCategorySearch($category_id, $name)
    {
        $model = new Food();

        return $model->FoodCategorySearch($category_id, $name);
    }


}
