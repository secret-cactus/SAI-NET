<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SAI_NET.WebForm1" %>

<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Importar Google Icon font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Importar css de Materialize-->
    <link type="text/css" rel="stylesheet" href="css/materialize.css" media="screen,projection" />

    <link rel="stylesheet" href="css/custom.css">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Inicio de sesión - SAI</title>
</head>

<body class="dark-bg">

    <nav class="nav-wraper blue darken-4">
        <a href="#" class="brand-logo left">SAI</a>
    </nav>

    <%
        // Si Session["contador"] es null, define 'contador' como 2, si no definelo como (int) Session["contador"]
        int contador = Session["contador"] == null ? 3 : (int)Session["contador"];
    %>

    <section class="section">
        <div class="row">
            <div class="col s12 m6 l4 offset-m3 offset-l4 z-depth-2 white-container">
                <h3>Inicie sesión</h3>
                <% if (contador > 0)
                    { %>

                    <form action="Login.aspx" method="POST">
                        <div class="input-field">
                            <input type="email" id="txtMail" required>
                            <label for="txtMail">Correo electrónico</label>
                        </div>
                        <div class="input-field">
                            <input type="password" id="txtPass" required>
                            <label for="txtPass">Contraseña</label>
                        </div>
                        <div class="input-field center">
                            <button class="btn blue darken-4" type="submit">Ingresar</button>
                        </div>
                        <p>Intentos restantes: <%=contador%></p>
                    </form>

                <% } else { %>

                    <form action="Login.aspx?q=Reset" method="post">
                        <p>Se han acabado los intentos</p>
                        <p>Intentos restantes: <%=contador%></p>
                        <div class="input-field center">
                            <button class="btn blue darken-4" type="submit">Reiniciar intentos</button>
                        </div>
                    </form>

                <%} %>
            </div>
        </div>
    </section>


    <!-- Mantener importación de js al final del cuerpo-->
    <script type="text/javascript" src="js/materialize.js"></script>

</body>

</html>
