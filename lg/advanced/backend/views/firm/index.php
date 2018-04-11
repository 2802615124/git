<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\FirmSerch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Firms';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="firm-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Firm', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

           // 'firm_id',
           // 'uid',
            'firm_name',
            'firm_add_name',
            'firm_logo',
             'firm_url:url',
             'firm_city',
            // 'field_id',
            // 'firm_scale',
            // 'firm_deve',
            // 'firm_inves',
            // 'firm_brief',
            // 'firm_content:ntext',
            // 'firm_license',
            // 'firm_examine',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
