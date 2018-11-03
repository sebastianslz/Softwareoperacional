<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Cliente */

$this->title = 'Update Cliente: ' . $model->Cedula;
$this->params['breadcrumbs'][] = ['label' => 'Clientes', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Cedula, 'url' => ['view', 'Cedula' => $model->Cedula, 'Municipio_idMunicipio' => $model->Municipio_idMunicipio]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="cliente-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
