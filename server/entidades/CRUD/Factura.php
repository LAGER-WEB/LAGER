<?php
class Factura
{
   public $idFactura;
   public $fecha;
   public $idUsuario;

   function __construct(int $idFactura,date $fecha,string $idUsuario){
      $this->idFactura = $idFactura;
      $this->fecha = $fecha;
      $this->idUsuario = $idUsuario;
   }
}
?>