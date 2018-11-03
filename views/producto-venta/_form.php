<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ProductoVenta */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="producto-venta-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'Producto_idProducto')->textInput() ?>

    <?= $form->field($model, 'Venta_idVenta')->textInput() ?>

    <?= $form->field($model, 'Cantidad')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
