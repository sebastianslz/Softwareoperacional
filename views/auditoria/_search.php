<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\AuditoriaSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="auditoria-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'idAuditoria') ?>

    <?= $form->field($model, 'Fechal') ?>

    <?= $form->field($model, 'Hora') ?>

    <?= $form->field($model, 'Ingreso') ?>

    <?= $form->field($model, 'Origen') ?>

    <?php // echo $form->field($model, 'Navegador') ?>

    <?php // echo $form->field($model, 'Accion') ?>

    <?php // echo $form->field($model, 'RegistroAccion') ?>

    <?php // echo $form->field($model, 'HoraAccion') ?>

    <?php // echo $form->field($model, 'FechaAccion') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
