<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ProductoSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="producto-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'idProducto') ?>

    <?= $form->field($model, 'Nombre') ?>

    <?= $form->field($model, 'Descripcion') ?>

    <?= $form->field($model, 'fechaIngreso') ?>

    <?= $form->field($model, 'Cantidad') ?>

    <?php // echo $form->field($model, 'numeroLote') ?>

    <?php // echo $form->field($model, 'Peso') ?>

    <?php // echo $form->field($model, 'Dimesiones') ?>

    <?php // echo $form->field($model, 'Valor') ?>

    <?php // echo $form->field($model, 'tipoProducto_idtipoProducto') ?>

    <?php // echo $form->field($model, 'empleado_Cedula') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
