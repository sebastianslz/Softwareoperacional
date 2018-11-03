<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cliente".
 *
 * @property integer $Cedula
 * @property string $Nombre
 * @property string $Apellido
 * @property string $fechaNacimiento
 * @property integer $Municipio_idMunicipio
 * @property string $Genero
 *
 * @property Municipio $municipioIdMunicipio
 * @property Venta[] $ventas
 */
class Cliente extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cliente';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Cedula', 'Nombre', 'Apellido', 'fechaNacimiento', 'Municipio_idMunicipio', 'Genero'], 'required'],
            [['Cedula', 'Municipio_idMunicipio'], 'integer'],
            [['fechaNacimiento'], 'safe'],
            [['Nombre', 'Apellido'], 'string', 'max' => 20],
            [['Genero'], 'string', 'max' => 10],
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
            'Genero' => 'Genero',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMunicipioIdMunicipio()
    {
        return $this->hasOne(Municipio::className(), ['idMunicipio' => 'Municipio_idMunicipio']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getVentas()
    {
        return $this->hasMany(Venta::className(), ['Cliente_Cedula' => 'Cedula']);
    }

    /**
    *Obtener nombre y apellido del Cliente
    */
    public function getDisplayName(){
        return $this->Nombre.' '.$this->Apellido;
    }
}
