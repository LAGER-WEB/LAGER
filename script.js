var urlWS = "";
$(document).ready(function () {
    urlWS = "http://lagercshop.byethost7.com/server/";
    leer(0);
});

function limpiar() {
    document.getElementById("id").value = "";
    document.getElementById("idUsuario").value = "";
    document.getElementById("nombres").value = "";
    document.getElementById("apellidos").value = "";
    document.getElementById("direccion").value = "";
}

function leerfiltrado() {
    filtro = document.getElementById("descripcionBuscar").value;
    urltorequest = urlWS + "Usuario/leer_filtrado";
    $.ajax({
        type: "get",
        url: urltorequest + "?columna=descripcion&tipo_filtro=contiene&filtro=" + filtro,
        async: true,
        success: function (respuesta) {
            toshow = JSON.parse(respuesta);
            cabeceraTabla = "<table class=\"table table-condensed\"><thead><tr><th>id</th><th>idUsuario</th><th>Nombres</th><th>Apellidos</th><th>Direccion</th></tr></thead><tbody>";
            pieTabla = "</tbody></table>";
            contenidoTabla = "";
            $(toshow).each(function (key, value) {
                contenidoTabla = contenidoTabla + "<tr><td>" + value.id + "</td><td>" + value.idUsuario + "</td><td>" + value.nombres + "</td><td>" + value.apellidos + "</td><td>" + value.direccion + "</td></tr>";
            });
            document.getElementById("respuesta").innerHTML = cabeceraTabla + contenidoTabla + pieTabla;
        }
    });
}

function leer(id) {
    if (id == 0) {
        urltorequest = urlWS + "Usuario/leer";
    } else {
        urltorequest = urlWS + "Usuario/leer?id=" + id;
    }
    $.ajax({
        type: "get",
        url: urltorequest,
        async: true,
        success: function (respuesta) {
            toshow = JSON.parse(respuesta);
            cabeceraTabla = "<table class=\"table table-condensed\"><thead><tr><th>id</th><th>idUsuario</th><th>Nombres</th><th>Apellidos</th><th>Direccion</th></tr></thead><tbody>";
            pieTabla = "</tbody></table>";
            contenidoTabla = "";
            $(toshow).each(function (key, value) {
                contenidoTabla = contenidoTabla + "<tr><td>" + value.id + "</td><td>" + value.idUsuario + "</td><td>" + value.nombres + "</td><td>" + value.apellidos + "</td><td>" + value.direccion + "</td></tr>";
            });
            document.getElementById("respuesta").innerHTML = cabeceraTabla + contenidoTabla + pieTabla;
        }
    });
    limpiar();
}

function borrar() {
    id = document.getElementById("id").value;
    urltorequest = urlWS + "Usuario/borrar?id=" + id;
    $.ajax({
        type: "get",
        url: urltorequest,
        async: false,
        success: function (respuesta) {
            if (respuesta == "false") {
                alert("Error al borrar el registro " + id + ".");
            } else {
                alert("Registro borrado: " + id + ".");
            }
        }
    });
    leer(0);
}

function crear() {
    id = document.getElementById("id").value;
    idUsuario = document.getElementById("idUsuario").value;
    nombres = document.getElementById("nombres").value;
    apellidos = document.getElementById("apellidos").value;
    direccion = document.getElementById("direccion").value;
    urltorequest = urlWS + "Usuario/crear";
    $.ajax({
        type: "post",
        url: urltorequest,
        data: JSON.stringify({ id: id, idUsuario: idUsuario, nombres: nombres, apellidos: apellidos, direccion: direccion }),
        async: true,
        success: function (respuesta) {
            if (respuesta == "false") {
                alert("Error al crear el registro");
            } else {
                alert("Registro creado.");
            }
        }
    });
    leer(0);
}

function actualizar() {
    id = document.getElementById("id").value;
    idUsuario = document.getElementById("idUsuario").value;
    nombres = document.getElementById("nombres").value;
    apellidos = document.getElementById("apellidos").value;
    direccion = document.getElementById("direccion").value;
    urltorequest = urlWS + "Usuario/actualizar";
    $.ajax({
        type: "post",
        url: urltorequest,
        data: JSON.stringify({ id: id, idUsuario: idUsuario, nombres: nombres, apellidos: apellidos, direccion: direccion }),
        async: false,
        success: function (respuesta) {
            if (respuesta == "false") {
                alert("Error al actualizar el registro");
            } else {
                alert("Registro actualizado.");
            }
        }
    });
    leer(0);
}			