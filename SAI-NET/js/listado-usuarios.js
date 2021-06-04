function agregar_usuario() {
    var email = $('#txtEmail').val();
    var nombre = $('#txtNombre').val();
    var genero = $('input[name="rbtnGenero"]:checked').val();
    var password = $('#txtPass').val();
    var passwordConf = $('#txtPassConf').val();
    var permisos = [];

    $.each($("input[name='permisos']:checked"), function () {
        permisos.push($(this).val());
    });


    if (email == '' || nombre == '' || genero == '') {
        alert("Por favor, complete todos los campos.");
    } else if (password != passwordConf) {
        alert("Las contraseñas no coinciden.");
    } else if (permisos.length == 0) {
        alert("Debe dar al menos un permiso al usuario para continuar.");
    } else {
        alert("Correcto!");
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