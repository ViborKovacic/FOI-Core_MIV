using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace MIV.Prijava
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Korisnik"] != null)
            {
                string korisnickoIme = (string)Session["Korisnik"];
                string tipKorisnika = (string)Session["Tip"];

                Response.Redirect("~/Pocetna/Pocetna.aspx"); // šalje na stranicu
            }
        }

        protected void ButtonPrijava_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MIV"].ConnectionString);
            conn.Open(); //otvaranje konekcije sa bazom
            string checkuser = "select count(*) from RegistracijaKorisnika where [Korisničko ime]= '" + TextBoxImeKoris.Text + "'"; //provjera dali postoji korisnik vec u bazi
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp == 1)
            {
                
                string checkLozinka = "select Lozinka from RegistracijaKorisnika where [Korisničko ime]= '" + TextBoxImeKoris.Text + "' "; // provjerava lozinku dali je ista onoj unesenoj 
                SqlCommand Lozinkacom = new SqlCommand(checkLozinka, conn);
                string Lozinka = Lozinkacom.ExecuteScalar().ToString().Replace(" ", ""); // sprema lozinku i miče razmak
                if (Lozinka == TextBoxLozPrijava.Text)
                {
                    string checkTip = "select Tip from RegistracijaKorisnika where [Korisničko ime]= '" + TextBoxImeKoris.Text + "' "; // provjerava lozinku dali je ista onoj unesenoj 
                    SqlCommand Tipcom = new SqlCommand(checkTip, conn);
                    string tipKorisnika = Tipcom.ExecuteScalar().ToString();
                    
                    Session["Korisnik"] = TextBoxImeKoris.Text; // stvara novu sesiju sa Korisničkim imenom
                    Session["Tip"] = tipKorisnika; 
                    Response.Write("Lozinka je točna");
                    Response.Redirect("~/Pocetna/Pocetna.aspx"); // šalje na stranicu

                }
                else
                {
                    Response.Write("Unjeli ste krivu lozinku");
                }
            }

            conn.Close(); //zatvaranje konekcije sa bazom
         }
    }
}