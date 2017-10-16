<?php

namespace console\controllers;

use Yii;
use yii\console\Controller;
use console\models\ConsoleReminder;

class ReminderController extends Controller
{

    public function actionSendReminderPush()
    {
        $console = new ConsoleReminder();

        $reminders = $console->FindReminders();
        $console->SendPush($reminders);
    }

}