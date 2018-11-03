<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Analisis */

$this->title = 'Update Analisis: ' . $model->idAnalisis;
$this->params['breadcrumbs'][] = ['label' => 'Analises', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->idAnalisis, 'url' => ['view', 'id' => $model->idAnalisis]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="analisis-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
