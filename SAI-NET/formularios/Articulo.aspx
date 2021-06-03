<%@ Page Title="Formulario de Artículo" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Articulo.aspx.cs" Inherits="SAI_NET.formularios.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<main class="container">

        <h3 class="header">Formulario de artículo</h3>

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

    </main>

    <!-- Mantener importación de js al final del cuerpo-->
    <script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="../js/materialize.js"></script>
    <script type="text/javascript" src="../js/custom.js"></script>

    <script>
        $(document).ready(function() {
            $('.sidenav').sidenav();
            $('.btnVolver').click(function() {
                var destino = '../inventario.aspx';
                window.location.href = destino;
            });
        });
    </script>
</asp:Content>
