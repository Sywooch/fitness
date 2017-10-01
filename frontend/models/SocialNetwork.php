<?php
namespace frontend\models;

use yii\base\Model;


class SocialNetwork extends Model
{

    public $email;
    public $avatar;
    public $username;
    public $auth_key;
    
    //Login via Facebook
    public function FacebookAuth($facebook_token)
    {
        $url = 'https://graph.facebook.com/me?fields=id,name,email,picture.type(large)&access_token='.$facebook_token;

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
        
    }

    //Login via Google
    public function GoogleAuth($google_token)
    {
        $url = 'https://www.googleapis.com/oauth2/v1/userinfo?access_token='.$google_token;

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

        
    }



}
