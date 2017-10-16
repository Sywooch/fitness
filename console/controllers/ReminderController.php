<?php

namespace console\controllers;

use Yii;
use yii\console\Controller;
use frontend\models\Reminder;
use frontend\models\Device;
use frontend\models\Push;

class ReminderController extends Controller
{

    public function actionSendReminderPush()
    {
        $push = new Push();
        $current_time = date('H:i');
        $current_day_number = date('N');

        $reminders = Reminder::find()
            ->where(['push' => 1])
            ->andWhere(['reiterate' => 'everyday'])
            ->orWhere(['reiterate' => $current_day_number, 'push' => 1])
            ->andWhere(['=', 'time', $current_time])
            ->all();

        if($reminders){
            foreach($reminders as $reminder){
                $devices = Device::find()
                    ->where(['user_id' => $reminder->user_id, 'type' => 'ios'])
                    ->andWhere(['<>', 'device_token', 'SIMULATOR'])
                    ->all();

                if($devices){
                    foreach($devices as $device){
                        $tokens []= $device->device_token;
                    }

                    $push->ApnsSendMulti($tokens, $reminder->message);
                }
            }
        }
    }

}