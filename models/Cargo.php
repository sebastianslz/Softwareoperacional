<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cargo".
 *
 * @property integer $idCargo
 * @property string $Nombre
 * @property string $Descripcion
 *
 * @property Empleado[] $empleados
 */
class Cargo extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cargo';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idCargo', 'Nombre', 'Descripcion'], 'required'],
            [['idCargo'], 'integer'],
            [['Nombre'], 'string', 'max' => 20],
            [['Descripcion'], 'string', 'max' => 45],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idCargo' => 'Id Cargo',
            'Nombre' => 'Nombre',
            'Descripcion' => 'Descripcion',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEmpleados()
    {
        return $this->hasMany(Empleado::className(), ['Cargo_idCargo' => 'idCargo']);
    }
}
