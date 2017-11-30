<?php
class DetalleFactura
{
   public $idFactura;
   public $idProducto;
   public $cantidad;

   function __construct(int $idFactura,int $idProducto,int $cantidad){
      $this->idFactura = $idFactura;
      $this->idProducto = $idProducto;
      $this->cantidad = $cantidad;
   }
}
?>