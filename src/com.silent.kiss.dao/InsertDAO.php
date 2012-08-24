<?php
include_once '../com.silent.kiss.to/TOUser.php';
include_once '../com.silent.kiss.dao/Connection.php';
include_once '../com.silent.kiss.config/DBConfig.php';
include_once '../com.silent.kiss.utils/JJLogger.php';

/**
 * 
 */
class InsertDAO {
	private $cnn;
    private $conf;
    private $log;
    function __construct() {
        $this -> conf = new DBConfig();
        $this -> cnn = new Connection($this -> conf -> getUsuarioPostgres(), 
        $this -> conf -> getPasswdPostgres(), $this -> conf -> getHostPostgres(), 
        $this -> conf -> getPuertoPostgres(), $this -> conf -> getBasePostgres());
        $this -> log = new JJLogger("conexion_error", "conexion_notes", "conexion_query", "../logs");
    }
    
    public function insertUser(TOUser $user){
        try{
            $this->cnn->openPersistentPgConnection();
            $insert = "insert into tbl_usr(id_membrecia, id_pais, user_name, nombre) values('{$user->getIdMember()}', '{$user->getIdPais()}', '{$user->getUserName()}', '{$user->getNombre()}');";
            $result = pg_query($this->cnn, $insert);
            $this->cnn->closeCnnPg();
        }catch(exception $e){
            $this->log->log($e->getTrace(), $e->getMessage(), "SEVERE");
        }
        if($result){
            return "Se ha insertado";
        }else{
            return "Error al insertar";
        }
    }
    
    public function consultaUsuario(TOUser $user){
        $this->cnn->openPersistentPgConnection();
        $arrayName = array();
        $query = "select u.nombre usuario, m.descripcion membresia, ps.descripcion pais, o.id_orden orden, p.descripcion producto, s.nombre sucursal
from tbl_usr u, tbl_membrecia m, tbl_orden o, tbl_producto p, tbl_sucursal s, tbl_pais ps
where u.id_usr = {$user->getIdUser()}
and u.id_pais = ps.id_pais
and u.id_membrecia = m.id_membrecia
and o.id_producto = p.id_producto
and u.id_usr = o.id_usr
and s.id_sucursarl = p.id_sucursal";
        $result = pg_query($this->cnn->getPgConnection(), $query);
        $this->cnn->closeCnnPg();
        while ($row = pg_fetch_assoc($result)) {
            $arrayName[] = $row;
        }
        return $arrayName;
    }
    
    public function consultaUsuarios(){
        $this->cnn->openPersistentPgConnection();
        $arrayResult;
        $query = "select u.id_usr, m.descripcion membrecia, p.descripcion pais, u.user_name userName, u.nombre
from tbl_usr u, tbl_membrecia m, tbl_pais p
where u.id_membrecia = m.id_membrecia
and u.id_pais = p.id_pais";
        $result = pg_query($this->cnn->getPgConnection(), $query);
        $this->cnn->closeCnnPg();
        while ($row = pg_fetch_assoc($result)) {
            $arrayResult[] = $row;
        }
        return $arrayResult;
    }
}

?>