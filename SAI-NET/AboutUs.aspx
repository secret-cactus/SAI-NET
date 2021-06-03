<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="SAI_NET.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <main class="container white-container">
        <section class=" container section">
            <h1 class="header">Autores</h1>
            <p>Este es nuestro equipo de trabajo</p>
        </section>

        <section class="section container">
            <div class="row">
                <div class="col s12 m6">
                    <div class="card">
                        <div class="card-image">
                            <img src="img/pablo.jpg">
                        </div>
                        <div class="card-content">
                            <span class="card-title">Pablo Amion</span>
                            <p>Diseño Web</p>
                            <p>Estudiante de 5° Semestre de Analista Programador</p>
                            <p>INACAP</p>
                        </div>
                        <div class="card-action">
                            <a href="#">Correo</a>
                            <br>
                            <br>
                            <a href="#" class="fa fa-facebook"></a>
                            <a href="#" class="fa fa-twitter"></a>
                            <a href="#" class="fa fa-google"></a>
                            <a href="#" class="fa fa-linkedin"></a>
                            <a href="#" class="fa fa-youtube"></a>
                            <a href="#" class="fa fa-instagram"></a>
                            <a href="#" class="fa fa-pinterest"></a>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6">
                    <div class="card">
                        <div class="card-image">
                            <img src="img/diego.jfif">
                        </div>
                        <div class="card-content">
                            <span class="card-title">Diego Aravena</span>
                            <p>Back-End</p>
                            <p>Estudiante de 5° Semestre de Analista Programador</p>
                            <p>INACAP</p>
                        </div>
                        <div class="card-action">
                            <a href="#">Correo</a>
                            <br>
                            <br>
                            <a href="#" class="fa fa-facebook"></a>
                            <a href="#" class="fa fa-twitter"></a>
                            <a href="#" class="fa fa-google"></a>
                            <a href="#" class="fa fa-linkedin"></a>
                            <a href="#" class="fa fa-youtube"></a>
                            <a href="#" class="fa fa-instagram"></a>
                            <a href="#" class="fa fa-pinterest"></a>
                        </div>
                    </div>
                </div>

            </div>


        </section>


    </main>


    <!-- Mantener importación de js al final del cuerpo-->
    <script type="text/javascript" src="js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="js/materialize.js"></script>

    <script>
        $(document).ready(function () {
            $('.sidenav').sidenav();
        });
    </script>

</asp:Content>
