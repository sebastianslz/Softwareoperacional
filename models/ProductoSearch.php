<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Producto;

/**
 * ProductoSearch represents the model behind the search form about `app\models\Producto`.
 */
class ProductoSearch extends Producto
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idProducto', 'Cantidad', 'numeroLote', 'tipoProducto_idtipoProducto', 'empleado_Cedula'], 'integer'],
            [['Nombre', 'Descripcion', 'fechaIngreso', 'Dimesiones'], 'safe'],
            [['Peso', 'Valor'], 'number'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Producto::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'idProducto' => $this->idProducto,
            'fechaIngreso' => $this->fechaIngreso,
            'Cantidad' => $this->Cantidad,
            'numeroLote' => $this->numeroLote,
            'Peso' => $this->Peso,
            'Valor' => $this->Valor,
            'tipoProducto_idtipoProducto' => $this->tipoProducto_idtipoProducto,
            'empleado_Cedula' => $this->empleado_Cedula,
        ]);

        $query->andFilterWhere(['like', 'Nombre', $this->Nombre])
            ->andFilterWhere(['like', 'Descripcion', $this->Descripcion])
            ->andFilterWhere(['like', 'Dimesiones', $this->Dimesiones]);

        return $dataProvider;
    }
}
