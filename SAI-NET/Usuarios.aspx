<%@ Page Title="Usuarios" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="SAI_NET.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section class=" container section">
            <h1 class="header">Usuarios</h1>
        </section>

        <section class="container section">
            <table>
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Nombre</th>
                        <th>Correo</th>
                        <th>Permisos</th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody>
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
                    <tr>
                        <td>000001</td>
                        <td>Pañolero</td>
                        <td>paniolero@inacapmail.cl</td>
                        <td>
                            <span class="new badge indigo" data-badge-caption="bodega"></span>
                            <span class="new badge blue" data-badge-caption="inventario"></span>
                        </td>
                        <td>
                            <button class="btnModificar btn green">modificar</button>
                            <button class="btnEliminar btn red">eliminar</button>
                        </td>
                    </tr>
                    <tr>
                        <td>000002</td>
                        <td>Docente</td>
                        <td>docente@inacapmail.cl</td>
                        <td>
                            <span class="new badge indigo" data-badge-caption="bodega"></span>
                        </td>
                        <td>
                            <button class="btnModificar btn green">modificar</button>
                            <button class="btnEliminar btn red">eliminar</button>
                        </td>
                    </tr>
                </tbody>


            </table>
        </section>

        <div class="fixed-action-btn">
            <a class="btn-floating btn-large red" href="formularios\usuario.aspx">
                <i class="large material-icons">add</i>
            </a>
        </div>

    </main>

    <!-- Mantener importación de js al final del cuerpo-->
    <script type="text/javascript" src="js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="js/materialize.js"></script>

    <script>
        $(document).ready(function () {
            $('.sidenav').sidenav();
            $('.fixed-action-btn').floatingActionButton();
            $('.btnModificar').click(function () {
                var destino = './formularios/usuario.aspx';
                window.location.href = destino;
            });
            $('.btnEliminar').click(function () {
                alert("Se eliminaría un registro.")
            });

        });
    </script>
</asp:Content>
