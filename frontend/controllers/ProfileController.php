<?php

namespace frontend\controllers;

use frontend\models\ProfilePhoto;
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
            'add-result' => ['POST'],
            'add-result-photo' => ['POST'],
            'get-result' => ['GET'],
            'get-result-photo' => ['GET'],
            'change-password' => ['POST'],
            'reset-password' => ['POST'],
            'change-user-profile' => ['POST']
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

    //Add new result
    public function actionAddResult()
    {
        $lib = new Library();
        $profile = new Profile();

        if(Yii::$app->request->post('Result')){
            return $profile->AddResult(Yii::$app->request->post('Result'));
        } else {
            return $lib->response(400, 'Bad request.');
        }
    }
    
    //Add result photos
    public function actionAddResultPhoto()
    {
        $lib = new Library();
        $profile_photo = new ProfilePhoto();
        
        if(Yii::$app->request->post('profile_id')){
            return $profile_photo->UploadPhotos(Yii::$app->request->post('profile_id'));
        } else {
            return $lib->response(400, 'Bad request.');
        }
    }
    
    //Get all user results
    public function actionGetResult()
    {
        $model = new Profile();
        
        return $model->GetResults();
    }

    //Get all user result photo by profile id
    public function actionGetResultPhoto($result_id)
    {
        $model = new ProfilePhoto();

        return $model->GetResultPhoto($result_id);
    }

    //Change User password
    public function actionChangePassword()
    {
        $lib = new Library();
        $model = new Profile();

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
        $lib = new Library();
        $model = new Profile();

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

    //Change user profile
    public function actionChangeUserProfile()
    {
        $lib = new Library();
        $model = new Profile();
        
        if(Yii::$app->request->post()){
            return $model->ChangeUserProfile(Yii::$app->request->post());
        } else {
            return $lib->response(400, 'Bad parameters.');
        }
    }

}
