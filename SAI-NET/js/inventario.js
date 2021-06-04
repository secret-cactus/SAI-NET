function agregar() {
    var codigo = $("#txtCodigo").val();
    var nombre = $("#txtNombre").val();
    var cantidad = $("#numcantidad").val();
    var detalle = $("#textarea1").val();

    if(codigo == "") {
        alert("Por favor colocar código!");
    }
    else if (nombre == "") {
        alert("Por favor colocar nombre!");
    }
    else if (cantidad == "") {
        alert("Por favor colocar cantidad!");
    }
    else if (detalle == "") {
        alert("Por favor colocar detalle!");
    }
    else {
        $("#tablaInventario>tbody").append("<tr><td>" + codigo + "</td><td>" + nombre + "</td><td>" + cantidad + "</td><td>" + detalle + "</td></tr>");
        reset();
    }

}

function reset() {
    $("#txtCodigo").val("");
    $("#txtNombre").val("");
    $("#numcantidad").val("");
    $("#textarea1").val("");
}