<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Empleado */

$this->title = 'Update Empleado: ' . $model->Cedula;
$this->params['breadcrumbs'][] = ['label' => 'Empleados', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Cedula, 'url' => ['view', 'Cedula' => $model->Cedula, 'Municipio_idMunicipio' => $model->Municipio_idMunicipio, 'Area_idArea' => $model->Area_idArea, 'Cargo_idCargo' => $model->Cargo_idCargo]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="empleado-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
