<?php
namespace frontend\models;

use Yii;
use yii\base\Model;


class Push extends Model
{

    private $apns;

    public function __construct()
    {
        parent::__construct();
        $this->apns = Yii::$app->apns;
    }

    //Send single Push
    public function ApnsSend($token, $message, $params = [])
    {
        $this->apns->send($token, $message, $params, [
            'sound' => 'default',
            'badge' => 1
        ]);
    }

    //Send several Push
    public function ApnsSendMulti(array $tokens, $message, $params = [])
    {
        $this->apns->sendMulti($tokens, $message, $params, [
            'sound' => 'default',
            'badge' => 1
        ]);
    }

}
