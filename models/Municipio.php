<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "municipio".
 *
 * @property integer $idMunicipio
 * @property string $Nombre
 * @property integer $Departamento_idDepartamento
 *
 * @property Cliente[] $clientes
 * @property Empleado[] $empleados
 * @property Departamento $departamentoIdDepartamento
 */
class Municipio extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'municipio';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idMunicipio', 'Nombre', 'Departamento_idDepartamento'], 'required'],
            [['idMunicipio', 'Departamento_idDepartamento'], 'integer'],
            [['Nombre'], 'string', 'max' => 45],
            [['Departamento_idDepartamento'], 'exist', 'skipOnError' => true, 'targetClass' => Departamento::className(), 'targetAttribute' => ['Departamento_idDepartamento' => 'idDepartamento']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idMunicipio' => 'Id Municipio',
            'Nombre' => 'Nombre',
            'Departamento_idDepartamento' => 'Departamento Id Departamento',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getClientes()
    {
        return $this->hasMany(Cliente::className(), ['Municipio_idMunicipio' => 'idMunicipio']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEmpleados()
    {
        return $this->hasMany(Empleado::className(), ['Municipio_idMunicipio' => 'idMunicipio']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDepartamentoIdDepartamento()
    {
        return $this->hasOne(Departamento::className(), ['idDepartamento' => 'Departamento_idDepartamento']);
    }
}
