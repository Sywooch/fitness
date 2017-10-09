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
            'instagram-auth' => ['POST'],
            'twitter-auth' => ['POST'],
            'google-auth' => ['POST'],
            'upload-avatar' => ['POST'],
            'logout' => ['POST'],
            'get-user' => ['GET']
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
            'except' => ['login', 'register', 'facebook-auth', 'instagram-auth', 'twitter-auth', 'google-auth'],
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
            return $lib->response(400, 'Bad request.', $login->getErrors());
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
            return $lib->response(400, 'Bad request.', $user->getErrors());
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
            return $lib->response(400, 'Bad request.', ['message' => 'Invalid parameters.']);
        }
    }

    //Login via Instagram
    public function actionInstagramAuth()
    {
        $model = new SocialNetwork();
        $lib = new Library();

        if(Yii::$app->request->post('instagram_token')){
            return $model->InstagramAuth(Yii::$app->request->post('instagram_token'));
        } else {
            return $lib->response(400, 'Bad request.', ['message' => 'Invalid parameters.']);
        }
    }

    //Login via Twitter
    public function actionTwitterAuth()
    {
        $model = new SocialNetwork();
        $lib = new Library();

        if(Yii::$app->request->post('twitter_token')){
            return $model->TwitterAuth(Yii::$app->request->post('twitter_token'));
        } else {
            return $lib->response(400, 'Bad request.', ['message' => 'Invalid parameters.']);
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
            return $lib->response(400, 'Bad request.', ['message' => 'Invalid parameters.']);
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
            $lib->response(400, 'Bad request.');
        }
    }

    //Logout user
    public function actionLogout()
    {
        $lib = new Library();
        $user = Yii::$app->user->identity;

        if(Yii::$app->request->post('logout') && $user){
            $user->auth_key = Yii::$app->security->generateRandomString();
            $user->save(false);
            return $lib->response(200, 'Successfully logged out');
        } else {
            return $lib->response(400, 'Bad request.');
        }
    }

    //Get user data
    public function actionGetUser()
    {
        $lib = new Library();
        $user = Yii::$app->user->identity;

        if(!$user){
            return $lib->response(403, 'Invalid token.');
        } else {
            return [
                'user_id' => $user->id,
                'avatar' => $user->avatar,
                'background' => $user->background_image,
                'name' => $user->username
            ];
        }
    }
    
}
