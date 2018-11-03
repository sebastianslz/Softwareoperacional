<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "productoventa".
 *
 * @property integer $Producto_idProducto
 * @property integer $Venta_idVenta
 * @property string $Cantidad
 *
 * @property Producto $productoIdProducto
 * @property Venta $ventaIdVenta
 */
class Productoventa extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'productoventa';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Producto_idProducto', 'Venta_idVenta', 'Cantidad'], 'required'],
            [['Producto_idProducto', 'Venta_idVenta'], 'integer'],
            [['Cantidad'], 'string', 'max' => 45],
            [['Producto_idProducto'], 'exist', 'skipOnError' => true, 'targetClass' => Producto::className(), 'targetAttribute' => ['Producto_idProducto' => 'idProducto']],
            [['Venta_idVenta'], 'exist', 'skipOnError' => true, 'targetClass' => Venta::className(), 'targetAttribute' => ['Venta_idVenta' => 'idVenta']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'Producto_idProducto' => 'Producto Id Producto',
            'Venta_idVenta' => 'Venta Id Venta',
            'Cantidad' => 'Cantidad',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductoIdProducto()
    {
        return $this->hasOne(Producto::className(), ['idProducto' => 'Producto_idProducto']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getVentaIdVenta()
    {
        return $this->hasOne(Venta::className(), ['idVenta' => 'Venta_idVenta']);
    }
}
