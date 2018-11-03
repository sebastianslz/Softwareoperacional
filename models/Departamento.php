<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "departamento".
 *
 * @property integer $idDepartamento
 * @property string $Nombre
 *
 * @property Municipio[] $municipios
 */
class Departamento extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'departamento';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idDepartamento', 'Nombre'], 'required'],
            [['idDepartamento'], 'integer'],
            [['Nombre'], 'string', 'max' => 45],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idDepartamento' => 'Id Departamento',
            'Nombre' => 'Nombre',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMunicipios()
    {
        return $this->hasMany(Municipio::className(), ['Departamento_idDepartamento' => 'idDepartamento']);
    }
}
