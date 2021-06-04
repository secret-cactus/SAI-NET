$(document).ready(function (e) {
    $("#btnAgregar").click(agregar);
});

function agregar() {
    var codigo = $("#txtcodigo").val();
    var nombre = $("#txtnombre").val();
    var cantidad = $("#txtcantidad").val();
    var detalle = $("#txtdetalle").val();

    if(codigo == "" || nombre == "" || cantidad =="" || detalle == "" {
        alert("Favor llenar todos los datos");
    }
    else {
        $("#tablaInventario").append("<tr><td>"+codigo+"</td><td>"+nombre+"</td><td>"+cantidad+"</td><td>"+detalle+"</td><td>")
    }

    $("txtcodigo").val("");
    $("txtnombre").val("");
    $("txtcantidad").val("");
    $("txtdetalle").val("");
}