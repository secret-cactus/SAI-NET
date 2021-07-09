using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Utilizados para conectar a BD
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace SAI_NET
{
    public partial class Inventario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MantenedorBD.Preparar("articulo", ref lblMensajes, ref phdTabla);

        }
        protected void Page_Unload(object sender, EventArgs e)
        {
            MantenedorBD.CerrarBD();
        }

        protected void btnConectarBD_Click(object sender, EventArgs e)
        {
            ConectarBD();
        }
        protected void btnToggleFormulario_Click(object sender, EventArgs e)
        {
            AlternarFormulario();
        }
        private void AlternarFormulario()
        {
            if (!formulario.Visible)
            {
                formulario.Visible = true;
                lblMensajes.Text = "Mostrando formulario...";
            }
            else
            {
                formulario.Visible = false;
                lblMensajes.Text = "Ocultando formulario...";
            }
            MantenedorBD.ActualizarTabla();
        }
        private void ConectarBD()
        {
            if (btnConectarBD.Text == "Conectar BD")
            {
                try
                {
                    MantenedorBD.ConectarBD();
                    btnToggleFormulario.Enabled = true;
                    MantenedorBD.ActualizarTabla();
                    btnConectarBD.Text = "Desconectar BD";
                }
                catch (Exception ex)
                {
                    lblMensajes.Text = "Error inesperado: " + ex.Message;
                }
            }
            else
            {
                MantenedorBD.CerrarBD();
                btnConectarBD.Text = "Conectar BD";
                btnToggleFormulario.Enabled = false;
                formulario.Visible = false;
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            MantenedorBD.Modificar(txtCodigo.Text, txtNombre.Text, int.Parse(txtCantidad.Text), txtDetalle.Text);
        }
    }
}