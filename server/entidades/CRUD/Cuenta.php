<?php
class Cuenta
{
   public $idCuenta;
   public $idTipoUsuario;
   public $nombre;
   public $clave;

   function __construct(int $idCuenta,string $idTipoUsuario,string $nombre,string $clave){
      $this->idCuenta = $idCuenta;
      $this->idTipoUsuario = $idTipoUsuario;
      $this->nombre = $nombre;
      $this->clave = $clave;
   }
}
?>