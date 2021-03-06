<?php

namespace frontend\models;

use Yii;
use yii2tech\ar\softdelete\SoftDeleteBehavior;

class User extends \yii\db\ActiveRecord implements \yii\web\IdentityInterface
{
    const STATUS_DELETED = 1;
    const STATUS_ACTIVE = 0;
    const STATUS_VERIFIED = 2;

    public $_user;
    public $photo;

    public static function tableName()
    {
        return 'user';
    }

    public function behaviors()
    {
        return [
            'softDeleteBehavior' => [
                'class' => SoftDeleteBehavior::className(),
                'softDeleteAttributeValues' => [
                    'status' => true
                ],
            ],
        ];
    }
    
    public function rules()
    {
        return [
            ['status', 'default', 'value' => self::STATUS_VERIFIED],
            ['status', 'in', 'range' => [self::STATUS_ACTIVE, self::STATUS_DELETED, self::STATUS_VERIFIED]],

            [['gender', 'desired_weight', 'lifestyle', 'target', 'system_measures'], 'integer'],
            [['height'], 'number'],

            [['created_at', 'country', 'birthday'], 'string'],
            [['avatar', 'background_image'], 'string', 'max' => 255],
            [['photo'], 'file'],

            ['email', 'filter', 'filter' => 'trim'],
            ['email', 'required'],
            ['email', 'email'],
            ['email', 'unique', 'message' => 'This email address has already been taken'],
            
        ];
    }

    //Basic SignUp
    public function register($request)
    {
        $device = new Device();
        
        $this->username = $request['name'];
        $this->email = $request['email'];
        $this->setPassword($request['password']);
        $this->avatar = 'Not set';
        $this->generateAuthKey();

        if($this->save()){

            $device->user_id = $this->id;
            $device->device_token = $request['device_token'];
            $device->type = $request['type'];
            $device->save();
            
            Yii::$app
                ->mailer
                ->compose(
                    ['html' => 'activateAccount-html'],
                    ['user' => $this, 'type' => $device->type]
                )
                ->setFrom([Yii::$app->params['fromEmail'] => Yii::$app->params['APP']])
                ->setTo($this->email)
                ->setSubject('Activate account')
                ->send();

            return true;
        } else {
            return false;
        }

    }


    public static function findIdentity($id)
    {
        return static::findOne(['id' => $id, 'status' => self::STATUS_ACTIVE]);
    }

    public static function findIdentityByAccessToken($token, $type = null)
    {
        return static::findOne(['auth_key' => $token]);
    }

    public static function findByUsername($username)
    {
        return static::findOne(['username' => $username, 'status' => self::STATUS_ACTIVE]);
    }

    public static function findByEmail($email)
    {
        return static::findOne(['email' => $email, 'status' => [self::STATUS_ACTIVE, self::STATUS_VERIFIED]]);
    }

    public static function findByPasswordResetToken($token)
    {
        if (!static::isPasswordResetTokenValid($token)) {
            return null;
        }

        return static::findOne([
            'password_reset_token' => $token,
            'status' => self::STATUS_ACTIVE,
        ]);
    }

    public static function isPasswordResetTokenValid($token)
    {
        if (empty($token)) {
            return false;
        }

        $timestamp = (int) substr($token, strrpos($token, '_') + 1);
        $expire = Yii::$app->params['user.passwordResetTokenExpire'];
        return $timestamp + $expire >= time();
    }

    public function getId()
    {
        return $this->getPrimaryKey();
    }

    public function getAuthKey()
    {
        return $this->auth_key;
    }

    public function validateAuthKey($authKey)
    {
        return $this->getAuthKey() === $authKey;
    }

    public function validatePassword($password)
    {
        return Yii::$app->security->validatePassword($password, $this->password_hash);
    }

    public function setPassword($password)
    {
        $this->password_hash = Yii::$app->security->generatePasswordHash($password);
    }

    public function generateAuthKey()
    {
        $this->auth_key = Yii::$app->security->generateRandomString();
    }

    public function regenerateAuthKey($user_id)
    {
        $user = self::findOne(['id'=>$user_id]);
        $user->auth_key = Yii::$app->security->generateRandomString();
        if($user->save()){
            return true;
        } else {
            return false;
        }
    }

    public function generatePasswordResetToken()
    {
        $this->password_reset_token = Yii::$app->security->generateRandomString() . '_' . time();
    }

    public function removePasswordResetToken()
    {
        $this->password_reset_token = null;
    }

    //Get token from new user
    public function getUserAuth()
    {
        if ($this->_user === null) {
            $this->_user = User::findByEmail($this->email);
        }

        return $this->_user->auth_key;
    }

}
