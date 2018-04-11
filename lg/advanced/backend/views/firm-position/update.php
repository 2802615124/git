<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\FirmPosition */

$this->title = 'Update Firm Position: ' . $model->pos_id;
$this->params['breadcrumbs'][] = ['label' => 'Firm Positions', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->pos_id, 'url' => ['view', 'id' => $model->pos_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="firm-position-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
