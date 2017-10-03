<?php
namespace frontend\models;

use Yii;
use yii\base\Model;


class Profile extends Model
{

    public function rules()
    {
        return [
            ['email', 'filter', 'filter' => 'trim'],
            ['email', 'required'],
            ['email', 'email'],
        ];
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
