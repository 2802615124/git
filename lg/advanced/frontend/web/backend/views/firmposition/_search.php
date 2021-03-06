<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\FirmPositionSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="firm-position-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'pos_id') ?>

    <?= $form->field($model, 'firm_id') ?>

    <?= $form->field($model, 'cate_id') ?>

    <?= $form->field($model, 'pos_name') ?>

    <?= $form->field($model, 'pos_dep') ?>

    <?php // echo $form->field($model, 'pos_nat') ?>

    <?php // echo $form->field($model, 'pos_salary_start') ?>

    <?php // echo $form->field($model, 'pos_salary_end') ?>

    <?php // echo $form->field($model, 'pos_city') ?>

    <?php // echo $form->field($model, 'year') ?>

    <?php // echo $form->field($model, 'edu') ?>

    <?php // echo $form->field($model, 'pos_tem') ?>

    <?php // echo $form->field($model, 'pos_content') ?>

    <?php // echo $form->field($model, 'pos_add') ?>

    <?php // echo $form->field($model, 'pos_email') ?>

    <?php // echo $form->field($model, 'pos_num') ?>

    <?php // echo $form->field($model, 'status') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
