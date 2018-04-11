<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\FiSerch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Fis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="fi-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Fi', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'pos_id',
            'firm_id',
            'cate_id',
            'pos_name',
            'pos_dep',
            // 'pos_nat',
            // 'pos_salary_start',
            // 'pos_salaty_end',
            // 'pos_city',
            // 'job_id',
            // 'edu_id',
            // 'pos_tem',
            // 'pos_content:ntext',
            // 'pos_add',
            // 'pos_email:email',
            // 'pos_num',
            // 'status',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
