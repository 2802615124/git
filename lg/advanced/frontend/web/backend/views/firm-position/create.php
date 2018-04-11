<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\FirmPosition */

$this->title = 'Create Firm Position';
$this->params['breadcrumbs'][] = ['label' => 'Firm Positions', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="firm-position-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
