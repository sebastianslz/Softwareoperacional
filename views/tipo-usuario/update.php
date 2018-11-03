<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\TipoUsuario */

$this->title = 'Update Tipo Usuario: ' . $model->idtipoUsuario;
$this->params['breadcrumbs'][] = ['label' => 'Tipo Usuarios', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->idtipoUsuario, 'url' => ['view', 'id' => $model->idtipoUsuario]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tipo-usuario-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
