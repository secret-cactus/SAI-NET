<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="SAI_NET.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section class=" container section">
            <h1 class="header">Inventario</h1>
        </section>

        <section class="container section">
            <table>
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Nombre</th>
                        <th>Cantidad</th>
                        <th>Detalle</th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>000000</td>
                        <td>Cable Ethernet 1.5m</td>
                        <td>5</td>
                        <td>
                            No funciona.
                        </td>
                        <td><button class="btnModificar btn green">modificar</button>
                            <button class="btnEliminar btn red">eliminar</button></td>
                    </tr>
                    <tr>
                        <td>000001</td>
                        <td>Router Cisco 5Ghz.</td>
                        <td>1</td>
                        <td>
                            <i>Sin detalles.</i>
                        </td>
                        <td><button class="btnModificar btn green">modificar</button>
                            <button class="btnEliminar btn red">eliminar</button></td>
                    </tr>
                </tbody>


            </table>
        </section>

        <div class="fixed-action-btn">
            <a class="btn-floating btn-large red" href="formularios\articulo.html">
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
                var destino = './formularios/articulo.html';
                window.location.href = destino;
            });
            $('.btnEliminar').click(function () {
                alert("Se eliminaría un registro.")
            });

        });
    </script>
</asp:Content>
