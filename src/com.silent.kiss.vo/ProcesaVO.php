<?php
include_once '../com.silent.kiss.dao/InsertDAO.php';

/**
 * 
 */
class ProcesaVO{
	
	function __construct() {
		
	}
    
    public function insertaDatos(TOUser $user){
        $dao = new InsertDAO();
        return array("mensaje" => $dao->insertUser($user));
    }
    
    public function consultaDatos(TOUser $user){
        $dao = new InsertDAO();
        //print_r($dao->consultaUsuario($user));
        return array("usuario" => $dao->consultaUsuario($user));
    }
    
    public function consultaUsuarios(){
        $dao = new InsertDAO();
        return array("usuarios" => $dao->consultaUsuarios());
    }
    
}

?>