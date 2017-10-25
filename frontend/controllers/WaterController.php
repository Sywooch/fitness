<?php

namespace frontend\controllers;

use Yii;
use yii\filters\auth\HttpBearerAuth;
use yii\web\Response;
use yii\rest\ActiveController;
use frontend\models\Water;
use frontend\models\Library;
use frontend\models\User;


class WaterController extends ActiveController
{

    public $modelClass = 'frontend\models\User';

    protected function verbs()
    {
        return [
            'add-water' => ['POST'],
            'get-day-water' => ['GET']
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

    //Add user couple of water (-1 or 1)
    public function actionAddWater()
    {
        $lib = new Library();
        $model = new Water();

        if($model->load(Yii::$app->request->post())){
            $model->user_id = Yii::$app->user->identity->getId();

            if($model->save()){
                return $lib->response(200, 'Successfully added.');
            } else {
                return $lib->response(500, 'Can\'t save.', $model->getErrors());
            }
        } else {
            return $lib->response(400, 'Bad request.');
        }
    }
    
    //Get count couples of water by current day
    public function actionGetDayWater()
    {
        $model = new Water();
        
        return $model->DayWater();
    }

}
