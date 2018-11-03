<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Empleado;

/**
 * EmpleadoSearch represents the model behind the search form about `app\models\Empleado`.
 */
class EmpleadoSearch extends Empleado
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Cedula', 'Municipio_idMunicipio', 'Area_idArea', 'Cargo_idCargo'], 'integer'],
            [['Nombre', 'Apellido', 'fechaNacimiento', 'fechaIngreso', 'Genero'], 'safe'],
            [['Salario'], 'number'],
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
        $query = Empleado::find();

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
            'Cedula' => $this->Cedula,
            'fechaNacimiento' => $this->fechaNacimiento,
            'Municipio_idMunicipio' => $this->Municipio_idMunicipio,
            'Area_idArea' => $this->Area_idArea,
            'Cargo_idCargo' => $this->Cargo_idCargo,
            'Salario' => $this->Salario,
            'fechaIngreso' => $this->fechaIngreso,
        ]);

        $query->andFilterWhere(['like', 'Nombre', $this->Nombre])
            ->andFilterWhere(['like', 'Apellido', $this->Apellido])
            ->andFilterWhere(['like', 'Genero', $this->Genero]);

        return $dataProvider;
    }
}
