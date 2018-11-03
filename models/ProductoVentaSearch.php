<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\ProductoVenta;

/**
 * ProductoVentaSearch represents the model behind the search form about `app\models\ProductoVenta`.
 */
class ProductoVentaSearch extends ProductoVenta
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Producto_idProducto', 'Venta_idVenta'], 'integer'],
            [['Cantidad'], 'safe'],
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
        $query = ProductoVenta::find();

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
            'Producto_idProducto' => $this->Producto_idProducto,
            'Venta_idVenta' => $this->Venta_idVenta,
        ]);

        $query->andFilterWhere(['like', 'Cantidad', $this->Cantidad]);

        return $dataProvider;
    }
}
