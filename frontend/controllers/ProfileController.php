<?php

namespace frontend\controllers;

use Yii;
use yii\filters\auth\HttpBearerAuth;
use yii\web\Response;
use yii\rest\ActiveController;
use frontend\models\Profile;
use frontend\models\Library;
use frontend\models\User;


class ProfileController extends ActiveController
{

    public $modelClass = 'frontend\models\User';

    protected function verbs()
    {
        return [
            'create-profile' => ['POST'],
            'change-profile' => ['POST'],
            'change-password' => ['POST'],
            'reset-password' => ['POST']
        ];
    }

    public function actions(){
        $actions = parent::actions();
        unset($actions['index']);
        return $actions;
    }

    public function behaviors() {

        $behaviors = parent::behaviors();

        $behaviors['contentNegotiator']['formats']['text/html'] = Response::FORMAT_JSON;
        $behaviors['authenticator'] = [
            'class' => HttpBearerAuth::className(),
            'except' => ['reset-password']
        ];
        return $behaviors;
    }
    
    //Create User profile
    public function actionCreateProfile()
    {
        $lib = new Library();
        $model = new Profile();
        
        if(Yii::$app->request->post()){
            return $model->CreateProfile(Yii::$app->request->post());
        } else {
            return $lib->response(400, 'Bad request.');
        }
    }

    //Change User profile data
    public function actionChangeProfile()
    {
        $lib = new Library();
        $profile = new Profile();

        if(Yii::$app->request->post('Profile')){
            return $profile->ProfileChange(Yii::$app->request->post('Profile'));
        } else {
            return $lib->response(400, 'Bad request.');
        }
    }

    //Change User password
    public function actionChangePassword()
    {
        $model = new Profile();
        $lib = new Library();

        if(Yii::$app->request->post('new_password')){
            if($model->sendEmail(Yii::$app->user->identity))
            {
                return $lib->response(200, 'Mail has been sent.');
            } else {
                return $lib->response(500, 'Can\'t sent mail.');
            }
        } else {
            return $lib->response(400, 'Bad request.');
        }
    }
    
    //Reset User password
    public function actionResetPassword()
    {
        $model = new Profile();
        $lib = new Library();

        if(Yii::$app->request->post('email')){

            $user = User::findOne(['email' => Yii::$app->request->post('email')]);

            if($user){
                if($model->sendEmail($user)){
                    return $lib->response(200, 'Mail has been sent.');
                } else {
                    return $lib->response(500, 'Can\'t sent mail.');
                }
            } else {
                return $lib->response(403, 'Forbidden', ['error' => 'User email not found.']);
            }

        } else {
            return $lib->response(400, 'Bad request.');
        }
    }

}
