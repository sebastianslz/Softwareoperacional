<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "producto".
 *
 * @property integer $idProducto
 * @property string $Nombre
 * @property string $Descripcion
 * @property string $fechaIngreso
 * @property integer $Cantidad
 * @property integer $numeroLote
 * @property double $Peso
 * @property string $Dimesiones
 * @property double $Valor
 * @property integer $tipoProducto_idtipoProducto
 * @property integer $empleado_Cedula
 *
 * @property Empleado $empleadoCedula
 * @property Tipoproducto $tipoProductoIdtipoProducto
 * @property Productoventa[] $productoventas
 * @property Venta[] $ventaIdVentas
 */
class Producto extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'producto';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idProducto', 'Nombre', 'Descripcion', 'fechaIngreso', 'Cantidad', 'numeroLote', 'Peso', 'Dimesiones', 'Valor', 'tipoProducto_idtipoProducto', 'empleado_Cedula'], 'required'],
            [['idProducto', 'Cantidad', 'numeroLote', 'tipoProducto_idtipoProducto', 'empleado_Cedula'], 'integer'],
            [['fechaIngreso'], 'safe'],
            [['Peso', 'Valor'], 'number'],
            [['Nombre', 'Dimesiones'], 'string', 'max' => 20],
            [['Descripcion'], 'string', 'max' => 45],
            [['empleado_Cedula'], 'exist', 'skipOnError' => true, 'targetClass' => Empleado::className(), 'targetAttribute' => ['empleado_Cedula' => 'Cedula']],
            [['tipoProducto_idtipoProducto'], 'exist', 'skipOnError' => true, 'targetClass' => Tipoproducto::className(), 'targetAttribute' => ['tipoProducto_idtipoProducto' => 'idtipoProducto']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idProducto' => 'Id Producto',
            'Nombre' => 'Nombre',
            'Descripcion' => 'Descripcion',
            'fechaIngreso' => 'Fecha Ingreso',
            'Cantidad' => 'Cantidad',
            'numeroLote' => 'Numero Lote',
            'Peso' => 'Peso',
            'Dimesiones' => 'Dimesiones',
            'Valor' => 'Valor',
            'tipoProducto_idtipoProducto' => 'Tipo Producto Idtipo Producto',
            'empleado_Cedula' => 'Empleado  Cedula',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEmpleadoCedula()
    {
        return $this->hasOne(Empleado::className(), ['Cedula' => 'empleado_Cedula']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTipoProductoIdtipoProducto()
    {
        return $this->hasOne(Tipoproducto::className(), ['idtipoProducto' => 'tipoProducto_idtipoProducto']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductoventas()
    {
        return $this->hasMany(Productoventa::className(), ['Producto_idProducto' => 'idProducto']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getVentaIdVentas()
    {
        return $this->hasMany(Venta::className(), ['idVenta' => 'Venta_idVenta'])->viaTable('productoventa', ['Producto_idProducto' => 'idProducto']);
    }
}
