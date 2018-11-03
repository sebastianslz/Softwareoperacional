<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "analisis".
 *
 * @property integer $idAnalisis
 * @property string $fechaAnalisis
 * @property string $Descripcion
 * @property string $Imagen
 */
class Analisis extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'analisis';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['fechaAnalisis', 'Descripcion', 'Imagen'], 'required'],
            [['fechaAnalisis'], 'safe'],
            [['Descripcion'], 'string', 'max' => 100],
            [['Imagen'], 'string', 'max' => 200],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idAnalisis' => 'Id Analisis',
            'fechaAnalisis' => 'Fecha Analisis',
            'Descripcion' => 'Descripcion',
            'Imagen' => 'Imagen',
        ];
    }
}
