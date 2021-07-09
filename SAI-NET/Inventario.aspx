<%@ Page Title="Inventario" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="SAI_NET.Inventario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <form runat="server" method="post" class="col s12 m6 offset-m3 ">
            <section class="container section">
                <h1 class="header">Inventario</h1>
                <asp:Button ID="btnToggleFormulario" Enabled="false" runat="server" OnClick="btnToggleFormulario_Click" class="btn btn-small" Text="Mostrar/ocultar formulario" />
                <asp:Button ID="btnConectarBD" runat="server" class="btn btn-small" Text="Conectar BD" OnClick="btnConectarBD_Click" />
            </section>

            <section id="formulario" runat="server" class="section container" visible="false">
                <div class="row ">
                    <div class="input-field">
                        <asp:TextBox runat="server" type="text" ID="txtCodigo" />
                        <label class="active" for="txtCodigo">Código</label>
                    </div>

                    <div class="input-field">
                        <asp:TextBox runat="server" type="text" ID="txtNombre" />
                        <label class="active" for="txtNombre">Nombre</label>
                    </div>

                    <div class="input-field">
                        <asp:TextBox runat="server" type="number" id="txtCantidad" min="1"/>
                        <label class="active" for="txtCantidad">Cantidad</label>
                    </div>

                    <div class="input-field">
                        <asp:TextBox runat="server" id="txtDetalle"/>
                        <label class="active" for="txtDetalle">Detalle</label>
                    </div>

                    <asp:Button runat="server" name="btnAgregar" ID="btnAgregar" class="btn indigo darken-4" Text="Agregar" OnClick="btnAgregar_Click" />
                    <asp:Button runat="server" ID="btnLimpiar" class="btn blue" type="reset" Text="Limpiar" />
                </div>
            </section>
        </form>

        <section class="container section">
            <table>
                <asp:PlaceHolder runat="server" ID="phdTabla"></asp:PlaceHolder>
            </table>
        </section>

    </main>

    <script type="text/javascript" src="js/custom.js"></script>

    <asp:Label runat="server" ID="lblMensajes" class="mensajes">Esperando comandos...</asp:Label>
</asp:Content>
