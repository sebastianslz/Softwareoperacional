<?php

namespace app\controllers;

use Yii;
use app\models\Venta;
use app\models\VentaSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * VentaController implements the CRUD actions for Venta model.
 */
class VentaController extends Controller
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
     * Lists all Venta models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new VentaSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Venta model.
     * @param integer $idVenta
     * @param integer $Cliente_Cedula
     * @param integer $producto_idProducto
     * @param integer $empleado_Cedula
     * @return mixed
     */
    public function actionView($idVenta, $Cliente_Cedula, $producto_idProducto, $empleado_Cedula)
    {
        return $this->render('view', [
            'model' => $this->findModel($idVenta, $Cliente_Cedula, $producto_idProducto, $empleado_Cedula),
        ]);
    }

    /**
     * Creates a new Venta model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Venta();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idVenta' => $model->idVenta, 'Cliente_Cedula' => $model->Cliente_Cedula, 'producto_idProducto' => $model->producto_idProducto, 'empleado_Cedula' => $model->empleado_Cedula]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Venta model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $idVenta
     * @param integer $Cliente_Cedula
     * @param integer $producto_idProducto
     * @param integer $empleado_Cedula
     * @return mixed
     */
    public function actionUpdate($idVenta, $Cliente_Cedula, $producto_idProducto, $empleado_Cedula)
    {
        $model = $this->findModel($idVenta, $Cliente_Cedula, $producto_idProducto, $empleado_Cedula);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idVenta' => $model->idVenta, 'Cliente_Cedula' => $model->Cliente_Cedula, 'producto_idProducto' => $model->producto_idProducto, 'empleado_Cedula' => $model->empleado_Cedula]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Venta model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $idVenta
     * @param integer $Cliente_Cedula
     * @param integer $producto_idProducto
     * @param integer $empleado_Cedula
     * @return mixed
     */
    public function actionDelete($idVenta, $Cliente_Cedula, $producto_idProducto, $empleado_Cedula)
    {
        $this->findModel($idVenta, $Cliente_Cedula, $producto_idProducto, $empleado_Cedula)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Venta model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $idVenta
     * @param integer $Cliente_Cedula
     * @param integer $producto_idProducto
     * @param integer $empleado_Cedula
     * @return Venta the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($idVenta, $Cliente_Cedula, $producto_idProducto, $empleado_Cedula)
    {
        if (($model = Venta::findOne(['idVenta' => $idVenta, 'Cliente_Cedula' => $Cliente_Cedula, 'producto_idProducto' => $producto_idProducto, 'empleado_Cedula' => $empleado_Cedula])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
