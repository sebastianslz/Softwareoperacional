<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Municipio;
use yii\helpers\ArrayHelper;
use dosamigos\datepicker\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\Cliente */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="cliente-form">

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
