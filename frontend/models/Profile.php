<?php
namespace frontend\models;

use Yii;
use yii\base\Model;


class Profile extends Model
{

    public $photo;

    public function rules()
    {
        return [
            ['email', 'filter', 'filter' => 'trim'],
            ['email', 'required'],
            ['email', 'email'],
        ];
    }

    public function getToken()
    {
        return $this->auth_key = Yii::$app->user->identity->auth_key;
    }

    public function Change($request)
    {
        $profile = Yii::$app->user->identity;

        $profile->username = $request['Profile']['name'];
        $this->username = $request['Profile']['name'];
        $profile->email = $this->email;
        $profile->phone = $this->phone;
        $profile->country = $this->country;
        $profile->city = $this->city;

        return $profile->save() ? $profile : null;
    }

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
