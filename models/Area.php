<?php

namespace app\models;

use Yii;


/**
 * This is the model class for table "area".
 *
 * @property integer $idArea
 * @property string $Nombre
 * @property string $Descripcion
 *
 * @property Empleado[] $empleados
 */
class Area extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'area';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idArea', 'Nombre', 'Descripcion'], 'required'],
            [['idArea'], 'integer'],
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
            'idArea' => 'Id Area',
            'Nombre' => 'Nombre',
            'Descripcion' => 'Descripcion',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEmpleados()
    {
        return $this->hasMany(Empleado::className(), ['Area_idArea' => 'idArea']);
    }
    

}
