<?php
namespace frontend\models;

use Yii;
use yii\base\Model;
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
                    'birthday', 'country', 'gender', 'current_weight', 'height', 'desired_weight', 'bust', 'waist',
                    'hips', 'thigh', 'forearm', 'chest'
                ],
                'required'
            ],

            [['background_image'], 'string', 'max' => 255],

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
            $this->birthday = $request['birthday'];
            $this->country = $request['country'];
            $this->gender = $request['gender'];
            $this->current_weight = $request['current_weight'];
            $this->height = $request['height'];
            $this->desired_weight = $request['desired_weight'];
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
                $this->background_image = 'background_images/' . $imageName . '.' . $upload_background_image->extension;
            } else {
                $this->background_image = 'Not set';
            }

            if($upload_avatar) {
                $upload_avatar->saveAs('avatars/' . $avatarName . '.' . $upload_avatar->extension);
                $user->avatar = 'avatars/' . $avatarName . '.' . $upload_avatar->extension;
                $user->save(false);
            } else {
                $user->avatar = 'Not set';
            }

            if(!$this->save()){
                return $lib->response(400, 'Bad request.', $this->getErrors());
            }

            return $lib->response(200, 'Successfully created.', [
                'token' => $user->auth_key,
                'user_id' => $user->id,
                'name' => $user->username,
                'avatar' => Yii::$app->params['photo'].$user->avatar,
                'email' => $user->email,
                'profile' => [
                    'birthday' => $this->birthday,
                    'country' => $this->country,
                    'gender' => $this->gender,
                    'current_weight' => $this->current_weight,
                    'height' => $this->height,
                    'desired_weight' => $this->desired_weight,
                    'bust' => $this->bust,
                    'waist' => $this->waist,
                    'hips' => $this->hips,
                    'thigh' => $this->thigh,
                    'forearm' => $this->forearm,
                    'chest' => $this->chest,
                    'background_image' => Yii::$app->params['photo'].$this->background_image
                ]
            ]);

        } else {
            return $lib->response(400, 'Bad request.', $this->getErrors());
        }
    }

    //Change profile data
    public function ProfileChange($request)
    {
        $lib = new Library();
        $profile = Yii::$app->user->identity;

        $profile->username = $request['name'];
        $profile->email = $request['email'];

        return $profile->save() ?
            [
                'avatar' => $profile->avatar,
                'name' => $profile->username,
                'email' => $profile->email
            ]
            : $lib->response(400, 'Bad request.', $profile->getErrors());
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
