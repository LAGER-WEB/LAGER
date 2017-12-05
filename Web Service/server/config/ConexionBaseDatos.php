<?php
include_once("../persistencia/DatosConexion.php");
class ConexionBaseDatos {
    private static $array = array();
    public static function DatosConexiones(){
        $array = array();
        $array[] = new DatosConexion("local","localhost","LAGER","root","1234");
        $array[] = new DatosConexion("cpanel","sql313.byethost7.com","b7_21140755_LAGER","b7_21140755","jose12345");
        return $array;
    }
}