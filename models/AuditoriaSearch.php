<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Auditoria;

/**
 * AuditoriaSearch represents the model behind the search form about `app\models\Auditoria`.
 */
class AuditoriaSearch extends Auditoria
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idAuditoria', 'Ingreso'], 'integer'],
            [['Fechal', 'Hora', 'Origen', 'Navegador', 'Accion', 'RegistroAccion', 'HoraAccion', 'FechaAccion'], 'safe'],
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
        $query = Auditoria::find();

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
            'idAuditoria' => $this->idAuditoria,
            'Fechal' => $this->Fechal,
            'Hora' => $this->Hora,
            'Ingreso' => $this->Ingreso,
            'HoraAccion' => $this->HoraAccion,
            'FechaAccion' => $this->FechaAccion,
        ]);

        $query->andFilterWhere(['like', 'Origen', $this->Origen])
            ->andFilterWhere(['like', 'Navegador', $this->Navegador])
            ->andFilterWhere(['like', 'Accion', $this->Accion])
            ->andFilterWhere(['like', 'RegistroAccion', $this->RegistroAccion]);

        return $dataProvider;
    }
}
