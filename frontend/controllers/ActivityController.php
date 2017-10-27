<?php

namespace frontend\controllers;

use Yii;
use yii\filters\auth\HttpBearerAuth;
use yii\web\Response;
use yii\rest\ActiveController;
use frontend\models\Activity;
use frontend\models\Library;
use frontend\models\User;


class ActivityController extends ActiveController
{

    public $modelClass = 'frontend\models\User';

    protected function verbs()
    {
        return [
            'recommend-activity' => ['GET'],
            'get-activity-by-id' => ['GET'],
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

    //get all activities by category_id
    public function actionRecommendActivity()
    {
        $model = new Activity();
        
        return $model->RecommendActivity(); 
    }
    
    //get activity information by id
    public function actionGetActivityById($id)
    {
        $model = new Activity();

        return $model->ActivityById($id);
    }
    

}
