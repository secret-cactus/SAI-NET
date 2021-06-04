<%@ Page Title="Inventario" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="SAI_NET.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>

        <section class="container section">
            <h1 class="header">Inventario</h1>
        </section>
        <section class="section">

            <div class="row">
                <form action="Inventario.aspx" name="Inventario" method="post"></form>
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
                        <input type="number" id="numcantidad" min="1">
                        <label class="active" for="numcantidad">Cantidad</label>
                    </div>

                    <div class="input-field">
                        <textarea id="textarea1" class="materialize-textarea"></textarea>
                        <label class="active" for="textarea1">Detalle</label>
                    </div>

                    <button name="btnAgregar" id="btnAgregar" class="btn indigo darken-4" onclick="agregar();">Agregar</button>
                    <button name="btnLimpiar" id="btnLimpiar" class="btn blue btnVolver" onclick="reset();">Limpiar</button>
                    <%--<button class="btn indigo darken-4 btnVolver">Terminar</button>--%>
                    <%--<button class="btn blue btnVolver">Cancelar</button>--%>
                </div>
                
    <script type="text/javascript" src="js/inventario.js"></script>

            </div>

        </section>

        <section class="container section">
            <table id="tablaInventario">
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
                    <!-- 
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
                        -->
                </tbody>


            </table>
        </section>

    </main>
    <script>
        $(document).ready(function () {
            $('.sidenav').sidenav();

        });
    </script>

    <!-- Mantener importación de js al final del cuerpo-->
    <script type="text/javascript" src="js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="js/materialize.js"></script>
</asp:Content>
