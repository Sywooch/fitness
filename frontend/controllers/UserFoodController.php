<?php

namespace frontend\controllers;

use Yii;
use yii\filters\auth\HttpBearerAuth;
use yii\web\Response;
use yii\rest\ActiveController;
use frontend\models\UserFood;
use frontend\models\Library;
use frontend\models\User;


class UserFoodController extends ActiveController
{

    public $modelClass = 'frontend\models\User';

    protected function verbs()
    {
        return [
            'add-food' => ['POST'],
            'day-food' => ['GET'],
            'food-by-date' => ['GET']
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
    
    //Add user food
    public function actionAddFood()
    {
        $lib = new Library();
        $model = new UserFood();

        if($model->load(Yii::$app->request->post())){
            $model->user_id = Yii::$app->user->identity->getId();

            if($model->save()){
                return $lib->response(200, 'Successfully added.');
            } else {
                return $lib->response(409, 'Can\'t save food.', $model->getErrors());
            }
        } else {
            return $lib->response(400, 'Bad parameters.');
        }
    }
    
    //Get all user food by current day
    public function actionDayFood()
    {
        $model = new UserFood();
        
        return $model->DayFood();
    }

    //Get all user food by date
    public function actionFoodByDate($date)
    {
        $model = new UserFood();

        return $model->DateFood($date);
    }

}
