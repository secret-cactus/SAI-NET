<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="SAI_NET.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section class=" container section">
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
                        <input type="text" id="numcantidad">
                        <label class="active" for="numcantidad">Cantidad</label>
                    </div>

                    <div class="input-field">
                        <textarea id="textarea1" class="materialize-textarea"></textarea>
                        <label class="active" for="textarea1">Detalle</label>
                    </div>

                    <input type="button" name="btnagregar" id="btnAgregar" class="btn indigo darken-4 btnVolver" value="Agregar" />
                    <input type="reset" name="btnlimpiar"  class="btn blue btnVolver" value="Otro Ingreso" />
                    <%--<button class="btn indigo darken-4 btnVolver">Terminar</button>--%>
                    <%--<button class="btn blue btnVolver">Cancelar</button>--%>
                    

                </div>


            </div>
            
        </section>

        <div class="tabla_inventario">
<table cellspacing="0" class="tabla" id="tablaInventario">
	<caption>Listado de Inventario</caption>
	<tr>
                        <th>Código</th>
                        <th>Nombre</th>
                        <th>Cantidad</th>
                        <th>Detalle</th>
                        <th>Opciones</th>
        </tr>

</table>
</div>
<br>
<a href="Home.aspx"><div class="btn"><span>Regresar al Menu</span></div></a>
        
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
    <script type="text/javascript" src="js/inventario.js"></script>
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
