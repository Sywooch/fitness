<?php
namespace frontend\models;

use Yii;
use yii\base\Model;


class Login extends Model
{
    public $email;
    public $password;
    public $auth_key;
    public $username;
    public $avatar;

    private $_user;

    public function rules()
    {
        return [
            [['email', 'password'], 'required'],
            ['password', 'validatePassword'],
        ];
    }

    public function login($request)
    {
        $user = new User();
        $auth_user = $user->findByEmail($request['email']);

        if($auth_user){
            $this->auth_key = $auth_user->auth_key;
            $this->username = $auth_user->username;
            if($auth_user->avatar) {
                if(!preg_match('/^(http|https):\\/\\/[a-z0-9_]+([\\-\\.]{1}[a-z_0-9]+)*\\.[_a-z]{2,5}'.'((:[0-9]{1,5})?\\/.*)?$/i', $auth_user->avatar) && file_exists(getcwd().'/'.$auth_user->avatar)){
                    $this->avatar = Yii::$app->params['photo'].$auth_user->avatar;;
                }
            }
            return true;
        } else {
            return false;
        }
    }

    public function validatePassword($attribute, $params)
    {
        if (!$this->hasErrors()) {
            $user = $this->getUser();
            if (!$user || !$user->validatePassword($this->password) || $user->id == 1) {
                $this->addError($attribute, 'Incorrect username or password.');
            }
        }
    }

    protected function getUser()
    {
        if ($this->_user === null) {
            $this->_user = User::findByEmail($this->email);
        }

        return $this->_user;
    }
}
