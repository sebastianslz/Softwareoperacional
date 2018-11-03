<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\datepicker\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\Analisis */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="analisis-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

<?= $form->field($model, 'fechaAnalisis')->widget(\yii\jui\DatePicker::classname(),
        [ 'language' => 'es',
    'dateFormat' => 'yyyy-MM-dd',]
        );
            ?>

    <?= $form->field($model, 'Descripcion')->textArea([
    'maxlength' => true,
    'rows' => '4',
    ]) ?>

    <?= $form->field($model, 'Imagen')->fileInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
