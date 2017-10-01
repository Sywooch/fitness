<?php

namespace frontend\controllers;

use Yii;
use yii\filters\auth\HttpBearerAuth;
use yii\web\Response;
use yii\rest\ActiveController;
use frontend\models\Library;
use frontend\models\Login;
use frontend\models\User;
use frontend\models\SocialNetwork;
use yii\web\UploadedFile;


class UserController extends ActiveController
{

    public $modelClass = 'frontend\models\User';

    protected function verbs()
    {
        return [
            'login' => ['POST'],
            'register' => ['POST'],
            'facebook-auth' => ['POST'],
            'google-auth' => ['POST'],
            'upload-avatar' => ['POST']
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
            'except' => ['login', 'register', 'facebook-auth', 'google-auth'],
        ];
        return $behaviors;
    }

    //Login via App
    public function actionLogin()
    {
        $login = new Login();
        $lib = new Library();

        if($login->load(Yii::$app->request->post()) && $login->validate() && $login->login(Yii::$app->request->post('Login'))){
            return [
                'status' => 200,
                'message' => 'User has been authorized.',
                'token' => $login->auth_key,
                'user' => [
                    'avatar' => $login->avatar,
                    'name' => $login->username,
                    'email' => $login->email,
                ]
            ];
        } else {
            return $lib->response(400, 'Bad request', $login->getErrors());
        }
    }

    //Basic register
    public function actionRegister()
    {
        $user = new User();
        $lib = new Library();

        if($user->load(Yii::$app->request->post()) && $user->validate() && $user->register(Yii::$app->request->post('User'))){
            return [
                'status' => 200,
                'message' => 'User has been registered.',
                'token' => $user->auth_key,
                'user' => [
                    'avatar' => $user->avatar,
                    'name' => $user->username,
                    'email' => $user->email,
                ]
            ];
        } else {
            return $lib->response(400, 'Bad request', $user->getErrors());
        }
    }

    //Login via Facebook
    public function actionFacebookAuth()
    {
        $model = new SocialNetwork();
        $lib = new Library();

        if(Yii::$app->request->post('facebook_token')){
            return $model->FacebookAuth(Yii::$app->request->post('facebook_token'));
        } else {
            return $lib->response(400, 'Bad request', ['message' => 'Invalid parameters.']);
        }
    }

    //Login via Google
    public function actionGoogleAuth()
    {
        $model = new SocialNetwork();
        $lib = new Library();

        if(Yii::$app->request->post('google_token')){
            return $model->GoogleAuth(Yii::$app->request->post('google_token'));
        } else {
            return $lib->response(400, 'Bad request', ['message' => 'Invalid parameters.']);
        }
    }

    //Avatar upload
    public function actionUploadAvatar()
    {
        $lib = new Library();
        $user = Yii::$app->user->identity;
        $photo = UploadedFile::getInstanceByName("photo");
        $imageName = uniqid();

        if($photo){
            if($user->avatar) {
                $lib->CheckUpdateAvatar($user->avatar);
            }
            $photo->saveAs('avatars/' . $imageName . '.' . $photo->extension);
            $user->avatar = 'avatars/' . $imageName . '.' . $photo->extension;
            $user->save(false);

            return [
                'status' => 200,
                'message' => 'Image successfully uploaded.',
                'photo' => Yii::$app->params['photo'].$user->avatar
            ];
        } else {
            $lib->response(400, 'Bad request');
        }
    }
    
}
