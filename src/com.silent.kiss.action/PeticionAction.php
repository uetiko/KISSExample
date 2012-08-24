<?php
include_once '../com.silent.kiss.vo/ProcesaVO.php';
include_once '../com.silent.kiss.lib/JSON.php';
include_once '../com.silent.kiss.utils/JJUtils.php';

/**
 * 
 */
class PeticionAction{
	
	function __construct() {
		
	}
    
    public function executeConsultaUsuarios(){
        $vo = new ProcesaVO();
        $json = new Services_JSON();
        return $jsonToBean->encode($vo->consultaUsuarios());
    }
    
    public function executeConsultaUsuario($usuario){
        $usuario = JJUtils::jsonToBean($usuario);
        $vo = new ProcesaVO();
        $json = new Services_JSON();
        $json->encode($vo->consultaDatos($usuario));
    }
    
    public function executeInsertUsuario($user){
        $user = JJUtils::jsonToBean($user);
        $vo = new ProcesaVO();
        $json = new Services_JSON();
        $json->encode($vo->insertaDatos($user));
    }
}


?>
