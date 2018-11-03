<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Venta */

$this->title = 'Update Venta: ' . $model->idVenta;
$this->params['breadcrumbs'][] = ['label' => 'Ventas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->idVenta, 'url' => ['view', 'idVenta' => $model->idVenta, 'Cliente_Cedula' => $model->Cliente_Cedula, 'producto_idProducto' => $model->producto_idProducto, 'empleado_Cedula' => $model->empleado_Cedula]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="venta-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
