
<?php
include_once '../com.silent.kiss.lib/JSON.php';
/**
 * 
 */
abstract class JJUtils{
    
    function __construct() {
        
    }
    
    static public function beanToJson($bean){
        $json = new Services_JSON();
        $array = array();
        return $json->encode($array);
    }
    
    static public function jsonMsgParse($msg){
        $json = new Services_JSON();
        $arrayName = array('mensaje' => $msg);
        return $json->encode($msg);
    }
    
    static public function jsonToBean($obj){
        $bean = new TOUser;
        $arrayName = array();
        $arrayName = $this->jsonToArray($obj);
        
        $bean->setIdUser($arrayName->idUsuario);
        $bean->setIdMember($arrayName->idMember);
        $bean->setNombre($arrayName->nombre);
        $bean->setUserName($arrayName->userName);
        $bean->setidPais($arrayName->pais);
        return $bean;
    }
    
    public function jsonToArray($data){
        $json = new Services_JSON();
        return $json->decode($data);
    }
    
}

?>