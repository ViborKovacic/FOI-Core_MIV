using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
using System.Data.OleDb;

namespace MIV.Registracija
{
    public partial class Registracija : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["MIV"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            UrediKorisnike.Visible = false;
            if (Session["Korisnik"] != null)
            {
                string korisnickoIme = (string)Session["Korisnik"];
                string tipKorisnika = (string)Session["Tip"];

                if (int.Parse(tipKorisnika) == 1)
                {
                    UrediKorisnike.Visible = true;
                }

                else
                {
                    UrediKorisnike.Visible = false;
                }
            }
         }

            
   

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();
                int Tip = 2;
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MIV"].ConnectionString);
                conn.Open();
                string InsertUser = "insert into RegistracijaKorisnika(ID, Ime, Prezime, Mobitel, Telefon, [Ime poduzeća], Ulica, [Kućni broj], [Poštanski broj], Mjesto, Država, [Korisničko ime], Lozinka, [E-mail], Tip) values (@ID, @Ime, @Prezime, @Mobitel, @Telefon, @ImePod, @Ulica, @Kućni, @Poštanski, @Mjesto, @Država, @Korisničko, @Lozinka, @Email, @Tip )";
                SqlCommand com = new SqlCommand(InsertUser, conn);
                
                string checkuser = "select count(*) from RegistracijaKorisnika where [Korisničko ime]= '" + TextBoxKorisIme.Text + "'"; //provjera dali postoji korisnik vec u bazi
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("Korisničko ime već postoji");

                }

                else if(temp != 1)
                {
                    com.Parameters.AddWithValue("@ID", newGUID.ToString());
                    com.Parameters.AddWithValue("@Ime", TextBoxIme.Text);
                    com.Parameters.AddWithValue("@Prezime", TextBoxPrezime.Text);
                    com.Parameters.AddWithValue("@Mobitel", TextBoxMobitel.Text);
                    com.Parameters.AddWithValue("@Telefon", TextBoxTelefon.Text);
                    com.Parameters.AddWithValue("@ImePod", TextBoxImePod.Text);
                    com.Parameters.AddWithValue("@Ulica", TextBoxUlica.Text);
                    com.Parameters.AddWithValue("@Kućni", TextBoxKuBr.Text);
                    com.Parameters.AddWithValue("@Poštanski", TextBoxPosBr.Text);
                    com.Parameters.AddWithValue("@Mjesto", TextBoxMjesto.Text);
                    com.Parameters.AddWithValue("@Država", DropDownListDrzava.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@Korisničko", TextBoxKorisIme.Text);
                    com.Parameters.AddWithValue("@Lozinka", TextBoxLozinka.Text);
                    com.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
                    com.Parameters.AddWithValue("@Tip", Tip.ToString());

                    com.ExecuteNonQuery();
                    Response.Redirect("~/Prijava/Login.aspx");
                    Response.Write("Uspješno ste se registrirali");
                }

                conn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Greška: " + ex.ToString());
            }
        }
        
        protected void TextBoxKorisIme_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBoxKorisIme.Text))
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MIV"].ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from [RegistracijaKorisnika] where [Korisničko ime]=@Korisničko", conn);
                cmd.Parameters.AddWithValue("@Korisničko", TextBoxKorisIme.Text);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    Label1.Text = "Korisnik s tim imenom već postoji";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }

                else
                {
                    Label1.Text = "Korisničko ime je slobodno";
                    Label1.ForeColor = System.Drawing.Color.Green;
                }
            }

        }


        protected void DropDownListDrzava_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}