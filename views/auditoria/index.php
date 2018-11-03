<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\AuditoriaSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Auditorias';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="auditoria-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Auditoria', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'idAuditoria',
            'Fechal',
            'Hora',
            'Ingreso',
            'Origen',
            // 'Navegador',
            // 'Accion',
            // 'RegistroAccion',
            // 'HoraAccion',
            // 'FechaAccion',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
