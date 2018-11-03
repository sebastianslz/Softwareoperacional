<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\datepicker\DatePicker;
use yii\helpers\ArrayHelper;
use app\models\TipoProducto;
use app\models\Empleado;


/* @var $this yii\web\View */
/* @var $model app\models\Producto */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="producto-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'idProducto')->textInput() ?>

    <?= $form->field($model, 'Nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Descripcion')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'fechaIngreso')->widget(\yii\jui\DatePicker::classname(), [
    'language' => 'es',
    'dateFormat' => 'yyyy-MM-dd',
]);?>

    <?= $form->field($model, 'Cantidad')->widget(\yii\jui\Spinner::classname(), [
    'clientOptions' => ['step' => 1],
])?>

    <?= $form->field($model, 'numeroLote')->textInput() ?>

    <?= $form->field($model, 'Peso')->textInput() ?>

    <?= $form->field($model, 'Dimesiones')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Valor')->textInput() ?>

    <?= $form->field($model, 'tipoProducto_idtipoProducto')->dropDownList(
         ArrayHelper::map(TipoProducto::find()->all(), 'idtipoproducto', 'nombre'), [ 'prompt' => 'Seleccione un tipo producto',]
    ) ?>

    <?= $form->field($model, 'empleado_Cedula')->dropDownList(
        ArrayHelper::map(Empleado::find()->all(), 'Cedula', 'Nombre'), [ 'prompt' => 'Seleccione un empleado',]
    ) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
