<?php
class DetalleTalla
{
   public $idTalla;
   public $talla;

   function __construct(int $idTalla,string $talla){
      $this->idTalla = $idTalla;
      $this->talla = $talla;
   }
}
?>