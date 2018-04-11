<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Fi */

$this->title = 'Create Fi';
$this->params['breadcrumbs'][] = ['label' => 'Fis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="fi-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
