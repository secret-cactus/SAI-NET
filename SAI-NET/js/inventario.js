function agregar() {
    var codigo = $("#txtCodigo").val();
    var nombre = $("#txtNombre").val();
    var cantidad = $("#numcantidad").val();
    var detalle = $("#textarea1").val();

    if(codigo == "" || nombre == "" || cantidad =="" || detalle == "") {
        alert("Por favor llenar todos los datos");
    }
    else {
        $("#tablaInventario>tbody").append("<tr><td>" + codigo + "</td><td>" + nombre + "</td><td>" + cantidad + "</td><td>" + detalle + "</td></tr>");
    }

    reset();
}

function reset() {
    $("txtcodigo").val("");
    $("txtnombre").val("");
    $("txtcantidad").val("");
    $("txtdetalle").val("");
}