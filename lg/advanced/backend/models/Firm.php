<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "firm".
 *
 * @property integer $firm_id
 * @property integer $uid
 * @property string $firm_name
 * @property string $firm_add_name
 * @property string $firm_logo
 * @property string $firm_url
 * @property string $firm_city
 * @property integer $field_id
 * @property string $firm_scale
 * @property string $firm_deve
 * @property string $firm_inves
 * @property string $firm_brief
 * @property string $firm_content
 * @property string $firm_license
 * @property integer $firm_examine
 */
class Firm extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'firm';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['uid', 'firm_name', 'firm_add_name', 'firm_logo', 'firm_url', 'firm_city', 'field_id', 'firm_scale', 'firm_deve', 'firm_inves', 'firm_brief', 'firm_content'], 'required'],
            [['uid', 'field_id', 'firm_examine'], 'integer'],
            [['firm_content'], 'string'],
            [['firm_name', 'firm_inves', 'firm_license'], 'string', 'max' => 50],
            [['firm_add_name', 'firm_logo', 'firm_url', 'firm_scale', 'firm_deve'], 'string', 'max' => 30],
            [['firm_city'], 'string', 'max' => 21],
            [['firm_brief'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'firm_id' => 'Firm ID',
            'uid' => 'Uid',
            'firm_name' => 'Firm Name',
            'firm_add_name' => 'Firm Add Name',
            'firm_logo' => 'Firm Logo',
            'firm_url' => 'Firm Url',
            'firm_city' => 'Firm City',
            'field_id' => 'Field ID',
            'firm_scale' => 'Firm Scale',
            'firm_deve' => 'Firm Deve',
            'firm_inves' => 'Firm Inves',
            'firm_brief' => 'Firm Brief',
            'firm_content' => 'Firm Content',
            'firm_license' => 'Firm License',
            'firm_examine' => 'Firm Examine',
        ];
    }
}
