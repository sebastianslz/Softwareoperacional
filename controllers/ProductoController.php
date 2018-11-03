<?php

namespace app\controllers;

use Yii;
use app\models\Producto;
use app\models\ProductoSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ProductoController implements the CRUD actions for Producto model.
 */
class ProductoController extends Controller
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
     * Lists all Producto models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProductoSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Producto model.
     * @param integer $idProducto
     * @param integer $tipoProducto_idtipoProducto
     * @param integer $empleado_Cedula
     * @return mixed
     */
    public function actionView($idProducto, $tipoProducto_idtipoProducto, $empleado_Cedula)
    {
        return $this->render('view', [
            'model' => $this->findModel($idProducto, $tipoProducto_idtipoProducto, $empleado_Cedula),
        ]);
    }

    /**
     * Creates a new Producto model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Producto();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idProducto' => $model->idProducto, 'tipoProducto_idtipoProducto' => $model->tipoProducto_idtipoProducto, 'empleado_Cedula' => $model->empleado_Cedula]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Producto model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $idProducto
     * @param integer $tipoProducto_idtipoProducto
     * @param integer $empleado_Cedula
     * @return mixed
     */
    public function actionUpdate($idProducto, $tipoProducto_idtipoProducto, $empleado_Cedula)
    {
        $model = $this->findModel($idProducto, $tipoProducto_idtipoProducto, $empleado_Cedula);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idProducto' => $model->idProducto, 'tipoProducto_idtipoProducto' => $model->tipoProducto_idtipoProducto, 'empleado_Cedula' => $model->empleado_Cedula]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Producto model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $idProducto
     * @param integer $tipoProducto_idtipoProducto
     * @param integer $empleado_Cedula
     * @return mixed
     */
    public function actionDelete($idProducto, $tipoProducto_idtipoProducto, $empleado_Cedula)
    {
        $this->findModel($idProducto, $tipoProducto_idtipoProducto, $empleado_Cedula)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Producto model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $idProducto
     * @param integer $tipoProducto_idtipoProducto
     * @param integer $empleado_Cedula
     * @return Producto the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($idProducto, $tipoProducto_idtipoProducto, $empleado_Cedula)
    {
        if (($model = Producto::findOne(['idProducto' => $idProducto, 'tipoProducto_idtipoProducto' => $tipoProducto_idtipoProducto, 'empleado_Cedula' => $empleado_Cedula])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
