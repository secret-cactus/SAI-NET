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
                conn.Close();
                btnConectarBD.Text = "Conectar BD";
                lblMensajes.Text = "Base de datos deconectada.";
                btnToggleFormulario.Enabled = false;
                formulario.Visible = false;
            }
        }

    }
}