<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\FirmSerch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="firm-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'firm_id') ?>

    <?= $form->field($model, 'uid') ?>

    <?= $form->field($model, 'firm_name') ?>

    <?= $form->field($model, 'firm_add_name') ?>

    <?= $form->field($model, 'firm_logo') ?>

    <?php // echo $form->field($model, 'firm_url') ?>

    <?php // echo $form->field($model, 'firm_city') ?>

    <?php // echo $form->field($model, 'field_id') ?>

    <?php // echo $form->field($model, 'firm_scale') ?>

    <?php // echo $form->field($model, 'firm_deve') ?>

    <?php // echo $form->field($model, 'firm_inves') ?>

    <?php // echo $form->field($model, 'firm_brief') ?>

    <?php // echo $form->field($model, 'firm_content') ?>

    <?php // echo $form->field($model, 'firm_license') ?>

    <?php // echo $form->field($model, 'firm_examine') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
