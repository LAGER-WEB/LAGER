<?php
class Productos
{
   public $idProducto;
   public $descripcion;
   public $marca;
   public $precio;
   public $idTalla;

   function __construct(int $idProducto,string $descripcion,string $marca,float $precio,int $idTalla){
      $this->idProducto = $idProducto;
      $this->descripcion = $descripcion;
      $this->marca = $marca;
      $this->precio = $precio;
      $this->idTalla = $idTalla;
   }
}
?>