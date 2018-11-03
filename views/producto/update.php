<?php

use yii\helpers\Html;
use dosamigos\datepicker\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\Producto */

$this->title = 'Update Producto: ' . $model->idProducto;
$this->params['breadcrumbs'][] = ['label' => 'Productos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->idProducto, 'url' => ['view', 'idProducto' => $model->idProducto, 'tipoProducto_idtipoProducto' => $model->tipoProducto_idtipoProducto, 'empleado_Cedula' => $model->empleado_Cedula]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="producto-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
