<?php
namespace frontend\models;

use Yii;
use yii\data\ActiveDataProvider;


class Reminder extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'reminder';
    }

    public function rules()
    {
        return [
            [['push', 'message', 'time', 'reiterate'], 'required'],
            [['user_id'], 'integer']
        ];
    }

    //Add new reminder
    public function AddReminder($request)
    {
        $lib = new Library();
        $this->user_id = Yii::$app->user->identity->getId();

        if($this->save()) {
            return $lib->response(200, 'New reminder successfully added.', $this);
        } else {
            return $lib->response(400, 'Can\'t add new reminder', $this->getErrors());
        }
    }

    //Get all user reminders
    public function GetUserReminders()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => static::find()->where(['user_id' => Yii::$app->user->identity->getId()]),
            'pagination' => false
        ]);

        return $dataProvider;
    }

    //On/Off reminder
    public function Change($request)
    {
        $lib = new Library();
        $reminder = static::findOne(['id' => $request['reminder_id']]);

        if($reminder){
            $reminder->push = $request['push'];
            $reminder->save(false);

            return $lib->response(200, 'Reminder successfully changed.', $reminder);
        } else {
            return $lib->response(404, 'Reminder not found.');
        }
    }

    //Delete reminder
    public function DeleteReminder($reminder_id)
    {
        $lib = new Library();
        $reminder = static::findOne(['id' => $reminder_id]);

        if($reminder){
            $reminder->delete();

            return $lib->response(200, 'Reminder successfully deleted.');
        } else {
            return $lib->response(404, 'Reminder not found.');
        }
    }

}
