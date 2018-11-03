<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use dosamigos\datepicker\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\Producto */

$this->title = $model->idProducto;
$this->params['breadcrumbs'][] = ['label' => 'Productos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="producto-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'idProducto' => $model->idProducto, 'tipoProducto_idtipoProducto' => $model->tipoProducto_idtipoProducto, 'empleado_Cedula' => $model->empleado_Cedula], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'idProducto' => $model->idProducto, 'tipoProducto_idtipoProducto' => $model->tipoProducto_idtipoProducto, 'empleado_Cedula' => $model->empleado_Cedula], [
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
            'idProducto',
            'Nombre',
            'Descripcion',
            'fechaIngreso',
            'Cantidad',
            'numeroLote',
            'Peso',
            'Dimesiones',
            'Valor',
            'tipoProducto_idtipoProducto',
            'empleado_Cedula',
        ],
    ]) ?>

</div>
