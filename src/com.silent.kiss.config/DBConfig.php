<?php
include_once '../com.silent.kiss.lib/spyc/spyc.php';

/**
 * 
 */
class DBConfig{
	private $properties;
	function __construct() {
		$this->properties = Spyc::YAMLLoad('../com.silent.kiss.config/DBConfig.yaml');
	}
    
    public function getUsuarioPostgres(){
        return $this->properties['base']['usuario'];
    }
    
    public function getPasswdPostgres(){
        return $this->properties['base']['passwd'];
    }
    
    public function getHostPostgres(){
        return $this->properties['base']['host'];
    }
    
    public function getPuertoPostgres(){
        return $this->properties['base']['puerto'];
    }
    
    public function getBasePostgres(){
        return $this->properties['base']['base'];
    }
}
?>