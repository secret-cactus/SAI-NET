<%@ Page Title="Usuarios" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="SAI_NET.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>

        <script type="text/javascript" src="js/jquery-3.6.0.js"></script>
        <script type="text/javascript" src="js/listado-usuarios.js"></script>
        <section class=" container section">
            <h1 class="header">Usuarios</h1>
        </section>

        <section class="section container">

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
                        <input type="date" name="txtCumple" id="txtCumple" onblur="calcular_edad();">
                        <label for="txtCumple">Cumpleaños</label>
                    </div>

                    <div class="input-field">
                        <input type="number" name="txtEdad" id="txtEdad" readonly>
                        <label for="txtEdad">Edad</label>
                    </div>

                    <h6>Género</h6>
                    <label>
                        <input name="rbtnGenero" type="radio" value="Masculino" />
                        <span>Masculino</span>
                    </label>
                    <label>
                        <input name="rbtnGenero" type="radio" value="Femenino" />
                        <span>Femenino</span>
                    </label>
                    <label>
                        <input name="rbtnGenero" type="radio" value="Otro" />
                        <span>Otro</span>
                    </label>

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
                                <input type="checkbox" class="filled-in" name="permisos" value="inventario" />
                                <span>Puede agregar, modificar, consultar y eliminar registros del inventario.</span>
                            </label>
                        </p>
                        <br>
                        <p>
                            <label>
                                <input type="checkbox" class="filled-in" name="permisos" value="usuarios" />
                                <span>Puede agregar, modificar, consultar y eliminar registros del usuario.</span>
                            </label>
                        </p>
                        <br>
                        <p>
                            <label>
                                <input type="checkbox" class="filled-in" name="permisos" value="bodega" />
                                <span>Puede retirar y devolver del inventario.</span>
                            </label>
                        </p>

                        <div class="input-field">
                            <input type="number" name="contador" id="contador" readonly value="0">
                            <label for="contador">Nuevos registros:</label>
                        </div>

                        <button class="btn indigo darken-4 btnVolver" name="btnAgregar" onclick="agregar_usuario();">agregar</button>
                        <button class="btn indigo darken-2 btnVolver" name="btnAgregar" onclick="reset();">limpiar</button>
                    </div>

                </div>

            </div>

        </section>

        <section class="container section">
            <table id="tablaUsuarios">
                <tr>
                    <th>Número</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Edad</th>
                    <th>Genero</th>
                    <th>Permisos</th>
                </tr>
                <!--
                <tr>
                    <td>000000</td>
                    <td>Administrador</td>
                    <td>admin@inacapmail.cl</td>
                    <td>
                        <span class="new badge indigo" data-badge-caption="bodega"></span>
                        <span class="new badge blue" data-badge-caption="inventario"></span>
                        <span class="new badge cyan" data-badge-caption="usuarios"></span>
                    </td>
                    <td>
                        <button class="btnModificar btn green">modificar</button>
                        <button class="btnEliminar btn disabled">eliminar</button>
                    </td>
                </tr>
                     -->
            </table>
        </section>

        <p name=""></p>

    </main>


    <script>
        $(document).ready(function () {
            $('.sidenav').sidenav();
        });
    </script>

    <!-- Mantener importación de js al final del cuerpo-->
    <script type="text/javascript" src="js/materialize.js"></script>
</asp:Content>
