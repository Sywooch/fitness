<?php

use yii\helpers\Html;

$activateIosLink = Yii::$app->urlManager->createAbsoluteUrl(['site/activate-ios', 'verify_token' => $user->auth_key]);
$activateAndroidLink = Yii::$app->urlManager->createAbsoluteUrl(['site/activate-android', 'verify_token' => $user->auth_key]);
?>

<div class="password-reset">
    <p>Hello <?= Html::encode($user->username) ?>,</p>
    <p>Follow the link below to activate your account:</p>
    <p><a href="<?= $type == 'ios' ? $activateIosLink : $activateAndroidLink ?>">Activate account</a></p>
</div>