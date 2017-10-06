<?php
namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use yii\web\UploadedFile;


class Profile extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'profile';
    }

    public function rules()
    {
        return [
//            ['email', 'filter', 'filter' => 'trim'],
//            ['email', 'required'],
//            ['email', 'email'],
            [
                [
                    'current_weight', 'bust', 'waist',
                    'hips', 'thigh', 'forearm', 'chest'
                ],
                'required'
            ],

            [['user_id'], 'integer']

        ];
    }

    //Create User profile
    public function CreateProfile($request)
    {
        $lib = new Library();
        $user = Yii::$app->user->identity;

        if($request){
            $this->user_id = Yii::$app->user->identity->getId();
            $user->birthday = $request['birthday'];
            $user->country = $request['country'];
            $user->gender = $request['gender'];
            $this->current_weight = $request['current_weight'];
            $user->height = $request['height'];
            $user->desired_weight = $request['desired_weight'];
            $this->bust = $request['bust'];
            $this->waist = $request['waist'];
            $this->hips = $request['hips'];
            $this->thigh = $request['thigh'];
            $this->forearm = $request['forearm'];
            $this->chest = $request['chest'];

            $upload_background_image = UploadedFile::getInstanceByName("background_image");
            $upload_avatar = UploadedFile::getInstanceByName("avatar");
            
            $imageName = uniqid();
            $avatarName = uniqid();

            if($upload_background_image) {
                $upload_background_image->saveAs('background_images/' . $imageName . '.' . $upload_background_image->extension);
                $user->background_image = 'background_images/' . $imageName . '.' . $upload_background_image->extension;
                $user->save(false);
            } else {
                $user->background_image = 'Not set';
                $user->save(false);
            }

            if($upload_avatar) {
                $upload_avatar->saveAs('avatars/' . $avatarName . '.' . $upload_avatar->extension);
                $user->avatar = 'avatars/' . $avatarName . '.' . $upload_avatar->extension;
                $user->save(false);
            } else {
                $user->avatar = 'Not set';
                $user->save(false);
            }

            if(!$this->save()){
                return $lib->response(400, 'Bad request.', $this->getErrors());
            }

            return $lib->response(200, 'Successfully created.', [
                'token' => $user->auth_key,
                'user_id' => $user->id,
                'name' => $user->username,
                'avatar' => $user->avatar == 'Not set' ? 'Not set' : Yii::$app->params['photo'].$user->avatar,
                'email' => $user->email,
                'profile' => [
                    'birthday' => $user->birthday,
                    'country' => $user->country,
                    'gender' => $user->gender,
                    'current_weight' => $this->current_weight,
                    'height' => $user->height,
                    'desired_weight' => $user->desired_weight,
                    'bust' => $this->bust,
                    'waist' => $this->waist,
                    'hips' => $this->hips,
                    'thigh' => $this->thigh,
                    'forearm' => $this->forearm,
                    'chest' => $this->chest,
                    'background_image' => $user->background_image == 'Not set' ? 'Not set' : Yii::$app->params['photo'].$user->background_image
                ]
            ]);

        } else {
            return $lib->response(400, 'Bad request.', $this->getErrors());
        }
    }

    //Add new result
    public function AddResult($request)
    {
        $lib = new Library();
        $user = Yii::$app->user->identity;
        
        $this->current_weight = $request['current_weight'];
        $this->bust = $request['bust'];
        $this->waist = $request['waist'];
        $this->hips = $request['hips'];
        $this->thigh = $request['thigh'];
        $this->forearm = $request['forearm'];
        $this->chest = $request['chest'];
        $this->user_id = $user->getId();

        if($this->save()){
            return $lib->response(200, 'Successfully added.', $this);
        } else {
            return $lib->response(400, 'Bad request.', $this->getErrors());
        }
        
    }

    //Get all user results
    public function GetResults()
    {
        $lib = new Library();
        $user = Yii::$app->user->identity;

        if($user){
            $dataProvider = new ActiveDataProvider([
                'query' => Profile::find()->where(['user_id' => $user->getId()]),
                'pagination' => [
                    'pageSize' => 10
                ]
            ]);

            return $dataProvider;
        } else {
            return $lib->response(403, 'Forbidden.', ['error' => 'Invalid token.']);
        }
    }

    //Change/Reset password
    public function sendEmail($user)
    {
        if (!$user) {
            return false;
        }

        if (!User::isPasswordResetTokenValid($user->password_reset_token)) {
            $user->generatePasswordResetToken();
            if (!$user->save()) {
                return false;
            }
        }

        return Yii::$app
            ->mailer
            ->compose(
                ['html' => 'passwordResetToken-html', 'text' => 'passwordResetToken-text'],
                ['user' => $user]
            )
            ->setFrom([Yii::$app->params['fromEmail'] => Yii::$app->params['APP']])
            ->setTo($user->email)
            ->setSubject('Password reset')
            ->send();
    }

}
