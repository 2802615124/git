<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Fi */

$this->title = 'Update Fi: ' . $model->pos_id;
$this->params['breadcrumbs'][] = ['label' => 'Fis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->pos_id, 'url' => ['view', 'id' => $model->pos_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="fi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
