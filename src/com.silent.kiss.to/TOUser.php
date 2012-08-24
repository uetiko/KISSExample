<?php
/**
 * 
 */
class TOUser{
	private $idUser;
    private $idMember;
    private $idPais;
    private $userName;
    private $nombre;
	function __construct() {
	    
	}
    
    public function setIdUser($idUser){
        $this->idUser = $idUser;
    }
    
    public function getIdUser(){
        return $this->idUser;
    }
    
    public function setIdMember($idMember){
        $this->idMember = $idMember;
    }
    
    public function getIdMember(){
        return $this->idMember;
    }
    
    public function setidPais($idPais){
        $this->idPais;
    }
    
    public function getIdPais(){
        return $this->idPais;
    }
    
    public function setUserName($userName){
        $this->userName = $userName;
    }
    
    public function getUserName(){
        return $this->userName;
    }
    
    public function setNombre($nombre){
        $this->nombre = $nombre;
    }
    public function getNombre(){
        return $this->nombre;
    }
}

?>