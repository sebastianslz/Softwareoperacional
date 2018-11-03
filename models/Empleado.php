<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "empleado".
 *
 * @property integer $Cedula
 * @property string $Nombre
 * @property string $Apellido
 * @property string $fechaNacimiento
 * @property integer $Municipio_idMunicipio
 * @property integer $Area_idArea
 * @property integer $Cargo_idCargo
 * @property double $Salario
 * @property string $fechaIngreso
 * @property string $Genero
 * @property Area $areaIdArea
 * @property Cargo $cargoIdCargo
 * @property Municipio $municipioIdMunicipio
 */
class Empleado extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'empleado';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Cedula', 'Nombre', 'Apellido', 'fechaNacimiento', 'Municipio_idMunicipio', 'Area_idArea', 'Cargo_idCargo', 'Salario', 'fechaIngreso', 'Genero'], 'required'],
            [['Cedula', 'Municipio_idMunicipio', 'Area_idArea', 'Cargo_idCargo'], 'integer'],
            [['fechaNacimiento', 'fechaIngreso'], 'safe'],
            [['Salario'], 'number'],
            [['Nombre', 'Apellido'], 'string', 'max' => 20],
            [['Genero'], 'string', 'max' => 10],
            [['Area_idArea'], 'exist', 'skipOnError' => true, 'targetClass' => Area::className(), 'targetAttribute' => ['Area_idArea' => 'idArea']],
            [['Cargo_idCargo'], 'exist', 'skipOnError' => true, 'targetClass' => Cargo::className(), 'targetAttribute' => ['Cargo_idCargo' => 'idCargo']],
            [['Municipio_idMunicipio'], 'exist', 'skipOnError' => true, 'targetClass' => Municipio::className(), 'targetAttribute' => ['Municipio_idMunicipio' => 'idMunicipio']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'Cedula' => 'Cedula',
            'Nombre' => 'Nombre',
            'Apellido' => 'Apellido',
            'fechaNacimiento' => 'Fecha Nacimiento',
            'Municipio_idMunicipio' => 'Municipio Id Municipio',
            'Area_idArea' => 'Area Id Area',
            'Cargo_idCargo' => 'Cargo Id Cargo',
            'Salario' => 'Salario',
            'fechaIngreso' => 'Fecha Ingreso',
            'Genero' => 'Genero',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAreaIdArea()
    {
        return $this->hasOne(Area::className(), ['idArea' => 'Area_idArea']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCargoIdCargo()
    {
        return $this->hasOne(Cargo::className(), ['idCargo' => 'Cargo_idCargo']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMunicipioIdMunicipio()
    {
        return $this->hasOne(Municipio::className(), ['idMunicipio' => 'Municipio_idMunicipio']);
    }
}
