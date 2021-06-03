<%@ Page Title="Formulario de usuario" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="SAI_NET.formularios.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main class="container">

        <h1 class="header">Formulario de usuario</h1>

        <section class="section">

            <div class="row">

                <div class="col s12 m7">

                    <div class="input-field">
                        <input type="email" name="" id="txtEmail">
                        <label for="txtEmail">Correo electronico</label>
                    </div>

                    <div class="input-field">
                        <input type="text" name="" id="txtNombre">
                        <label for="txtNombre">Nombre Completo</label>
                    </div>

                    <div class="input-field">
                        <input type="text" name="" id="txtEdad">
                        <label for="txtApellido">Cumpleaños</label>
                    </div>
                    <p>
                        <h6>Género</h6>
                        <label>
                            <input name="rbtnGenero" type="radio" checked />
                            <span>Masculino</span>
                        </label>
                        <label>
                            <input name="rbtnGenero" type="radio" />
                            <span>Femenino</span>
                        </label>
                        <label>
                            <input name="rbtnGenero" type="radio" />
                            <span>Otro</span>
                        </label>
                    </p>
                    <div class="input-field">
                        <input type="password" name="" id="txtPass">
                        <label for="txtPass">Contraseña</label>
                    </div>

                    <div class="input-field">
                        <input type="password" name="" id="txtPassConf">
                        <label for="txtPassConf">Confirma la contraseña </label>
                    </div>



                </div>

                <div class="row">
                    <div class="col s12 m5">

                        <h5>Permisos</h5>

                        <p>
                            <label>
                                <input type="checkbox" class="filled-in" checked="checked" />
                                <span>Puede agregar, modificar, consultar y eliminar registros del inventario.</span>
                            </label>
                        </p>
                        <br>
                        <p>
                            <label>
                                <input type="checkbox" class="filled-in" checked="checked" />
                                <span>Puede agregar, modificar, consultar y eliminar registros del usuario.</span>
                            </label>
                        </p>
                        <br>
                        <p>
                            <label>
                                <input type="checkbox" class="filled-in" checked="checked" />
                                <span>Puede retirar y devolver del inventario.</span>
                            </label>
                        </p>
                        <button class="btn blue btnVolver">Cancelar</button>
                        <button class="btn indigo darken-4 btnVolver">Terminar</button>
                    </div>

                </div>

            </div>

        </section>

    </main>

    <!-- Mantener importación de js al final del cuerpo-->
    <script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="../js/materialize.js"></script>

    <script>
        $(document).ready(function() {
            $('.sidenav').sidenav();
            $('.btnVolver').click(function() {
                var destino = '../usuarios.aspx';
                window.location.href = destino;
            });
        });
    </script>
</asp:Content>
