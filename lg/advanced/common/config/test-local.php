<?php
return yii\helpers\ArrayHelper::merge(
    require(__DIR__ . '/main.php'),
    require(__DIR__ . '/main-local.php'),
    require(__DIR__ . '/test.php'),
    [
        'components' => [
            'db' => [
                'dsn' => 'dsn' => 'mysql:host=39.106.121.15;dbname=lagou',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
            ]
        ],
    ]
);
