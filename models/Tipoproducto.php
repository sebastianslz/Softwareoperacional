<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tipoproducto".
 *
 * @property integer $idtipoproducto
 * @property string $nombre
 * @property string $descripcion
 *
 * @property Producto[] $productos
 */
class Tipoproducto extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tipoproducto';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nombre', 'descripcion'], 'required'],
            [['nombre', 'descripcion'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idtipoproducto' => 'Idtipoproducto',
            'nombre' => 'Nombre',
            'descripcion' => 'Descripcion',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductos()
    {
        return $this->hasMany(Producto::className(), ['tipoProducto_idtipoProducto' => 'idtipoproducto']);
    }
}
