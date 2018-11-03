<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Empleado */

$this->title = $model->Cedula;
$this->params['breadcrumbs'][] = ['label' => 'Empleados', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="empleado-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'Cedula' => $model->Cedula, 'Municipio_idMunicipio' => $model->Municipio_idMunicipio, 'Area_idArea' => $model->Area_idArea, 'Cargo_idCargo' => $model->Cargo_idCargo], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'Cedula' => $model->Cedula, 'Municipio_idMunicipio' => $model->Municipio_idMunicipio, 'Area_idArea' => $model->Area_idArea, 'Cargo_idCargo' => $model->Cargo_idCargo], [
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
            'Cedula',
            'Nombre',
            'Apellido',
            'fechaNacimiento',
            'Municipio_idMunicipio',
            'Area_idArea',
            'Cargo_idCargo',
            'Salario',
            'fechaIngreso',
            'Genero',
        ],
    ]) ?>

</div>
