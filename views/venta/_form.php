<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\datepicker\DatePicker;
use yii\helpers\ArrayHelper;
use app\models\Cliente;
use app\models\Producto;
use app\models\Empleado;


/* @var $this yii\web\View */
/* @var $model app\models\Venta */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="venta-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'idVenta')->textInput() ?>

     <?= $form->field($model, 'Fecha')->widget(\yii\jui\DatePicker::classname(),
        [ 'language' => 'es',
    'dateFormat' => 'yyyy-MM-dd',]
        );
            ?>

     <?= $form->field($model, 'Cliente_Cedula')->dropDownList(
        ArrayHelper::map(Cliente::find()->all(), 'Cedula', 'Nombre', 'Apellido'), ['prompt' => 'Seleccione un cliente',]);
        ?>

    <?= $form->field($model, 'producto_idProducto')->dropDownList(
        ArrayHelper::map(Producto::find()->all(), 'idProducto', 'Nombre'), ['prompt' => 'Seleccione un producto',]
    );?>

    <?= $form->field($model, 'empleado_Cedula')->dropDownList(
        ArrayHelper::map(Empleado::find()->all(), 'Cedula', 'Nombre', 'Apellido'), ['prompt' => 'Seleccione un empleado',]
    );?>

    <?= $form->field($model, 'cantidad')->widget(\yii\jui\Spinner::classname(), [
    'clientOptions' => ['step' => 1],
])?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
