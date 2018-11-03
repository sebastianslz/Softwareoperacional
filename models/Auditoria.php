<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "auditoria".
 *
 * @property integer $idAuditoria
 * @property string $Fechal
 * @property string $Hora
 * @property integer $Ingreso
 * @property string $Origen
 * @property string $Navegador
 * @property string $Accion
 * @property string $RegistroAccion
 * @property string $HoraAccion
 * @property string $FechaAccion
 *
 * @property Usuario[] $usuarios
 */
class Auditoria extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'auditoria';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idAuditoria', 'Fechal', 'Hora', 'Ingreso', 'Origen', 'Navegador', 'Accion', 'RegistroAccion', 'HoraAccion', 'FechaAccion'], 'required'],
            [['idAuditoria', 'Ingreso'], 'integer'],
            [['Fechal', 'Hora', 'HoraAccion', 'FechaAccion'], 'safe'],
            [['Origen', 'Navegador', 'Accion', 'RegistroAccion'], 'string', 'max' => 20],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idAuditoria' => 'Id Auditoria',
            'Fechal' => 'Fechal',
            'Hora' => 'Hora',
            'Ingreso' => 'Ingreso',
            'Origen' => 'Origen',
            'Navegador' => 'Navegador',
            'Accion' => 'Accion',
            'RegistroAccion' => 'Registro Accion',
            'HoraAccion' => 'Hora Accion',
            'FechaAccion' => 'Fecha Accion',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUsuarios()
    {
        return $this->hasMany(Usuario::className(), ['Auditoria_idAuditoria' => 'idAuditoria']);
    }
}
