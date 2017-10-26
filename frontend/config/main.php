<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-frontend',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'controllerNamespace' => 'frontend\controllers',
    'components' => [
        'apns' => [
            'class' => 'bryglen\apnsgcm\Apns',
            'environment' => \bryglen\apnsgcm\Apns::ENVIRONMENT_SANDBOX,
            'pemFile' => dirname(__FILE__).'/apnssert/iFitness.pem',
            // 'retryTimes' => 3,
            'options' => [
                'sendRetryTimes' => 5
            ]
        ],
        'request' => [
            'baseUrl'=> '',
            'enableCookieValidation' => false,
            'enableCsrfCookie' => false,
            'enableCsrfValidation' => false,
            'parsers' => [
                'application/json' => 'yii\web\JsonParser',
            ]
        ],
        'response' => [
            'format' => yii\web\Response::FORMAT_JSON,
            'charset' => 'UTF-8',
            'on beforeSend' => function ($event) {
                header("Access-Control-Allow-Origin: *");
            }
        ],
        'user' => [
            'identityClass' => 'frontend\models\User',
            'enableSession' => false,
            'loginUrl' => null
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@app/mail',
            'transport' => [
                'class' => 'Swift_SmtpTransport',
                'host' => 'smtp.gmail.com',
                'username' => 'crm.urich@gmail.com',
                'password' => '1995202009vasya',
                'port' => '587',
                'encryption' => 'tls',
            ],
            'useFileTransport' => false,
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => ['user'],
                    'pluralize'=>false
                ],

                'api/login' => '/user/login',
                'api/register' => '/user/register',
                'api/facebook-auth' => '/user/facebook-auth',
                'api/twitter-auth' => '/user/twitter-auth',
                'api/google-auth' => '/user/google-auth',
                'api/logout' => '/user/logout',
                'api/upload-avatar' => '/user/upload-avatar',
                'api/get-user' => '/user/get-user',
                'api/create-profile' => '/profile/create-profile',
                'api/change-profile' => '/profile/change-user-profile',
                'api/add-result' => '/profile/add-result',
                'api/add-result-photo' => '/profile/add-result-photo',
                'api/get-result' => '/profile/get-result',
                'api/get-result-photo' => '/profile/get-result-photo',
                'api/change-password' => '/profile/change-password',
                'api/reset-password' => '/profile/reset-password',
                'api/add-reminder' => '/reminder/add-reminder',
                'api/get-reminder' => '/reminder/get-reminder',
                'api/change-reminder' => '/reminder/change-reminder',
                'api/delete-reminder' => '/reminder/delete-reminder',
                'api/food-category' => '/category/food-category',
                'api/activity-category' => '/category/activity-category',
                'api/activity-by-category' => '/activity/get-activity-by-category',
                'api/activity-by-id' => '/activity/get-activity-by-id',
                'api/food-by-category' => '/food/get-food-by-category',
                'api/food-by-id' => '/food/get-food-by-id',
                'api/recommend-food' => '/food/recommend-food',
                'api/news' => '/news/all-news',
                'api/add-exercise' => '/exercise/add-exercise',
                'api/get-day-exercises' => '/exercise/get-day-exercises',
                'api/exercises-by-date' => '/exercise/exercises-by-date',
                'api/add-water' => '/water/add-water',
                'api/get-day-water' => '/water/get-day-water',
                'api/water-by-date' => '/water/water-by-date'
                
            ],
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
    ],
    'params' => $params,
];
