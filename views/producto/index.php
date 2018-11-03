<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use yii\bootstrap\Modal;
use kartik\export\ExportMenu;
use dosamigos\datepicker\DatePicker;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ProductoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Productos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="producto-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Crear Producto', ['create'], ['class' => 'btn btn-success','id'=>'modalButton']) ?>
    </p>

<?php
    $gridColumns = [
        'idProducto',
        'Nombre',
        'Descripcion',
        'fechaIngreso',
        'Cantidad',
        'numeroLote',
        'Peso',
        'Dimesiones',
        'Valor',
        'tipoProducto_idtipoProducto',
        'empleado_Cedula',
    ];

    //Render a export dropdown
    echo ExportMenu::widget([
        'dataProvider' => $dataProvider,
        'columns' => $gridColumns
    ]);

    ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'idProducto',
            'Nombre',
            //'Descripcion',
            'fechaIngreso',
            'Cantidad',
             'numeroLote',
            // 'Peso',
            // 'Dimesiones',
            'Valor',
            // 'tipoProducto_idtipoProducto',
            // 'empleado_Cedula',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
