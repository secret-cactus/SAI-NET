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

            if (dataset.Tables[objetivo].Rows.Count == 0)
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

        public static void CerrarBD()
        {
            conn.Close();
            mensajes.Text = "Base de datos desconectada.";
        }

        public static void Insertar(params object[] list)
        {

            StringBuilder sb = new StringBuilder();
            sb.Append("INSERT INTO " + objetivo + " VALUES ");
            sb.Append("(");

            for (int i = 0; i < list.Length; i++)
            {
                if (list[i] is string && (string) list[i] != "")
                {
                    sb.Append("'" + list[i] + "'");
                } else if (list[i] is string && (string) list[i] == "") {
                    sb.Append("NULL");
                } else
                {
                    sb.Append(list[i] + "");
                }

                if (i != list.Length - 1)
                {
                    sb.Append(", ");
                }
            }
            sb.Append(")");

            // mensajes.Text = sb.ToString();

            ConectarBD();
            tabla = new SqlCommand(sb.ToString(), conn);
            int x = tabla.ExecuteNonQuery();
            ActualizarTabla();
            CerrarBD();
            mensajes.Text = x + " filas afectadas.";

        }

        public static void Modificar(object id, params object[] list)
        {
            List<object> columnas = new List<object>();
            foreach (DataColumn column in dataset.Tables[objetivo].Columns)
            {
                columnas.Add(column.ColumnName );
            }

            StringBuilder sb = new StringBuilder();
            sb.Append("UPDATE " + objetivo + " SET ");

            for (int i = 1; i < columnas.Count; i++)
            {
                sb.Append(columnas[i] + "=");

                if (list[i-1] is string && (string) list[i-1] != "")
                {
                    sb.Append("'" + list[i-1] + "'");
                }
                else if (list[i-1] is string && (string)list[i-1] == "")
                {
                    sb.Append("NULL");
                }
                else
                {
                    sb.Append(list[i-1] + "");
                }

                if (i != columnas.Count - 1)
                {
                    sb.Append(", ");
                }
            }

            if (id is string)
            {
                id = "'" + id + "'";
            } else { 
            sb.Append(" WHERE " + columnas[0] + "=" + id);
            }

            // mensajes.Text = sb.ToString();
            ConectarBD();
            tabla = new SqlCommand(sb.ToString(), conn);
            
            int x = tabla.ExecuteNonQuery();
            ActualizarTabla();
            CerrarBD();
            mensajes.Text = x + " filas afectadas.";
        }
    }
}