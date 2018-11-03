<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Venta */

$this->title = $model->idVenta;
$this->params['breadcrumbs'][] = ['label' => 'Ventas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="venta-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'idVenta' => $model->idVenta, 'Cliente_Cedula' => $model->Cliente_Cedula, 'producto_idProducto' => $model->producto_idProducto, 'empleado_Cedula' => $model->empleado_Cedula], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'idVenta' => $model->idVenta, 'Cliente_Cedula' => $model->Cliente_Cedula, 'producto_idProducto' => $model->producto_idProducto, 'empleado_Cedula' => $model->empleado_Cedula], [
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
            'idVenta',
            'Fecha',
            'Cliente_Cedula',
            'producto_idProducto',
            'empleado_Cedula',
            'cantidad',
        ],
    ]) ?>

</div>
