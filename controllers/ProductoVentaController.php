<?php

namespace app\controllers;

use Yii;
use app\models\ProductoVenta;
use app\models\ProductoVentaSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ProductoVentaController implements the CRUD actions for ProductoVenta model.
 */
class ProductoVentaController extends Controller
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
     * Lists all ProductoVenta models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProductoVentaSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single ProductoVenta model.
     * @param integer $Producto_idProducto
     * @param integer $Venta_idVenta
     * @return mixed
     */
    public function actionView($Producto_idProducto, $Venta_idVenta)
    {
        return $this->render('view', [
            'model' => $this->findModel($Producto_idProducto, $Venta_idVenta),
        ]);
    }

    /**
     * Creates a new ProductoVenta model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new ProductoVenta();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'Producto_idProducto' => $model->Producto_idProducto, 'Venta_idVenta' => $model->Venta_idVenta]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing ProductoVenta model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $Producto_idProducto
     * @param integer $Venta_idVenta
     * @return mixed
     */
    public function actionUpdate($Producto_idProducto, $Venta_idVenta)
    {
        $model = $this->findModel($Producto_idProducto, $Venta_idVenta);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'Producto_idProducto' => $model->Producto_idProducto, 'Venta_idVenta' => $model->Venta_idVenta]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing ProductoVenta model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $Producto_idProducto
     * @param integer $Venta_idVenta
     * @return mixed
     */
    public function actionDelete($Producto_idProducto, $Venta_idVenta)
    {
        $this->findModel($Producto_idProducto, $Venta_idVenta)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the ProductoVenta model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $Producto_idProducto
     * @param integer $Venta_idVenta
     * @return ProductoVenta the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($Producto_idProducto, $Venta_idVenta)
    {
        if (($model = ProductoVenta::findOne(['Producto_idProducto' => $Producto_idProducto, 'Venta_idVenta' => $Venta_idVenta])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
