<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SAI_NET.Login" %>

<%  
    Dictionary<string, string> usuarios = new Dictionary<string, string>();
    usuarios.Add("admin@inacapmail.cl", "123456");
    usuarios.Add("usuario@inacapmail.cl", "654321");

    string user = (string)Request.Form["user"];
    string pass = (string)Request.Form["pass"];

    // Si Session["contador"] es null, define 'contador' como 2, si no definelo como (int) Session["contador"]
    int contador = Session["contador"] == null ? 3 : (int)Session["contador"];

    try
    {

        if (usuarios[user] == pass)
        {
            Session["user"] = user;
            Response.Redirect("Home.aspx");
        }
        else
        {
            contador--;
            Session["contador"] = contador;
            Response.Redirect("Index.aspx");
        }
    }
    catch (Exception)
    {
        contador--;
        Session["contador"] = contador;
        Response.Redirect("Index.aspx");
    }


%>
