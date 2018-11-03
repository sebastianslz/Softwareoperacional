<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\EmpleadoSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="empleado-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'Cedula') ?>

    <?= $form->field($model, 'Nombre') ?>

    <?= $form->field($model, 'Apellido') ?>

    <?= $form->field($model, 'fechaNacimiento') ?>

    <?= $form->field($model, 'Municipio_idMunicipio') ?>

    <?php // echo $form->field($model, 'Area_idArea') ?>

    <?php // echo $form->field($model, 'Cargo_idCargo') ?>

    <?php // echo $form->field($model, 'Salario') ?>

    <?php // echo $form->field($model, 'fechaIngreso') ?>

    <?php // echo $form->field($model, 'Genero') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
