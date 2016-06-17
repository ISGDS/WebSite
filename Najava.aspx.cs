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
        if (Page.IsValid)
        {
            Najaven.Text = "Najaven";
        }        
    }
    protected void Prodolzi_Click(object sender, EventArgs e)
    {
        if (Najaven.Text == "Najaven")
        {
            Session["korisnik"] = Ime.Text;
            Session["lozinka"] = Lozinka.Text;

            Application.Lock();

            Application[Ime.Text] = Ime.Text;

            Application.UnLock();

            Response.Redirect("Login.aspx");

        }
        
    }
}