<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Cliente */

$this->title = $model->Cedula;
$this->params['breadcrumbs'][] = ['label' => 'Clientes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cliente-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'Cedula' => $model->Cedula, 'Municipio_idMunicipio' => $model->Municipio_idMunicipio], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'Cedula' => $model->Cedula, 'Municipio_idMunicipio' => $model->Municipio_idMunicipio], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'Cedula',
            'Nombre',
            'Apellido',
            'fechaNacimiento',
            'Municipio_idMunicipio',
            'Genero',
        ],
    ]) ?>

</div>
