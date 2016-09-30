using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MIV
{
    public partial class Glavna : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Korisnik"] != null)
            {
                Label1.Text = Session["Korisnik"].ToString();
            }
            else
            {
                Label1.Text = "Gost";
            }
            
        }

        protected void Odjava_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/Prijava/Login.aspx");
        }
    }
}