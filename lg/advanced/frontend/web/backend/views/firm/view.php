<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Firm */

$this->title = $model->firm_id;
$this->params['breadcrumbs'][] = ['label' => 'Firms', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="firm-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->firm_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->firm_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'firm_id',
            'uid',
            'firm_name',
            'firm_add_name',
            'firm_logo',
            'firm_url:url',
            'firm_city',
            'field_id',
            'firm_scale',
            'firm_deve',
            'firm_inves',
            'firm_brief',
            'firm_content:ntext',
            'firm_license',
            'firm_examine',
        ],
    ]) ?>

</div>
