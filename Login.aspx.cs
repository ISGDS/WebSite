using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          
    }
    protected void btnLogin_Click_Click(object sender, EventArgs e)
    {
        if (Page.IsValid && Lozinka.Text == (string)Session["Lozinka"] && Ime.Text == (string)Session["korisnik"])
        {
            Najaven.Text = "Logirani ste kako " + (string)Session["korisnik"];
        }
        else
        {
            Najaven.Text = "Ne ste registrirani";
        }

    }
    protected void Prodolzi_Click(object sender, EventArgs e)
    {
        if (Najaven.Text == "Najaveni ste")
        {
            Response.Redirect("Pregled.aspx");
        }
    }
}