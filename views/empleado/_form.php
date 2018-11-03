<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Municipio;
use app\models\Area;
use app\models\Cargo;
use dosamigos\datepicker\DatePicker;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\Empleado */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="empleado-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'Cedula')->textInput() ?>

    <?= $form->field($model, 'Nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Apellido')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'fechaNacimiento')->widget(
    DatePicker::className(), [
        // inline too, not bad
         'inline' => false, 
         // modify template for custom rendering
        //'template' => '<div class="well well-sm" style="background-color: #fff; width:250px">{input}</div>',
        'clientOptions' => [
            'autoclose' => true,
            'format' => 'yyyy-mm-dd'
        ]
]);?>

    <?= $form->field($model, 'Municipio_idMunicipio')->dropDownList(
    ArrayHelper::map(Municipio::find()->all(), 'idMunicipio', 'Nombre'), [ 'prompt' => 'Seleccione un municipio',]);?>

    <?=
    $form->field($model, 'Area_idArea')->dropDownList(
            ArrayHelper::map(Area::find()->all(), 'idArea', 'Nombre'), [ 'prompt' => 'Seleccione un area',]);
    ?>

    <?=
    $form->field($model, 'Cargo_idCargo')->dropDownList(
            ArrayHelper::map(Cargo::find()->all(), 'idCargo', 'Nombre'), [ 'prompt' => 'Seleccione un cargo',]);
    ?>

    <?= $form->field($model, 'Salario')->textInput() ?>

    <?= $form->field($model, 'fechaIngreso')->widget(
    DatePicker::className(), [
        // inline too, not bad
         'inline' => false, 
         // modify template for custom rendering
        //'template' => '<div class="well well-sm" style="background-color: #fff; width:250px">{input}</div>',
        'clientOptions' => [
            'autoclose' => true,
            'format' => 'yyyy-mm-dd'
        ]
]);?>

    <?= $form->field($model, 'Genero')->dropDownList(
    /*['maxlength' => true]*/
    ['Masculino' => 'Masculino', 'Femenino' => 'Femenino', ],
    ['prompt' => 'Genero']

    ) ?>



    <div class="form-group">
    <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
