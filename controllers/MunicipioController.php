<?php

namespace app\controllers;

use Yii;
use app\models\Municipio;
use app\models\MunicipioSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * MunicipioController implements the CRUD actions for Municipio model.
 */
class MunicipioController extends Controller
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
     * Lists all Municipio models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new MunicipioSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Municipio model.
     * @param integer $idMunicipio
     * @param integer $Departamento_idDepartamento
     * @return mixed
     */
    public function actionView($idMunicipio, $Departamento_idDepartamento)
    {
        return $this->render('view', [
            'model' => $this->findModel($idMunicipio, $Departamento_idDepartamento),
        ]);
    }

    /**
     * Creates a new Municipio model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Municipio();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idMunicipio' => $model->idMunicipio, 'Departamento_idDepartamento' => $model->Departamento_idDepartamento]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Municipio model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $idMunicipio
     * @param integer $Departamento_idDepartamento
     * @return mixed
     */
    public function actionUpdate($idMunicipio, $Departamento_idDepartamento)
    {
        $model = $this->findModel($idMunicipio, $Departamento_idDepartamento);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idMunicipio' => $model->idMunicipio, 'Departamento_idDepartamento' => $model->Departamento_idDepartamento]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Municipio model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $idMunicipio
     * @param integer $Departamento_idDepartamento
     * @return mixed
     */
    public function actionDelete($idMunicipio, $Departamento_idDepartamento)
    {
        $this->findModel($idMunicipio, $Departamento_idDepartamento)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Municipio model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $idMunicipio
     * @param integer $Departamento_idDepartamento
     * @return Municipio the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($idMunicipio, $Departamento_idDepartamento)
    {
        if (($model = Municipio::findOne(['idMunicipio' => $idMunicipio, 'Departamento_idDepartamento' => $Departamento_idDepartamento])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
