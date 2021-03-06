<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\FirmPosition */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="firm-position-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'firm_id')->textInput() ?>

    <?= $form->field($model, 'cate_id')->textInput() ?>

    <?= $form->field($model, 'pos_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pos_dep')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pos_nat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pos_salary_start')->textInput() ?>

    <?= $form->field($model, 'pos_salary_end')->textInput() ?>

    <?= $form->field($model, 'pos_city')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'year')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'edu')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pos_tem')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pos_content')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'pos_add')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pos_email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pos_num')->textInput() ?>

    <?= $form->field($model, 'status')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
