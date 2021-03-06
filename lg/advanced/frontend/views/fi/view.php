<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Fi */

$this->title = $model->pos_id;
$this->params['breadcrumbs'][] = ['label' => 'Fis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="fi-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->pos_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->pos_id], [
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
            'pos_id',
            'firm_id',
            'cate_id',
            'pos_name',
            'pos_dep',
            'pos_nat',
            'pos_salary_start',
            'pos_salaty_end',
            'pos_city',
            'job_id',
            'edu_id',
            'pos_tem',
            'pos_content:ntext',
            'pos_add',
            'pos_email:email',
            'pos_num',
            'status',
        ],
    ]) ?>

</div>
