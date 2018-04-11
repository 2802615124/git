<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Firm */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="firm-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'uid')->textInput() ?>

    <?= $form->field($model, 'firm_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'firm_add_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'firm_logo')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'firm_url')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'firm_city')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'field_id')->textInput() ?>

    <?= $form->field($model, 'firm_scale')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'firm_deve')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'firm_inves')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'firm_brief')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'firm_content')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'firm_license')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'firm_examine')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
