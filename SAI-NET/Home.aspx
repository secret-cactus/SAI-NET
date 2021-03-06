<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SAI_NET.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main class="container white-container">
        <section class="container section">
            <h1 class="header">Bienvenido, <i>usuario</i></h1>
        </section>

        <section class="section container">
            <div class="row">
                <div class="col s12 m4">
                    <div class="card blue darken-4">
                        <div class="card-content s3 white-text">
                            <span class="card-title">
                                Administrar inventario
                            </span>
                            <p>Agregue, elimine o modifique registros del inventario actual</p>
                        </div>
                        <div class="card-action">
                            <a href="inventario.aspx">Ir a <i>Inventario</i></a>
                        </div>
                    </div>
                </div>
                <div class="col s12 m4">
                    <div class="card blue darken-4">
                        <div class="card-content s3 white-text">
                            <span class="card-title">
                                Usuarios
                            </span>
                            <p>Agregue, elimine o modifique registros de los usuarios admitidos</p>
                        </div>
                        <div class="card-action">
                            <a href="usuarios.aspx">Ir a <i>Usuarios</i></a>
                        </div>
                    </div>
                </div>
                <div class="col s12 m4">
                    <div class="card blue darken-4">
                        <div class="card-content s3 white-text">
                            <span class="card-title">
                                Movimientos
                            </span>
                            <p>Consulte los movimientos recientes</p>
                        </div>
                        <div class="card-action">
                            <a href="movimientos.aspx">Ir a <i>Movimientos</i></a>
                        </div>
                    </div>
                </div>
            </div>
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
