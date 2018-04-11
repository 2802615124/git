<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property integer $user_id
 * @property string $username
 * @property string $user_password
 * @property integer $user_type
 * @property string $user_email
 * @property string $tel
 * @property integer $sex
 * @property string $img
 * @property string $last_time
 */
class User extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'user_password'], 'required'],
            [['user_type', 'sex'], 'integer'],
            [['username', 'tel'], 'string', 'max' => 20],
            [['user_password'], 'string', 'max' => 32],
            [['user_email'], 'string', 'max' => 100],
            [['img'], 'string', 'max' => 30],
            [['last_time'], 'string', 'max' => 128],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'user_id' => 'User ID',
            'username' => 'Username',
            'user_password' => 'User Password',
            'user_type' => 'User Type',
            'user_email' => 'User Email',
            'tel' => 'Tel',
            'sex' => 'Sex',
            'img' => 'Img',
            'last_time' => 'Last Time',
        ];
    }
}
