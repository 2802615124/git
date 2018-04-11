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
        'request' => [
            'csrfParam' => '_csrf-frontend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-frontend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the frontend
            'name' => 'advanced-frontend',
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
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        /*
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        */
       // 'urlManager' => [
            //'enablePrettyUrl' => true,  //开启美化url配置,默认关闭
            //'enableStrictParsing' => false, //不启用严格解析，默认不启用.如果设置为true,则必须建立rules规则，且路径必须符合一条以上规则才允许访问
            //'showScriptName' => false, //隐藏index.php
            //'suffix' => '.html',
            //'rules' => [
               // http://frontend.com/site/index 重写为  http://frontend.com/site
              //  '<controller:\w+>/'=>'<controller>/index',
        // http://frontend.com/site/view?id=1 重写为 http://frontend.com/site/1
              //  '<controller:\w+>/<id:\d+>' => '<controller>/view',
        // http://frontend.com/site/ceshi?id=123 重写为  http://frontend.com/site/ceshi/123
              //  '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
           // ]
      //  ],
    ],
    'params' => $params,
];
