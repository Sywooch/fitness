<?php
namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use yii\web\UploadedFile;


class ProfilePhoto extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'profile_photo';
    }

    public function rules()
    {
        return [
            [['profile_id'], 'required'],
            [['photo'], 'string', 'max' => 255]
        ];
    }

    //Upload all result photos
    public function UploadPhotos($profile_id)
    {
        $lib = new Library();
        $photos = UploadedFile::getInstancesByName("photo");

        if($photos){
            foreach ($photos as $photo){
                $model = new ProfilePhoto();
                $imageName = uniqid();
                $photo->saveAs('result_photos/' . $imageName . '.' . $photo->extension);
                $model->photo = 'result_photos/' . $imageName . '.' . $photo->extension;
                $model->profile_id = $profile_id;
                $model->user_id = Yii::$app->user->identity->getId();
                $model->save(false);
                $result[] = array(
                    'photo' => Yii::$app->params['photo'].$model->photo
                );
            }
            return $lib->response(200, 'Successfully saved.', $result);
        } else {
            return $lib->response(400, 'Bad request.', $this->getErrors());
        }
    }

    //Get all users result photos
    public function GetResultPhoto($result_id)
    {
        $lib = new Library();
        $user = Yii::$app->user->identity;

        if($user){
            $dataProvider = new ActiveDataProvider([
                'query' => ProfilePhoto::find()
                    ->where(['user_id' => $user->getId()])
                    ->andWhere(['profile_id' => $result_id])
                    ->orderBy(['created_at' => SORT_DESC]),
                'pagination' => [
                    'pageSize' => 20
                ]
            ]);
            return $dataProvider;
        } else {
            return $lib->response(403, 'Forbidden', ['error' => 'Invalid token.']);
        }
    }

}
