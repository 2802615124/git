<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Firm */

$this->title = 'Update Firm: ' . $model->firm_id;
$this->params['breadcrumbs'][] = ['label' => 'Firms', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->firm_id, 'url' => ['view', 'id' => $model->firm_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="firm-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
