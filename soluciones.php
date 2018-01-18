<?php  
    echo resolverSistema([[4,8,2,8],[3,5,4,10],[5,7,1,8]]);

  function multiplicarArrayParaConstante($array, $constante){
        for( $i=0 ; $i <= count($array) - 1 ; $i++){
            $array[$i] = $array[$i] * $constante;
        }
        return $array;
    }
    function restarDosArrays($arrayA, $arrayB){
        $resultado = array();
        for( $i=0 ; $i <= count($arrayA) - 1 ; $i++){
            array_push($resultado, $arrayA[$i] - $arrayB[$i]);
        }
        return $resultado;
    }
    function mostrarFila($fila){
        $toShow = '';
        for( $i=0 ; $i<=count($fila)-1; $i++){
            $toShow = $toShow.$fila[$i].' ';
        }
        return trim($toShow,' ');
    }
    function mostrarSistema($sistema){
        $toShow = '';
        for( $i=0 ; $i<=count($sistema)-1; $i++){
            $toShow = $toShow.mostrarFila($sistema[$i]).'<br/>';
        }
        return $toShow;
    }
    function resolverSistema($sistema){
        $n = count($sistema);
        for($i = 0; $i <= $n-1 ; $i++){
            $sistema[$i] = multiplicarArrayParaConstante($sistema[$i],1/$sistema[$i][$i]);    
            for($j = 0; $j <= $n-1 ; $j++){
                if(!($i == $j)){
                    $sistema[$j]=restarDosArrays($sistema[$j],multiplicarArrayParaConstante($sistema[$j],$sistema[$i][$i]));    
                }
            }    
        }
        for($i = 0; $i <= $n-1 ; $i++){
            for($j = 0; $j <= $n-1 ; $j++){
                if($sistema[$i][$j]="NAN"){
                    return "No hay solucion";
                }
            }
        }
        
        return mostrarSistema($sistema);
    }
?>