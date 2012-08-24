<?php
include_once '../com.silent.kiss.vo/ProcesaVO.php';
include_once '../com.silent.kiss.to/TOUser.php';

$user = new TOUser();
$user->setIdUser(1);
$vo = new ProcesaVO();
print_r($vo->consultaDatos($user));
?>