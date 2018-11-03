<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Auditoria */

$this->title = 'Update Auditoria: ' . $model->idAuditoria;
$this->params['breadcrumbs'][] = ['label' => 'Auditorias', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->idAuditoria, 'url' => ['view', 'id' => $model->idAuditoria]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="auditoria-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
