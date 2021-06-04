<%@ Page Title="Galeria de Imágenes" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Galeria.aspx.cs" Inherits="SAI_NET.Galeria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container white-container">
        <section class="container section">
            <h1 class="header">Galería de imagenes</h1>
        </section>

        <section class="container section center">
            <img id="imgSelecionada" class="img selected-img" src="img/galeria/01.jpg" />
            <div id="imgVistaPrevia">
                <img src="img/galeria/01.jpg" />
                <img src="img/galeria/02.jpg" />
                <img src="img/galeria/03.jpg" />
                <img src="img/galeria/04.jpg" />
                <img src="img/galeria/05.jpg" />
                <img src="img/galeria/06.jpg" />
                <img src="img/galeria/07.jpg" />
                <img src="img/galeria/08.jpg" />
                <img src="img/galeria/09.jpg" />
                <img src="img/galeria/10.jpg" />
                <img src="img/galeria/11.jpg" />
                <img src="img/galeria/12.jpg" />
            </div>
        </section>

    </main>

    <!-- Mantener importación de js al final del cuerpo-->
    <script type="text/javascript" src="js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="js/materialize.js"></script>
    <script>
        $(document).ready(function () {
            $('.sidenav').sidenav();
            $('#imgVistaPrevia img').on({
                click: function () {
                    var imgUrl = $(this).attr("src");
                    $("#imgSelecionada").attr("src", imgUrl);
                }
            });
        });
    </script>

</asp:Content>
