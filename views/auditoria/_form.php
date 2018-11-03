<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Auditoria */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="auditoria-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'idAuditoria')->textInput() ?>

    <?= $form->field($model, 'Fechal')->textInput() ?>

    <?= $form->field($model, 'Hora')->textInput() ?>

    <?= $form->field($model, 'Ingreso')->textInput() ?>

    <?= $form->field($model, 'Origen')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Navegador')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Accion')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'RegistroAccion')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'HoraAccion')->textInput() ?>

    <?= $form->field($model, 'FechaAccion')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
