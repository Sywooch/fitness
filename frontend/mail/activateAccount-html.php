<?php

use yii\helpers\Html;

$activateLink = Yii::$app->urlManager->createAbsoluteUrl(['site/activate', 'verify_token' => $user->auth_key]);
?>

<div class="password-reset">
    <p>Hello <?= Html::encode($user->username) ?>,</p>
    <p>Follow the link below to activate your account:</p>
    <p><a href="<?= $activateLink ?>">Activate account</a></p>
</div>