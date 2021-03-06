<?php
namespace frontend\controllers;

use frontend\models\User;
use Yii;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use frontend\models\PasswordResetRequestForm;
use frontend\models\ResetPasswordForm;


class SiteController extends Controller
{

    private function _getStatusCodeMessage($status)
    {
        $codes = [
            100 => 'Continue',
            101 => 'Switching Protocols',
            200 => 'OK',
            201 => 'Created',
            202 => 'Accepted',
            203 => 'Non-Authoritative Information',
            204 => 'No Content',
            205 => 'Reset Content',
            206 => 'Partial Content',
            300 => 'Multiple Choices',
            301 => 'Moved Permanently',
            302 => 'Found',
            303 => 'See Other',
            304 => 'Not Modified',
            305 => 'Use Proxy',
            306 => '(Unused)',
            307 => 'Temporary Redirect',
            400 => 'Bad Request',
            401 => 'Unauthorized',
            402 => 'Payment Required',
            403 => 'Forbidden',
            404 => 'Not Found',
            405 => 'Method Not Allowed',
            406 => 'Not Acceptable',
            407 => 'Proxy Authentication Required',
            408 => 'Request Timeout',
            409 => 'Conflict',
            410 => 'Gone',
            411 => 'Length Required',
            412 => 'Precondition Failed',
            413 => 'Request Entity Too Large',
            414 => 'Request-URI Too Long',
            415 => 'Unsupported Media Type',
            416 => 'Requested Range Not Satisfiable',
            417 => 'Expectation Failed',
            500 => 'Internal Server Error',
            501 => 'Not Implemented',
            502 => 'Bad Gateway',
            503 => 'Service Unavailable',
            504 => 'Gateway Timeout',
            505 => 'HTTP Version Not Supported'
        ];

        return isset($codes[$status]) ? $codes[$status] : '';
    }

    public function actionError()
    {
        $exception = Yii::$app->errorHandler->exception;

        if ($exception !== null) {
            return [
                'success' => 0,
                'error_code' => $exception->statusCode,
                'message' => $this->_getStatusCodeMessage($exception->statusCode)
            ];
        }
    }

    public function actionActivateIos($verify_token)
    {
        \Yii::$app->response->format = \yii\web\Response::FORMAT_HTML;

        return $this->redirect('ifitnessapp1488grdk://verify_token='.$verify_token);
    }

    //To do
    public function actionActivateAndroid($verify_token)
    {
        \Yii::$app->response->format = \yii\web\Response::FORMAT_HTML;

        return $this->redirect('android://verify_token='.$verify_token);
    }

    public function actionResetPassword($token)
    {
        try {
            $model = new ResetPasswordForm($token);
        } catch (InvalidParamException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }

        \Yii::$app->response->format = \yii\web\Response::FORMAT_HTML;

        if ($model->load(Yii::$app->request->post()) && $model->validate() && $model->resetPassword()) {
            Yii::$app->session->setFlash('success', 'New password was saved.');
            return $this->redirect('complete');
        }

        return $this->render('resetPassword', [
            'model' => $model,
        ]);
    }

    public function actionComplete()
    {
        \Yii::$app->response->format = \yii\web\Response::FORMAT_HTML;

        return $this->render('complete');
    }
}
