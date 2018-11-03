<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use yii\bootstrap\Modal;
use kartik\export\ExportMenu;

/* @var $this yii\web\View */
/* @var $searchModel app\models\EmpleadoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Empleados';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="empleado-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Empleado', ['create'], ['class' => 'btn btn-success','id'=>'modalButton']) ?>
    </p>

<?php
    $gridColumns = [
        'Cedula',
        'Nombre',
        'Apellido',
        'fechaNacimiento',
        'Municipio_idMunicipio',
        'Area_idArea',
        'Cargo_idCargo',
        'Salario',
        'fechaIngreso',
        'Genero',
        
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

            'Cedula',
            'Nombre',
            'Apellido',
            'fechaNacimiento',
            //'Municipio_idMunicipio',
            // 'Area_idArea',
            // 'Cargo_idCargo',
            'Salario',
            //'fechaIngreso',
            'Genero',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
