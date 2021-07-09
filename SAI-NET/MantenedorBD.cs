using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;

namespace SAI_NET
{
    public class MantenedorBD
    {
        private static SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
        private static SqlCommand tabla = new SqlCommand();
        private static SqlDataAdapter adapter = new SqlDataAdapter();
        private static DataSet dataset = new DataSet();

        static string objetivo;
        static Label mensajes;
        static PlaceHolder placeHolder;

        public static void Preparar(string tablaObjetivo, ref Label labelMensajes, ref PlaceHolder placeholder)
        {
            objetivo = tablaObjetivo;
            mensajes = labelMensajes;
            placeHolder = placeholder;
        }

        public static void ActualizarTabla()
        {
            StringBuilder html = new StringBuilder();
            tabla = new SqlCommand("SELECT * FROM " + objetivo, conn);
            dataset = new DataSet();
            adapter.SelectCommand = tabla;
            adapter.Fill(dataset, objetivo);

            if (dataset.Tables["articulo"].Rows.Count == 0)
            {
                mensajes.Text = "Sin registros...";
            }
            else
            {
                html.Append("<thead>\n");
                foreach (DataColumn column in dataset.Tables[objetivo].Columns)
                {
                    html.Append("<th>" + column.ColumnName + "</th>");
                }
                html.Append("</thead>\n");

                html.Append("<tbody>\n");
                foreach (DataRow fila in dataset.Tables[objetivo].Rows)
                {
                    html.Append("<tr>\n");
                    for (int i = 0; i < dataset.Tables[objetivo].Columns.Count; i++)
                    {
                        html.Append("   <td>" + fila[i] + " </td>\n");
                    }
                    html.Append("</tr>\n");
                }
                html.Append("<tbody>\n");

                mensajes.Text = "Mostrando " + dataset.Tables[objetivo].Rows.Count + " registros...";
                placeHolder.Controls.Add(new Literal { Text = html.ToString() });
            }

        }

        public static void ConectarBD()
        {
            conn.Open();
            mensajes.Text = "Conexión establecida con base de datos.";
        }

    }
}