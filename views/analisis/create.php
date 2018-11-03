<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Analisis */

$this->title = 'Create Analisis';
$this->params['breadcrumbs'][] = ['label' => 'Analises', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="analisis-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
