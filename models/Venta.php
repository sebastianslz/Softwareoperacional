<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "venta".
 *
 * @property integer $idVenta
 * @property string $Fecha
 * @property integer $Cliente_Cedula
 * @property integer $producto_idProducto
 * @property integer $empleado_Cedula
 * @property integer $cantidad
 *
 * @property Cliente $clienteCedula
 * @property Empleado $empleadoCedula
 * @property Producto $productoIdProducto
 */
class Venta extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'venta';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idVenta', 'Fecha', 'Cliente_Cedula', 'producto_idProducto', 'empleado_Cedula', 'cantidad'], 'required'],
            [['idVenta', 'Cliente_Cedula', 'producto_idProducto', 'empleado_Cedula', 'cantidad'], 'integer'],
            [['Fecha'], 'safe'],
            [['Cliente_Cedula'], 'exist', 'skipOnError' => true, 'targetClass' => Cliente::className(), 'targetAttribute' => ['Cliente_Cedula' => 'Cedula']],
            [['empleado_Cedula'], 'exist', 'skipOnError' => true, 'targetClass' => Empleado::className(), 'targetAttribute' => ['empleado_Cedula' => 'Cedula']],
            [['producto_idProducto'], 'exist', 'skipOnError' => true, 'targetClass' => Producto::className(), 'targetAttribute' => ['producto_idProducto' => 'idProducto']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idVenta' => 'Id Venta',
            'Fecha' => 'Fecha',
            'Cliente_Cedula' => 'Cliente  Cedula',
            'producto_idProducto' => 'Producto Id Producto',
            'empleado_Cedula' => 'Empleado  Cedula',
            'cantidad' => 'Cantidad',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getClienteCedula()
    {
        return $this->hasOne(Cliente::className(), ['Cedula' => 'Cliente_Cedula']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEmpleadoCedula()
    {
        return $this->hasOne(Empleado::className(), ['Cedula' => 'empleado_Cedula'])->inverseOf('venta');
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductoIdProducto()
    {
        return $this->hasOne(Producto::className(), ['idProducto' => 'producto_idProducto']);
    }
}
