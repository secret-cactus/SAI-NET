<%@ Page Title="Usuarios" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="SAI_NET.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <form runat="server" method="post" class="col s12 m6 offset-m3 ">
            <section class=" container section">
                <h1 class="header">Usuarios</h1>
                <asp:Button ID="btnToggleFormulario" Enabled="false" runat="server" OnClick="btnToggleFormulario_Click" class="btn btn-small" Text="Mostrar/ocultar formulario" />
                <asp:Button ID="btnConectarBD" runat="server" class="btn btn-small" Text="Conectar BD" OnClick="btnConectarBD_Click" />
            </section>
            
            <section id="formulario" runat="server" class="section container" visible="false">
                <div class="row">
                    <div class="col s12 m7">
                        <div class="input-field">
                            <asp:TextBox runat="server" type="email" id="txtEmail"/>
                            <label for="txtEmail">Correo electronico</label>
                        </div>

                        <div class="input-field">
                            <asp:TextBox runat="server" type="text" name="" id="txtNombre"/>
                            <label for="txtNombre">Nombre Completo</label>
                        </div>

                        <div class="input-field">
                            <input type="date" name="txtCumple" id="txtCumple" onblur="calcular_edad();"/>
                            <label for="txtCumple">Cumpleaños</label>
                        </div>

                        <div class="input-field">
                            <input type="number" name="txtEdad" id="txtEdad" readonly>
                            <label for="txtEdad">Edad</label>
                        </div>

                        <h6>Género</h6>
                        <label>
                            <input name="rbtnGenero" type="radio" value="Masculino" />
                            <span>Masculino</span>
                        </label>
                        <label>
                            <input name="rbtnGenero" type="radio" value="Femenino" />
                            <span>Femenino</span>
                        </label>
                        <label>
                            <input name="rbtnGenero" type="radio" value="Otro" />
                            <span>Otro</span>
                        </label>

                        <div class="input-field">
                            <input type="password" name="" id="txtPass">
                            <label for="txtPass">Contraseña</label>
                        </div>

                        <div class="input-field">
                            <input type="password" name="" id="txtPassConf">
                            <label for="txtPassConf">Confirma la contraseña </label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col s12 m5">

                            <h5>Permisos</h5>

                            <p>
                                <label>
                                    <input type="checkbox" class="filled-in" name="permisos" value="inventario" />
                                    <span>Puede agregar, modificar, consultar y eliminar registros del inventario.</span>
                                </label>
                            </p>
                            <br>
                            <p>
                                <label>
                                    <input type="checkbox" class="filled-in" name="permisos" value="usuarios" />
                                    <span>Puede agregar, modificar, consultar y eliminar registros del usuario.</span>
                                </label>
                            </p>
                            <br>
                            <p>
                                <label>
                                    <input type="checkbox" class="filled-in" name="permisos" value="bodega" />
                                    <span>Puede retirar y devolver del inventario.</span>
                                </label>
                            </p>

                            <button class="btn indigo darken-4 btnVolver" name="btnAgregar" onclick="agregar_usuario();">agregar</button>
                            <button class="btn indigo darken-2 btnVolver" name="btnAgregar" onclick="reset();">limpiar</button>
                        </div>

                    </div>

                </div>

            </section>

        </form>

        <section class="container section">
            <table>
                <asp:PlaceHolder runat="server" ID="phdTabla"></asp:PlaceHolder>
            </table>
        </section>
    </main>

    <script type="text/javascript" src="js/listado-usuarios.js">

    </script>
    
    <asp:Label runat="server" ID="lblMensajes" class="mensajes">Esperando comandos...</asp:Label>

</asp:Content>
