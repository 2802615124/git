<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "firm_position".
 *
 * @property integer $pos_id
 * @property integer $firm_id
 * @property integer $cate_id
 * @property string $pos_name
 * @property string $pos_dep
 * @property string $pos_nat
 * @property integer $pos_salary_start
 * @property integer $pos_salary_end
 * @property string $pos_city
 * @property string $year
 * @property string $edu
 * @property string $pos_tem
 * @property string $pos_content
 * @property string $pos_add
 * @property string $pos_email
 * @property integer $pos_num
 * @property integer $status
 */
class FirmPosition extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'firm_position';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['firm_id', 'cate_id', 'pos_name', 'pos_dep', 'pos_nat', 'pos_salary_start', 'pos_salary_end', 'pos_city', 'year', 'edu', 'pos_tem', 'pos_content', 'pos_add', 'pos_email', 'pos_num', 'status'], 'required'],
            [['firm_id', 'cate_id', 'pos_salary_start', 'pos_salary_end', 'pos_num', 'status'], 'integer'],
            [['pos_content'], 'string'],
            [['pos_name', 'pos_city'], 'string', 'max' => 50],
            [['pos_dep', 'pos_nat'], 'string', 'max' => 30],
            [['year', 'edu', 'pos_email'], 'string', 'max' => 100],
            [['pos_tem'], 'string', 'max' => 60],
            [['pos_add'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'pos_id' => 'Pos ID',
            'firm_id' => 'Firm ID',
            'cate_id' => 'Cate ID',
            'pos_name' => 'Pos Name',
            'pos_dep' => 'Pos Dep',
            'pos_nat' => 'Pos Nat',
            'pos_salary_start' => 'Pos Salary Start',
            'pos_salary_end' => 'Pos Salary End',
            'pos_city' => 'Pos City',
            'year' => 'Year',
            'edu' => 'Edu',
            'pos_tem' => 'Pos Tem',
            'pos_content' => 'Pos Content',
            'pos_add' => 'Pos Add',
            'pos_email' => 'Pos Email',
            'pos_num' => 'Pos Num',
            'status' => 'Status',
        ];
    }
}
