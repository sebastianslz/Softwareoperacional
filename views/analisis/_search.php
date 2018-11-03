<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\AnalisisSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="analisis-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'idAnalisis') ?>

    <?= $form->field($model, 'fechaAnalisis') ?>

    <?= $form->field($model, 'Descripcion') ?>

    <?= $form->field($model, 'Imagen') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
