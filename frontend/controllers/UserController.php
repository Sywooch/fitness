<?php

namespace frontend\controllers;

use frontend\models\Login;
use Yii;
use yii\filters\auth\HttpBearerAuth;
use yii\web\Response;
use yii\rest\ActiveController;
use frontend\models\Answer;
use frontend\models\User;
use yii\web\UploadedFile;


class UserController extends ActiveController
{

    public $modelClass = 'frontend\models\User';

    protected function verbs()
    {
        return [
            'login' => ['POST'],
            'register' => ['POST'],
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
            'except' => ['login', 'register'],
        ];
        return $behaviors;
    }

    //Login via App
    public function actionLogin()
    {
        $login = new Login();
        $error = new Answer();

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
            return $error->response(400, 'Bad request', $login->getErrors());
        }
    }

    //Basic register
    public function actionRegister()
    {
        $user = new User();
        $error = new Answer();

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
            return $error->response(400, 'Bad request', $user->getErrors());
        }
    }

    //Avatar upload
    public function actionUploadAvatar()
    {
        $user = Yii::$app->user->identity;
        $photo = UploadedFile::getInstanceByName("photo");
        $imageName = uniqid();
        $error = new Answer();

        if($photo){
            if($user->avatar) {
                if(!preg_match('/^(http|https):\\/\\/[a-z0-9_]+([\\-\\.]{1}[a-z_0-9]+)*\\.[_a-z]{2,5}'.'((:[0-9]{1,5})?\\/.*)?$/i', $user->avatar) && file_exists(getcwd().'/'.$user->avatar)){
                    unlink(getcwd().'/'.$user->avatar);
                }
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
            $error->response(400, 'Bad request');
        }
    }
    
}
