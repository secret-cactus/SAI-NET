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

namespace SAI_NET
{
    public partial class Index : System.Web.UI.Page
    {
        public int contador;
        private SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            contador = Session["contador"] == null ? 3 : (int)Session["contador"];
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
                conn.Open();
                SqlCommand query = new SqlCommand("SELECT mail, nombre FROM usuario WHERE mail=@mail AND pass=@pass", conn);
                query.Parameters.AddWithValue("@mail", txtMail.Text);
                query.Parameters.AddWithValue("@pass", txtPass.Text);
                SqlDataReader sdr = query.ExecuteReader();
                if (sdr.Read())
                {
                    Session["user"] = sdr.GetString(0);
                    lblMensajes.Text = "Usuario encontrado. Bienvenid@, " + sdr.GetString(1);
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lblMensajes.Text = "Correo o contraseña incorrecta. Verifique sus credenciales.";
                    contador--;
                    Session["contador"] = contador;
                }

            }
            catch (Exception ex)
            {
                lblMensajes.Text = "Error inesperado: " + ex.Message;
            }
            finally
            {
                lblMensajes.Visible = true;
                conn.Close();
            }
        }
    }
}