<?php

namespace frontend\controllers;

use Yii;
use yii\filters\auth\HttpBearerAuth;
use yii\web\Response;
use yii\rest\ActiveController;
use frontend\models\Library;
use frontend\models\User;
use frontend\models\ActivityCategory;
use frontend\models\FoodCategory;


class CategoryController extends ActiveController
{

    public $modelClass = 'frontend\models\User';

    protected function verbs()
    {
        return [
            'food-category' => ['GET'],
            'activity-category' => ['GET'],
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

    //Get food category
    public function actionFoodCategory()
    {
        $model = new FoodCategory();

        return $model->FoodCategory(Yii::$app->request->queryParams);
    }

    //Get activity category
    public function actionActivityCategory()
    {
        $model = new ActivityCategory();

        return $model->ActivityCategory(Yii::$app->request->queryParams);
    }

}
