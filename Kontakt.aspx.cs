﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kontakt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["korisnik"] != null)
        {
            Najaven.Text ="Logirani ste kako"+(string)Session["korisink"];
        }
    }
}