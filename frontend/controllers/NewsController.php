<?php

namespace frontend\controllers;

use Yii;
use yii\filters\auth\HttpBearerAuth;
use yii\web\Response;
use yii\rest\ActiveController;
use frontend\models\News;
use frontend\models\Library;
use frontend\models\User;


class NewsController extends ActiveController
{

    public $modelClass = 'frontend\models\User';

    protected function verbs()
    {
        return [
            'all-news' => ['GET']
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

    //get all news
    public function actionAllNews()
    {
        $model = new News();

        return $model->AllNews();
    }

}
