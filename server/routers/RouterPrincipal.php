<?php
include_once('../routers/RouterBase.php');
include_once('../routers/RouterFuncionalidadesEspecificas.php');
function cargarRouters() {
   define("routersPath", "../routers/");
   $files = glob(routersPath."CRUD/*.php");
   foreach ($files as $filename) {
      include_once($filename);
   }
}
cargarRouters();

class RouterPrincipal extends RouterBase
{
   function route(){
      switch(strtolower($this->datosURI->controlador)){
         case "cuenta":
            $routerCuenta = new RouterCuenta();
            return json_encode($routerCuenta->route());
            break;
         case "detallefactura":
            $routerDetalleFactura = new RouterDetalleFactura();
            return json_encode($routerDetalleFactura->route());
            break;
         case "detalletalla":
            $routerDetalleTalla = new RouterDetalleTalla();
            return json_encode($routerDetalleTalla->route());
            break;
         case "factura":
            $routerFactura = new RouterFactura();
            return json_encode($routerFactura->route());
            break;
         case "productos":
            $routerProductos = new RouterProductos();
            return json_encode($routerProductos->route());
            break;
         case "usuario":
            $routerUsuario = new RouterUsuario();
            return json_encode($routerUsuario->route());
            break;
         default:
            $routerEspeficias = new RouterFuncionalidadesEspecificas();
            return $routerEspeficias->route();
            break;
      }
   }
}
