<?php

namespace frontend\controllers;

use frontend\models\Exercise;
use Yii;
use yii\filters\auth\HttpBearerAuth;
use yii\web\Response;
use yii\rest\ActiveController;
use frontend\models\Library;
use frontend\models\User;


class ExerciseController extends ActiveController
{

    public $modelClass = 'frontend\models\User';

    protected function verbs()
    {
        return [
            'add-exercise' => ['POST'],
            'get-day-exercises' => ['GET'],
            'exercises-by-date' => ['GET']
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

    //Add new user exercise
    public function actionAddExercise()
    {
        $lib = new Library();
        $model = new Exercise();

        if($model->load(Yii::$app->request->post())){
            $model->user_id = Yii::$app->user->identity->getId();
            if($model->save()){
                return $lib->response(200, 'Successfully added.', $model);
            } else {
                return $lib->response(409, 'Can\'t save exercise.', $model->getErrors());
            }
        } else {
            return $lib->response(400, 'Bad request.');
        }
    }

    //Get all exercises for the current day
    public function actionGetDayExercises()
    {
        $model = new Exercise();
        
        return $model->DayExercises();
    }

    //Get all exercises by date
    public function actionExercisesByDate($date)
    {
        $model = new Exercise();

        return $model->ExercisesByDate($date);
    }

}
