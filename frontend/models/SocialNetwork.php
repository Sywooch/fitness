<?php
namespace frontend\models;

use yii\base\Model;
use frontend\models\User;


class SocialNetwork extends User
{

    public $email;
    public $avatar;
    public $username;
    public $auth_key;
    
    //Login via Facebook
    public function FacebookAuth($request)
    {
        $user = new User();
        $lib = new Library();
        $device = new Device();
        $url = 'https://graph.facebook.com/me?fields=id,name,email,picture.type(large)&access_token='.$request['facebook_token'];

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_REFERER, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        $result = curl_exec($ch);
        curl_close($ch);
        $result = json_decode($result);

        if(isset($result->error)){
            return $lib->response(204, 'No content', ['error' => 'Invalid token.']);
        }

        $token = Device::findOne(['device_token' => $request['device_token']]);

        if($exist = $user->findByEmail($result->email)){

            if(!$token){
                $device->user_id = $exist->id;
                $device->device_token = $request['device_token'];
                $device->type = $request['type'];
                $device->save();
            }

            return [
                'status' => 200,
                'message' => 'User has been authorized.',
                'token' => $exist->auth_key,
                'user' => [
                    'user_id' => $exist->id,
                    'avatar' => $exist->avatar,
                    'name' => $exist->username,
                    'email' => $exist->email,
                    'user_registered' => 1
                ]
            ];
        } else {
            $user->username = $result->name;
            $user->email = $result->email;

            if(isset($result->picture->data->url)){
                $user->avatar = $result->picture->data->url;
            } else {
                $user->avatar = 'Not set';
            }

            $user->setPassword($result->id);
            $user->generateAuthKey();

            if($user->save()){

                if(!$token){
                    $device->user_id = $user->id;
                    $device->device_token = $request['device_token'];
                    $device->type = $request['type'];
                    $device->save();
                }

                return [
                    'status' => 200,
                    'message' => 'User has been authorized.',
                    'token' => $user->auth_key,
                    'user' => [
                        'user_id' => $user->id,
                        'avatar' => $user->avatar,
                        'name' => $user->username,
                        'email' => $user->email,
                        'user_registered' => 0
                    ]
                ];
            } else {
                return $lib->response(500, 'Something wrong', $this->getErrors());
            }
        }

    }

    //Login via Twitter
    public function TwitterAuth($twitter_token)
    {
        $user = new User();
        $lib = new Library();
        $url = 'https://api.twitter.com/1.1/users/show.json?user_id=2433822884';

        $br = curl_init($url);
        curl_setopt($br, CURLOPT_HTTPHEADER, array('Authorization: Bearer '.$twitter_token));
        curl_setopt($br, CURLOPT_RETURNTRANSFER, true);
        $data = curl_exec($br);
        curl_close($br);
        var_dump($data);die;
    }

    //Login via Google
    public function GoogleAuth($request)
    {
        $user = new User();
        $lib = new Library();
        $device = new Device();
        $url = 'https://www.googleapis.com/oauth2/v1/userinfo?access_token='.$request['google_token'];

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_REFERER, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        $result = curl_exec($ch);
        curl_close($ch);
        $result = json_decode($result);

        if(isset($result->error)){
            return $lib->response(204, 'No content', ['error' => 'Invalid token.']);
        }

        $token = Device::findOne(['device_token' => $request['device_token']]);


        if($exist = $user->findByEmail($result->email)){

            if(!$token){
                $device->user_id = $exist->id;
                $device->device_token = $request['device_token'];
                $device->type = $request['type'];
                $device->save();
            }

            return [
                'status' => 200,
                'message' => 'User has been authorized.',
                'token' => $exist->auth_key,
                'user' => [
                    'user_id' => $exist->id,
                    'avatar' => $exist->avatar,
                    'name' => $exist->username,
                    'email' => $exist->email,
                    'user_registered' => 1
                ]
            ];
        } else {
            $user->username = $result->name;
            $user->email = $result->email;

            if(isset($result->picture)){
                $user->avatar = $result->picture;
            } else {
                $user->avatar = 'Not set';
            }

            $user->setPassword($result->id);
            $user->generateAuthKey();

            if($user->save()){

                if(!$token){
                    $device->user_id = $user->id;
                    $device->device_token = $request['device_token'];
                    $device->type = $request['type'];
                    $device->save();
                }

                return [
                    'status' => 200,
                    'message' => 'User has been authorized.',
                    'token' => $user->auth_key,
                    'user' => [
                        'user_id' => $user->id,
                        'avatar' => $user->avatar,
                        'name' => $user->username,
                        'email' => $user->email,
                        'user_registered' => 0
                    ]
                ];
            } else {
                return $lib->response(500, 'Something wrong', $this->getErrors());
            }
        }

    }

}
