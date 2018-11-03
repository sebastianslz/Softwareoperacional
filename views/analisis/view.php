<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Analisis */

$this->title = $model->idAnalisis;
$this->params['breadcrumbs'][] = ['label' => 'Analisis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="analisis-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->idAnalisis], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->idAnalisis], [
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
            'idAnalisis',
            'fechaAnalisis',
            'Descripcion',
            [
                'attribute'=>'Imagen',
                'value'=>Yii::getAlias('@analisisImgUrl').'/'.$model->Imagen,
                'format'=>['image',['width'=>'400','height'=>'400','alight'=>'auto']],

            ]
           
        ],
    ]) ?>

</div>
