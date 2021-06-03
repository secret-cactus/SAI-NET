<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="SAI_NET.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section class=" container section">
            <h1 class="header">Inventario</h1>
        </section>
        <section class="section">

            <div class="row">

                <div class="col s12 m6 center offset-m3">
                    <div class="input-field">
                        <input type="text" id="txtCodigo">
                        <label class="active" for="txtCodigo">Código</label>
                    </div>

                    <div class="input-field">
                        <input type="text" id="txtNombre">
                        <label class="active" for="txtNombre">Nombre</label>
                    </div>

                    <div class="input-field">
                        <input type="text" id="numcantidad">
                        <label class="active" for="numcantidad">Cantidad</label>
                    </div>

                    <div class="input-field">
                        <textarea id="textarea1" class="materialize-textarea"></textarea>
                        <label class="active" for="textarea1">Detalle</label>
                    </div>

                    <button class="btn blue btnVolver">Cancelar</button>
                    <button class="btn indigo darken-4 btnVolver">Terminar</button>

                </div>


            </div>

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
                        <td>No funciona.
                        </td>
                        <td>
                            <button class="btnModificar btn green">modificar</button>
                            <button class="btnEliminar btn red">eliminar</button></td>
                    </tr>
                    <tr>
                        <td>000001</td>
                        <td>Router Cisco 5Ghz.</td>
                        <td>1</td>
                        <td>
                            <i>Sin detalles.</i>
                        </td>
                        <td>
                            <button class="btnModificar btn green">modificar</button>
                            <button class="btnEliminar btn red">eliminar</button></td>
                    </tr>
                </tbody>


            </table>
        </section>

        <div class="fixed-action-btn">
            <a class="btn-floating btn-large red" href="formularios\articulo.aspx">
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
                var destino = './formularios/articulo.aspx';
                window.location.href = destino;
            });
            $('.btnEliminar').click(function () {
                alert("Se eliminaría un registro.")
            });

        });
    </script>
</asp:Content>
