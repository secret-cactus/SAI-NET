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