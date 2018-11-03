<?php

$params = require(__DIR__ . '/params.php');
$db = require(__DIR__ . '/db.php');
/*$db = require(__DIR__ . '/db2.php');*/

$config = [
//Kartik Export Excel, CSV
'modules' => [
'gridview' => [
'class' => '\kartik\grid\Module',]
// enter optional module parameters below - only if you need to
// use your own export download action or custom translation
// message source
// 'downloadAction' => 'gridview/export/download',
// 'i18n' => []
],
    'id' => 'basic',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    /*Adminlte
    'layout'=>'column2',
    'layoutPath'=>'@app/themes/adminLTE/layouts',
     Adminlte*/
    'language' =>'es', 
    'components' => [
    /*Adminlte
     'view' => [
            'theme' => [
                'pathMap' => ['@app/views' => '@app/themes/adminLTE'],
                'baseUrl' => '@web/../themes/adminLTE',
            ],
        ],
        'urlManager' => [
            'class' => 'yii\web\UrlManager',
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                ''=>'site/index',
                '<action:(index|login|logout)>'=>'site/<action>',
                '<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => '<controller>/<action>'
            ],
        ],
        Adminlte*/
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'RiYgxjX16JYaCSXYbwGY3Yhe1J8p-HLy',
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'identityClass' => 'app\models\User',
            'enableAutoLogin' => true,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => false,
            'transport' => [
                'class' => 'Swift_SmtpTransport',
                'host' => 'smtp.gmail.com',
                'username' => 'softoperacional@gmail.com',
                'password' => '1097402169',
                'port' => '587',
                'encryption' => 'tls', 
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
        'db' => require(__DIR__ . '/db.php'),
        /*'db' => require(__DIR__ . '/db2.php'),*/
        /*
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        */
    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
    /*Adminlte*/
        'class' => 'yii\gii\Module',
        /*
            'generators' => [ //here
                'crud' => [ // generator name
                    'class' => 'yii\gii\generators\crud\Generator', // generator class
                    'templates' => [ //setting for out templates
                        'custom' => '@vendor/bmsrox/yii-adminlte-crud-template', // template name => path to template
                    ]
                ]
            ],
            Adminlte*/
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
}

return $config;
