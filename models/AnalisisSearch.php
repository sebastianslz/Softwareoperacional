<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Analisis;

/**
 * AnalisisSearch represents the model behind the search form about `app\models\Analisis`.
 */
class AnalisisSearch extends Analisis
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idAnalisis'], 'integer'],
            [['fechaAnalisis', 'Descripcion', 'Imagen'], 'safe'],
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
        $query = Analisis::find();

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
            'idAnalisis' => $this->idAnalisis,
            'fechaAnalisis' => $this->fechaAnalisis,
        ]);

        $query->andFilterWhere(['like', 'Descripcion', $this->Descripcion])
            ->andFilterWhere(['like', 'Imagen', $this->Imagen]);

        return $dataProvider;
    }
}
