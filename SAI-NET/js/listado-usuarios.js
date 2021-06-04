function agregar_usuario() {
    var email = $('#txtEmail').val();
    var nombre = $('#txtNombre').val();
    var genero = $('input[name="rbtnGenero"]:checked').val();
    var password = $('#txtPass').val();
    var passwordConf = $('#txtPassConf').val();
    var edad = $('#txtEdad').val();
    var permisos = [];

    $.each($("input[name='permisos']:checked"), function () {
        permisos.push($(this).val());
    });


    if (email == '' || nombre == '' || genero == '') {
        alert("Por favor, complete todos los campos.");
    } else if (parseInt(edad) < 18) {
        alert("El usuario debe ser mayor de edad.");
    } else if (password != passwordConf) {
        alert("Las contraseñas no coinciden.");
    } else if (permisos.length == 0) {
        alert("Debe dar al menos un permiso al usuario para continuar.");
    } else {
        var contador = parseInt($("#contador").val());
        contador++;
        $("#contador").val(contador);
        var tabla = $("#tablaUsuarios>tbody");
        var row = "<tr><td>"+ contador +"</td>" +
            "<td>" + nombre +"</td>" +
            "<td>" + email +"</td>" +
            "<td>" + edad +"</td>" +
            "<td>" + genero +"</td>" +
            "<td>"+ conseguir_etiquetas(permisos) +"</td></tr>";
        tabla.append(row);
        reset();
    }

}

function calcular_edad() {

    var fecha = $('#txtCumple').val();

    var hoy = new Date();
    var date = fecha.split('-');

    for (var i = 0; i < date.length; i++) {
        var aux = parseInt(date[i]);
        date[i] = aux;
    }

    var edad = hoy.getFullYear() - date[0];

    if (hoy.getMonth() <= date[1] && hoy.getDate() <= date[2]) {
        edad--;
    }

    $('#txtEdad').val(edad);

}

function conseguir_etiquetas(lista) {
    var aux = "";

    for (var i = 0; i < lista.length; i++) {
        switch (lista[i]) {
            case "bodega":
                aux += "<span class='new badge indigo' data-badge-caption='bodega'></span> "
                break;
            case "usuarios":
                aux += "<span class='new badge cyan' data-badge-caption='usuarios'></span> "
                break;
            case "inventario":
                aux += "<span class='new badge blue' data-badge-caption='inventario'></span> "
                break;
        }

    }

    return aux;

    /*
    <span class="new badge indigo" data-badge-caption="bodega"></span>
    <span class="new badge blue" data-badge-caption="inventario"></span>
    <span class="new badge cyan" data-badge-caption="usuarios"></span>
     */

}

function reset() {
    $('#txtEmail').val('');
    $('#txtNombre').val('');
    $('#txtPass').val('');
    $('#txtPassConf').val('');
    $('#txtEdad').val('');
}