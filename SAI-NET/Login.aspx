<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SAI_NET.Login" %>

<%  
    Dictionary<string, string> usuarios = new Dictionary<string, string>();
    usuarios.Add("admin@inacapmail.cl", "123456");
    usuarios.Add("usuario@inacapmail.cl", "654321");

    string user = (string)Request.Form["txtMail"];
    string pass = (string)Request.Form["txtPass"];

    // Si Session["contador"] es null, define 'contador' como 2, si no definelo como (int) Session["contador"]
    int contador = Session["contador"] == null ? 3 : (int)Session["contador"];

    if (Request["q"] == "Reset")
    {
        Session["contador"] = null;
        Response.Redirect("Index.aspx");
    }

    switch (Request["q"])
    {
        case "Reset":
            Session["contador"] = null;
            Response.Redirect("Index.aspx");
            break;
        case "Done":
            Response.Redirect("Index.aspx?r=Done");
            break;
        default:
            break;
    }

    try
    {

        if (pass.Equals(usuarios[user]))
        {
            Session["user"] = user;
            Response.Redirect("Home.aspx");
        }
        else
        {
            contador--;
            Session["contador"] = contador;
            Response.Redirect("Index.aspx?r=" + usuarios[user]);
        }
    }
    catch (KeyNotFoundException ex)
    {
        contador--;
        Session["contador"] = contador;
        Response.Redirect("Index.aspx?r=" + user + "&p=" + pass);
    }


%>
