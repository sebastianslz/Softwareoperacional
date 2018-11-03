<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use yii\bootstrap\Modal;
use kartik\export\ExportMenu;
use app\models\Cliente;

/* @var $this yii\web\View */
/* @var $searchModel app\models\VentaSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Ventas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="venta-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Crear Venta', ['create'], ['class' => 'btn btn-success','id'=>'modalButton']) ?>
    </p>

<?php
    $gridColumns = [
        'idVenta',
        'Fecha',
        'Cliente_Cedula',
        'producto_idProducto',
        'empleado_Cedula',
        'cantidad',
    ];

    //Render a export dropdown
    echo ExportMenu::widget([
        'dataProvider' => $dataProvider,
        'columns' => $gridColumns
    ]);

    ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        //'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'idVenta',
            'Fecha',
            //'Cliente_Cedula.displayname:text:Nombre Cliente',
            //[
              //  'attribute' => 'Cliente_Cedula.displayname',
                
                //'value' => 'Cliente_Cedula.Nombre',
            //],
            'Cliente_Cedula',
            'producto_idProducto',
            'empleado_Cedula',
            'cantidad',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
