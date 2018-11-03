<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\ProductoVenta */

$this->title = 'Update Producto Venta: ' . $model->Producto_idProducto;
$this->params['breadcrumbs'][] = ['label' => 'Producto Ventas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Producto_idProducto, 'url' => ['view', 'Producto_idProducto' => $model->Producto_idProducto, 'Venta_idVenta' => $model->Venta_idVenta]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="producto-venta-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
