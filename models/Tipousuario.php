<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tipousuario".
 *
 * @property string $idtipoUsuario
 * @property string $Nombre
 * @property string $Descripcion
 */
class Tipousuario extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tipousuario';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idtipoUsuario', 'Nombre', 'Descripcion'], 'required'],
            [['idtipoUsuario', 'Nombre'], 'string', 'max' => 30],
            [['Descripcion'], 'string', 'max' => 60],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idtipoUsuario' => 'Idtipo Usuario',
            'Nombre' => 'Nombre',
            'Descripcion' => 'Descripcion',
        ];
    }
}
