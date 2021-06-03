<%@ Page Title="Buscar" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Buscar.aspx.cs" Inherits="SAI_NET.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main class="container">

        <h1 class="header">Buscar registros</h1>

        <section class="section">

            <div class="row">

                <div class="input-field col s12 m8">
                    <input type="email" name="" id="txtEmail">
                    <label for="txtEmail">Buscar por nombre o código...</label>
                </div>

                <div id="cbxSearch" class="input-field col s12 m2">
                    <select>
                        <option value="" disabled selected>Elige...</option>
                        <option value="inventario">Inventario</option>
                        <option value="usuario">Usuarios</option>
                        <option value="movimiento">Movimientos</option>
                    </select>
                    <label>Buscar en</label>
                </div>

                <button id="btnSearch" class="btn waves-effect waves-light" type="submit">Buscar
                    <i class="material-icons right">search</i>
                </button>

            </div>

        </section>

    </main>

    <!-- Mantener importación de js al final del cuerpo-->
    <script type="text/javascript" src="js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="js/materialize.js"></script>

    <script>
        $(document).ready(function() {
            $('.sidenav').sidenav();
            $('select').formSelect();
            $('#btnSearch').click(function() {
                var destino = $('#cbxSearch').find(":selected").val();
                if (destino != "") {
                    window.location.href = "./detalle/" + destino + ".html";
                }
            });
        });
    </script>
</asp:Content>
