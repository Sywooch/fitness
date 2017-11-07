<?php
namespace console\models;

use frontend\models\Device;
use frontend\models\Push;
use frontend\models\Reminder;

class ConsoleReminder extends Reminder
{
    
    public function FindReminders()
    {
        date_default_timezone_set('Europe/Kiev');
        $current_time = date('H:i');
        $current_day_number = date('N');

        $reminders = Reminder::find()
            ->where(['push' => 1])
            ->andWhere(['reiterate' => 'Everyday'])
            ->orWhere(['reiterate' => 'Never', 'push' => 1])
            ->orWhere(['reiterate' => $current_day_number, 'push' => 1])
            ->andWhere(['=', 'time', $current_time])
            ->all();
        
        return $reminders;
    }
    
    public function SendPush($reminders)
    {
        $push = new Push();
        
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

                if($reminder->reiterate == 'Never'){
                    $reminder->delete();
                }
            }
        }
    }
}
