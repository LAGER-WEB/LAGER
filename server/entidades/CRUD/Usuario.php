<?php
class Usuario
{
   public $id;
   public $idUsuario;
   public $nombres;
   public $apellidos;
   public $direccion;

   function __construct(int $id,string $idUsuario,string $nombres,string $apellidos,string $direccion){
      $this->id = $id;
      $this->idUsuario = $idUsuario;
      $this->nombres = $nombres;
      $this->apellidos = $apellidos;
      $this->direccion = $direccion;
   }
}
?>