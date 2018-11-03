<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\ProductoVenta */

$this->title = $model->Producto_idProducto;
$this->params['breadcrumbs'][] = ['label' => 'Producto Ventas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="producto-venta-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'Producto_idProducto' => $model->Producto_idProducto, 'Venta_idVenta' => $model->Venta_idVenta], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'Producto_idProducto' => $model->Producto_idProducto, 'Venta_idVenta' => $model->Venta_idVenta], [
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
            'Producto_idProducto',
            'Venta_idVenta',
            'Cantidad',
        ],
    ]) ?>

</div>
