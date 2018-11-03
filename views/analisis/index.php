<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\AnalisisSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Analisis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="analisis-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Analisis', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'idAnalisis',
            'fechaAnalisis',
            'Descripcion',
            'Imagen',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
