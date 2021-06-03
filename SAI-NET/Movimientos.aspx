<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Movimientos.aspx.cs" Inherits="SAI_NET.css.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section class=" container section">
            <h1 class="header">Movimientos</h1>
        </section>

        <section class="container section">
            <table>
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Fecha</th>
                        <th>Tipo</th>
                        <th>Autor</th>
                        <th>Articulos</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>000004</td>
                        <td>23-04-2021 13:13</td>
                        <td><span class="new badge red" data-badge-caption="eliminación"></span></td>
                        <td>
                            Pablo Amion
                        </td>
                        <td>1x Router Cisco 5GHz; 1x Cable Ethernet 1.5m;</td>
                    </tr>
                    <tr>
                        <td>000003</td>
                        <td>23-04-2021 13:13</td>
                        <td><span class="new badge green" data-badge-caption="devolución"></span></td>
                        <td>
                            Pablo Amion
                        </td>
                        <td>1x Router Cisco 5GHz; 1x Cable Ethernet 1.5m;</td>
                    </tr>
                    <tr>
                        <td>000002</td>
                        <td>23-04-2021 13:13</td>
                        <td><span class="new badge indigo" data-badge-caption="retiro"></span></td>
                        <td>
                            Pablo Amion
                        </td>
                        <td>1x Router Cisco 5GHz; 1x Cable Ethernet 1.5m;</td>
                    </tr>
                    <tr>
                        <td>000001</td>
                        <td>23-04-2021 13:13</td>
                        <td><span class="new badge cyan" data-badge-caption="nuevo"></span></td>
                        <td>
                            Pablo Amion
                        </td>
                        <td>1x Router Cisco 5GHz; 1x Cable Ethernet 1.5m;</td>
                    </tr>
                </tbody>
            </table>

            <blockquote>
                Al tratarse de un hístorico, los registros no pueden crearse ni modificarse y eliminarse.
            </blockquote>

        </section>


    </main>

    <!-- Mantener importación de js al final del cuerpo-->
    <script type="text/javascript" src="js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="js/materialize.js"></script>

    <script>
        $(document).ready(function() {
            $('.sidenav').sidenav();
            $('.fixed-action-btn').floatingActionButton();

        });
    </script>
</asp:Content>
