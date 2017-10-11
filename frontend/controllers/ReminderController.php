<?php

namespace frontend\controllers;

use frontend\models\Library;
use frontend\models\Reminder;
use Yii;
use yii\filters\auth\HttpBearerAuth;
use yii\web\Response;
use yii\rest\ActiveController;


class ReminderController extends ActiveController
{

    public $modelClass = 'frontend\models\User';

    protected function verbs()
    {
        return [
            'add-reminder' => ['POST'],
            'get-reminder' => ['GET'],
            'change-reminder' => ['POST'],
            'delete-reminder' => ['POST']
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

    //Add new reminder
    public function actionAddReminder()
    {
        $lib = new Library();
        $model = new Reminder();
        
        if($model->load(Yii::$app->request->post()) && $model->validate()){
            return $model->AddReminder($model->load(Yii::$app->request->post()));
        } else {
            return $lib->response(400, 'Bad parameters.');
        }
    }
    
    //Get all user reminders
    public function actionGetReminder()
    {
        $model = new Reminder();
        
        return $model->GetUserReminders();
    }

    //Change reminder by id
    public function actionChangeReminder()
    {
        $lib = new Library();
        $model = new Reminder();

        if(Yii::$app->request->post('reminder_id')){
            return $model->Change(Yii::$app->request->post());
        } else {
            return $lib->response(400, 'Bad parameters.');
        }
    }

    //Delete reminder by id
    public function actionDeleteReminder()
    {
        $lib = new Library();
        $model = new Reminder();
        
        if(Yii::$app->request->post('reminder_id')){
            return $model->DeleteReminder(Yii::$app->request->post('reminder_id'));
        } else {
            return $lib->response(400, 'bad parameters.');
        }
    }

}
