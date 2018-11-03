<?php

namespace app\controllers;

use Yii;
use app\models\Empleado;
use app\models\EmpleadoSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * EmpleadoController implements the CRUD actions for Empleado model.
 */
class EmpleadoController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Empleado models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new EmpleadoSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Empleado model.
     * @param integer $Cedula
     * @param integer $Municipio_idMunicipio
     * @param integer $Area_idArea
     * @param integer $Cargo_idCargo
     * @return mixed
     */
    public function actionView($Cedula, $Municipio_idMunicipio, $Area_idArea, $Cargo_idCargo)
    {
        return $this->render('view', [
            'model' => $this->findModel($Cedula, $Municipio_idMunicipio, $Area_idArea, $Cargo_idCargo),
        ]);
    }

    /**
     * Creates a new Empleado model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Empleado();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'Cedula' => $model->Cedula, 'Municipio_idMunicipio' => $model->Municipio_idMunicipio, 'Area_idArea' => $model->Area_idArea, 'Cargo_idCargo' => $model->Cargo_idCargo]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Empleado model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $Cedula
     * @param integer $Municipio_idMunicipio
     * @param integer $Area_idArea
     * @param integer $Cargo_idCargo
     * @return mixed
     */
    public function actionUpdate($Cedula, $Municipio_idMunicipio, $Area_idArea, $Cargo_idCargo)
    {
        $model = $this->findModel($Cedula, $Municipio_idMunicipio, $Area_idArea, $Cargo_idCargo);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'Cedula' => $model->Cedula, 'Municipio_idMunicipio' => $model->Municipio_idMunicipio, 'Area_idArea' => $model->Area_idArea, 'Cargo_idCargo' => $model->Cargo_idCargo]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Empleado model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $Cedula
     * @param integer $Municipio_idMunicipio
     * @param integer $Area_idArea
     * @param integer $Cargo_idCargo
     * @return mixed
     */
    public function actionDelete($Cedula, $Municipio_idMunicipio, $Area_idArea, $Cargo_idCargo)
    {
        $this->findModel($Cedula, $Municipio_idMunicipio, $Area_idArea, $Cargo_idCargo)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Empleado model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $Cedula
     * @param integer $Municipio_idMunicipio
     * @param integer $Area_idArea
     * @param integer $Cargo_idCargo
     * @return Empleado the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($Cedula, $Municipio_idMunicipio, $Area_idArea, $Cargo_idCargo)
    {
        if (($model = Empleado::findOne(['Cedula' => $Cedula, 'Municipio_idMunicipio' => $Municipio_idMunicipio, 'Area_idArea' => $Area_idArea, 'Cargo_idCargo' => $Cargo_idCargo])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
