<?php
include_once '../com.silent.kiss.action/PeticionAction.php';
$action = new PeticionAction();

if(!empty($_POST['peticion'])){
    switch ($_POST['action']) {
        case 'insertar':
            echo $action->executeInsertUsuario($_POST['datos']);
            break;
        case 'consutaUsuario':
            echo $action->executeConsultaUsuario($_POST['usuario']) . "pasa..";
            break;
        case 'ConsultaUsuarios':
            echo $action->executeConsultaUsuarios();
            break;
        default:
            
            break;
    }
}     
?>