<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\VentaSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="venta-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'idVenta') ?>

    <?= $form->field($model, 'Fecha') ?>

    <?= $form->field($model, 'Cliente_Cedula') ?>

    <?= $form->field($model, 'producto_idProducto') ?>

    <?= $form->field($model, 'empleado_Cedula') ?>

    <?php // echo $form->field($model, 'cantidad') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
