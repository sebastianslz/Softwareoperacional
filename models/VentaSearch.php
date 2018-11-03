<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Venta;

/**
 * VentaSearch represents the model behind the search form about `app\models\Venta`.
 */
class VentaSearch extends Venta
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idVenta', 'Cliente_Cedula', 'producto_idProducto', 'empleado_Cedula', 'cantidad'], 'integer'],
            [['Fecha'], 'safe'],
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
        $query = Venta::find();

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
            'idVenta' => $this->idVenta,
            'Fecha' => $this->Fecha,
            'Cliente_Cedula' => $this->Cliente_Cedula,
            'producto_idProducto' => $this->producto_idProducto,
            'empleado_Cedula' => $this->empleado_Cedula,
            'cantidad' => $this->cantidad,
        ]);

        return $dataProvider;
    }
}
