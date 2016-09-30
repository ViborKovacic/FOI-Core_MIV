using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MIV.Zaposlenici
{
    public partial class UrediKorisnike : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["MIV"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }           
        }

        private void Bind()
        {
            SqlConnection conn = new SqlConnection(connect);
            SqlDataAdapter da = new SqlDataAdapter("Select * from RegistracijaKorisnika", conn);
            DataSet ds = new DataSet();
            conn.Open();
            da.Fill(ds);
            conn.Close();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("lblID");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from RegistracijaKorisnika where ID=@1";
            cmd.Parameters.AddWithValue("@1", id.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Insert"))
            {

                TextBox textIme = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Ime1");
                TextBox textPrezime = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Prezime1");
                TextBox textMobitel = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Mobitel1");
                TextBox textTelefon = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Telefon1");
                TextBox textImePod = (TextBox)GridView1.Controls[0].Controls[0].FindControl("ImePod1");
                TextBox textUlica = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Ulica1");
                TextBox textKuciBr = (TextBox)GridView1.Controls[0].Controls[0].FindControl("KucniBr1");
                TextBox textPostBr = (TextBox)GridView1.Controls[0].Controls[0].FindControl("PostBr1");
                TextBox textMjesto = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Mjesto1");
                DropDownList textDrzava = (DropDownList)GridView1.Controls[0].Controls[0].FindControl("DropDownList1");
                TextBox textKorIme = (TextBox)GridView1.Controls[0].Controls[0].FindControl("KorIme1");
                TextBox textLozinka = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Lozinka1");
                TextBox textemail = (TextBox)GridView1.Controls[0].Controls[0].FindControl("email1");
                TextBox texttip = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Tip1");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "insert into RegistracijaKorisnika(Ime, Prezime, Mobitel, Telefon, [Ime poduzeća], Ulica, [Kućni broj], [Poštanski broj], Mjesto, Država, [Korisničko ime], Lozinka, [E-mail]) values (@Ime, @Prezime, @Mobitel, @Telefon, @ImePod, @Ulica, @Kućni, @Poštanski, @Mjesto, @Država, @Korisničko, @Lozinka, @Email)";
                cmd.Parameters.AddWithValue("@Ime", textIme.Text);
                cmd.Parameters.AddWithValue("@Prezime", textPrezime.Text);
                cmd.Parameters.AddWithValue("@Mobitel", textMobitel.Text);
                cmd.Parameters.AddWithValue("@Telefon", textTelefon.Text);
                cmd.Parameters.AddWithValue("@ImePod", textImePod.Text);
                cmd.Parameters.AddWithValue("@Ulica", textUlica.Text);
                cmd.Parameters.AddWithValue("@Kućni", textKuciBr.Text);
                cmd.Parameters.AddWithValue("@Poštanski", textPostBr.Text);
                cmd.Parameters.AddWithValue("@Mjesto", textMjesto.Text);
                cmd.Parameters.AddWithValue("@Država", textDrzava.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Korisničko", textKorIme.Text);
                cmd.Parameters.AddWithValue("@Lozinka", textLozinka.Text);
                cmd.Parameters.AddWithValue("@Email", textemail.Text);
                cmd.Parameters.AddWithValue("@Tip", texttip.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();

            }

            if (e.CommandName == "Insert1")
            {
                Guid newGUID = Guid.NewGuid();
                TextBox textIme = (TextBox)GridView1.FooterRow.FindControl("FooterIme");
                TextBox textPrezime = (TextBox)GridView1.FooterRow.FindControl("FooterPrezime");
                TextBox textMobitel = (TextBox)GridView1.FooterRow.FindControl("FooterMobitel");
                TextBox textTelefon = (TextBox)GridView1.FooterRow.FindControl("FooterTelefon");
                TextBox textImePod = (TextBox)GridView1.FooterRow.FindControl("FooterImePoduz");
                TextBox textUlica = (TextBox)GridView1.FooterRow.FindControl("FooterUlica");
                TextBox textKuciBr = (TextBox)GridView1.FooterRow.FindControl("FooterKucniBr");
                TextBox textPostBr = (TextBox)GridView1.FooterRow.FindControl("FooterPostBr");
                TextBox textMjesto = (TextBox)GridView1.FooterRow.FindControl("FooterMjesto");
                DropDownList textDrzava = (DropDownList)GridView1.FooterRow.FindControl("FooterDrzava");
                TextBox textKorIme = (TextBox)GridView1.FooterRow.FindControl("FooterKorIme");
                TextBox textLozinka = (TextBox)GridView1.FooterRow.FindControl("FooterLozinka");
                TextBox textemail = (TextBox)GridView1.FooterRow.FindControl("Footeremail");
                TextBox texttip = (TextBox)GridView1.FooterRow.FindControl("FooterTip");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "insert into RegistracijaKorisnika(ID, Ime, Prezime, Mobitel, Telefon, [Ime poduzeća], Ulica, [Kućni broj], [Poštanski broj], Mjesto, Država, [Korisničko ime], Lozinka, [E-mail], Tip) values (@ID, @Ime, @Prezime, @Mobitel, @Telefon, @ImePod, @Ulica, @Kućni, @Poštanski, @Mjesto, @Država, @Korisničko, @Lozinka, @Email, @Tip)";

                cmd.Parameters.AddWithValue("@ID", newGUID.ToString());
                cmd.Parameters.AddWithValue("@Ime", textIme.Text);
                cmd.Parameters.AddWithValue("@Prezime", textPrezime.Text);
                cmd.Parameters.AddWithValue("@Mobitel", textMobitel.Text);
                cmd.Parameters.AddWithValue("@Telefon", textTelefon.Text);
                cmd.Parameters.AddWithValue("@ImePod", textImePod.Text);
                cmd.Parameters.AddWithValue("@Ulica", textUlica.Text);
                cmd.Parameters.AddWithValue("@Kućni", textKuciBr.Text);
                cmd.Parameters.AddWithValue("@Poštanski", textPostBr.Text);
                cmd.Parameters.AddWithValue("@Mjesto", textMjesto.Text);
                cmd.Parameters.AddWithValue("@Država", textDrzava.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Korisničko", textKorIme.Text);
                cmd.Parameters.AddWithValue("@Lozinka", textLozinka.Text);
                cmd.Parameters.AddWithValue("@Email", textemail.Text);
                cmd.Parameters.AddWithValue("@Tip", texttip.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();
            }

            if (e.CommandName == "Clear1")
            {
                TextBox textIme = (TextBox)GridView1.FooterRow.FindControl("FooterIme");
                TextBox textPrezime = (TextBox)GridView1.FooterRow.FindControl("FooterPrezime");
                TextBox textMobitel = (TextBox)GridView1.FooterRow.FindControl("FooterMobitel");
                TextBox textTelefon = (TextBox)GridView1.FooterRow.FindControl("FooterTelefon");
                TextBox textImePod = (TextBox)GridView1.FooterRow.FindControl("FooterImePoduz");
                TextBox textUlica = (TextBox)GridView1.FooterRow.FindControl("FooterUlica");
                TextBox textKuciBr = (TextBox)GridView1.FooterRow.FindControl("FooterKucniBr");
                TextBox textPostBr = (TextBox)GridView1.FooterRow.FindControl("FooterPostBr");
                TextBox textMjesto = (TextBox)GridView1.FooterRow.FindControl("FooterMjesto");
                DropDownList textDrzava = (DropDownList)GridView1.FooterRow.FindControl("FooterDrzava");
                TextBox textKorIme = (TextBox)GridView1.FooterRow.FindControl("FooterKorIme");
                TextBox textLozinka = (TextBox)GridView1.FooterRow.FindControl("FooterLozinka");
                TextBox textemail = (TextBox)GridView1.FooterRow.FindControl("Footeremail");
                TextBox texttip = (TextBox)GridView1.FooterRow.FindControl("FooterTip");

                textIme.Text = "";
                textPrezime.Text = "";
                textMobitel.Text = "";
                textTelefon.Text = "";
                textImePod.Text = "";
                textUlica.Text = "";
                textKuciBr.Text = "";
                textPostBr.Text = "";
                textMjesto.Text = "";
                textKorIme.Text = "";
                textLozinka.Text = "";
                textemail.Text = "";
                texttip.Text = "";

            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            Label textID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblNovoID");
            TextBox textIme = (TextBox)GridView1.Rows[e.RowIndex].FindControl("NovoIme");
            TextBox textPrezime = (TextBox)GridView1.Rows[e.RowIndex].FindControl("NovoPrezime");
            TextBox textMobitel = (TextBox)GridView1.Rows[e.RowIndex].FindControl("NovoMobitel");
            TextBox textTelefon = (TextBox)GridView1.Rows[e.RowIndex].FindControl("NovoTelefon");
            TextBox textImePod = (TextBox)GridView1.Rows[e.RowIndex].FindControl("NovoImePoduz");
            TextBox textUlica = (TextBox)GridView1.Rows[e.RowIndex].FindControl("NovoUlica");
            TextBox textKuciBr = (TextBox)GridView1.Rows[e.RowIndex].FindControl("NovoKucniBr");
            TextBox textPostBr = (TextBox)GridView1.Rows[e.RowIndex].FindControl("NovoPostBr");
            TextBox textMjesto = (TextBox)GridView1.Rows[e.RowIndex].FindControl("NovoMjesto");
            DropDownList textDrzava = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("NovoDrzava");
            TextBox textKorIme = (TextBox)GridView1.Rows[e.RowIndex].FindControl("NovoKorIme");
            TextBox textLozinka = (TextBox)GridView1.Rows[e.RowIndex].FindControl("NovoLozinka");
            TextBox textemail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Novoemail");
            TextBox texttip = (TextBox)GridView1.Rows[e.RowIndex].FindControl("NovoTip");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update RegistracijaKorisnika set Ime=@1, Prezime=@2, Mobitel=@3, Telefon=@4, [Ime poduzeća]=@5, Ulica=@6, [Kućni broj]=@7, [Poštanski broj]=@8, Mjesto=@9, Država=@10, [Korisničko ime]=@11, Lozinka=@12, [E-mail]=@13, Tip=@14 where ID=@15";
            cmd.Parameters.AddWithValue("@1", textIme.Text);
            cmd.Parameters.AddWithValue("@2", textPrezime.Text);
            cmd.Parameters.AddWithValue("@3", textMobitel.Text);
            cmd.Parameters.AddWithValue("@4", textTelefon.Text);
            cmd.Parameters.AddWithValue("@5", textImePod.Text);
            cmd.Parameters.AddWithValue("@6", textUlica.Text);
            cmd.Parameters.AddWithValue("@7", textKuciBr.Text);
            cmd.Parameters.AddWithValue("@8", textPostBr.Text);
            cmd.Parameters.AddWithValue("@9", textMjesto.Text);
            cmd.Parameters.AddWithValue("@10", textDrzava.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@11", textKorIme.Text);
            cmd.Parameters.AddWithValue("@12", textLozinka.Text);
            cmd.Parameters.AddWithValue("@13", textemail.Text);
            cmd.Parameters.AddWithValue("@14", texttip.Text);
            cmd.Parameters.AddWithValue("@15", textID.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView1.EditIndex = -1;
            Bind();
        }
    }
}