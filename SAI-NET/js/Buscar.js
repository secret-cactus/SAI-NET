
var usuario1 = {
    "numero": 0,
    "nombre": "Administrador",
    "email": "admin@inacapmail.cl",
    "edad": 99,
    "genero": "Otro",
    "permisos": "Bodega, Inventario, Usuarios"
}

var usuario2 = {
    "numero": 1,
    "nombre": "Diego Aravena",
    "email": "diego.aravena02@inacapmail.cl",
    "edad": 23,
    "genero": "Masculino",
    "permisos": "Bodega, Inventario"
}

var usuario3 = {
    "numero": 2,
    "nombre": "Pablo Amion",
    "email": "pablo.amion@inacapmail.cl",
    "edad": 21,
    "genero": "Masculino",
    "permisos": "Bodega"
}

var usuarios = {
    "admin@inacapmail.cl": usuario1,
    "diego.aravena02@inacapmail.cl": usuario2,
    "pablo.amion@inacapmail.cl": usuario3
}

var articulo1 = {
    "codigo": 1,
    "nombre": "Cable Ethernet 1.5m",
    "cantidad": 5,
    "detalle" : "Utilizados para laboratorio 1"
}

var articulo2 = {
    "codigo": 2,
    "nombre": "Router Cisco 5Ghz",
    "cantidad": 1,
    "detalle": "Sin funcionar: consultar con técnico"
}

var articulo3 = {
    "codigo": 3,
    "nombre": "Switch Cisco 10 entradas",
    "cantidad": 1,
    "detalle": "Una entrada no funciona: consultar con técnico"
}

var articulos = {
    "1": articulo1,
    "2": articulo2,
    "3": articulo3
}

function Buscar() {
    var barra_busqueda = $("#txtSearch").val();

    if ($("#cbxSearch option:selected").val() == "usuario") {
        var usuario = usuarios[barra_busqueda];

        if (typeof usuario !== 'undefined') {
            var row = "<tr><td>" + usuario["numero"] + "</td>" +
                "<td>" + usuario["nombre"] + "</td>" +
                "<td>" + usuario["email"] + "</td>" +
                "<td>" + usuario["edad"] + "</td>" +
                "<td>" + usuario["genero"] + "</td>" +
                "<td>" + usuario["permisos"] + "</td></tr>";
            $("#tablaUsuarios>tbody").prepend(row);

        } else {
            alert("Usuario no encontrado");
        }

    } else if ($("#cbxSearch option:selected").val() == "inventario") {

        var articulo = articulos[barra_busqueda];

        if (typeof articulo !== 'undefined') {
            var row = "<tr><td>" + articulo["codigo"] + "</td>" +
                "<td>" + articulo["nombre"] + "</td>" +
                "<td>" + articulo["cantidad"] + "</td>" +
                "<td>" + articulo["detalle"] + "</td></tr>";
            $("#tablaInventario>tbody").prepend(row);

        } else {
            alert("Artículo no encontrado");
        }
    } 

}

function Cambiar_Tabla() {
    var tabla = $("#cbxSearch option:selected").val();

    switch (tabla) {
        case "usuario":
            $("#tablaUsuarios").show();
            $("#tablaInventario").hide();
            break;
        case "inventario":
            $("#tablaUsuarios").hide();
            $("#tablaInventario").show();
            break;

        default:
    }
}


