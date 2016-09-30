using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace MIV.Tablice.TehnickiMaterijal
{
    public partial class IspisTehMaterijal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UredTehMaterijal.Visible = false;
            if (Session["Korisnik"] != null)
            {
                string korisnickoIme = (string)Session["Korisnik"];
                string tipKorisnika = (string)Session["Tip"];

                if (int.Parse(tipKorisnika) == 1 || int.Parse(tipKorisnika) == 3)
                {
                    UredTehMaterijal.Visible = true;
                }

                else
                {
                    UredTehMaterijal.Visible = false;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["Korisnik"] != null)
            {
                string korisnickoIme = (string)Session["Korisnik"];
                string tipKorisnika = (string)Session["Tip"];

                if (int.Parse(tipKorisnika) == 1 || int.Parse(tipKorisnika) == 2 || int.Parse(tipKorisnika) == 3)
                {

                    for (int i = 0; i < GridView2.Rows.Count; i++)
                    {
                        CheckBox ch = (CheckBox)GridView2.Rows[i].FindControl("Lim");
                        Label lb = (Label)GridView2.Rows[i].FindControl("CrnMetLim");
                        Label lb1 = (Label)GridView2.Rows[i].FindControl("KvalitetaLim");
                        Label lb2 = (Label)GridView2.Rows[i].FindControl("KolLim");
                        Label lb3 = (Label)GridView2.Rows[i].FindControl("MjeraLim");
                        if (ch.Checked == true)
                        {
                            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Pomocna"].ConnectionString);
                            conn.Open();
                            string insertpomocna = "insert into Pomocna3([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values (@crna, @kvaliteta, @kolicina, @mjera)";
                            SqlCommand com = new SqlCommand(insertpomocna, conn);
                            com.Parameters.AddWithValue("@crna", lb.Text);
                            com.Parameters.AddWithValue("@kvaliteta", lb1.Text);
                            com.Parameters.AddWithValue("@kolicina", lb2.Text);
                            com.Parameters.AddWithValue("@mjera", lb3.Text);
                            com.ExecuteNonQuery();
                        }
                    }

                    for (int j = 0; j < GridView3.Rows.Count; j++)
                    {
                        CheckBox ch1 = (CheckBox)GridView3.Rows[j].FindControl("ŠipkOk");
                        Label lb4 = (Label)GridView3.Rows[j].FindControl("CrnaMetŠipOk");
                        Label lb5 = (Label)GridView3.Rows[j].FindControl("KvalitetaŠipkOk");
                        Label lb6 = (Label)GridView3.Rows[j].FindControl("KolicinaŠipkOk");
                        Label lb7 = (Label)GridView3.Rows[j].FindControl("MjeraŠipkOk");
                        if (ch1.Checked == true)
                        {
                            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Pomocna"].ConnectionString);
                            conn.Open();
                            string insertpomocna = "insert into Pomocna3([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values (@crna, @kvaliteta, @kolicina, @mjera)";
                            SqlCommand com = new SqlCommand(insertpomocna, conn);
                            com.Parameters.AddWithValue("@crna", lb4.Text);
                            com.Parameters.AddWithValue("@kvaliteta", lb5.Text);
                            com.Parameters.AddWithValue("@kolicina", lb6.Text);
                            com.Parameters.AddWithValue("@mjera", lb7.Text);
                            com.ExecuteNonQuery();
                        }
                    }

                    for (int i = 0; i < GridView4.Rows.Count; i++)
                    {
                        CheckBox ch2 = (CheckBox)GridView4.Rows[i].FindControl("Cijev3m");
                        Label lb8 = (Label)GridView4.Rows[i].FindControl("ObojMetCijev3m");
                        Label lb9 = (Label)GridView4.Rows[i].FindControl("KvalCijev3m");
                        Label lb10 = (Label)GridView4.Rows[i].FindControl("KolCijev3m");
                        Label lb11 = (Label)GridView4.Rows[i].FindControl("MjeraCijev3m");
                        if (ch2.Checked == true)
                        {
                            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Pomocna"].ConnectionString);
                            conn.Open();
                            string insertpomocna = "insert into Pomocna3([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values (@crna, @kvaliteta, @kolicina, @mjera)";
                            SqlCommand com = new SqlCommand(insertpomocna, conn);
                            com.Parameters.AddWithValue("@crna", lb8.Text);
                            com.Parameters.AddWithValue("@kvaliteta", lb9.Text);
                            com.Parameters.AddWithValue("@kolicina", lb10.Text);
                            com.Parameters.AddWithValue("@mjera", lb11.Text);
                            com.ExecuteNonQuery();
                        }
                    }

                    for (int i = 0; i < GridView5.Rows.Count; i++)
                    {
                        CheckBox ch3 = (CheckBox)GridView5.Rows[i].FindControl("ŠKvad3m");
                        Label lb12 = (Label)GridView5.Rows[i].FindControl("OMetalŠKvad3m");
                        Label lb13 = (Label)GridView5.Rows[i].FindControl("KvalŠKvad3m");
                        Label lb14 = (Label)GridView5.Rows[i].FindControl("KolŠKvad3m");
                        Label lb15 = (Label)GridView5.Rows[i].FindControl("MjeraŠKvad3m");
                        if (ch3.Checked == true)
                        {
                            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Pomocna"].ConnectionString);
                            conn.Open();
                            string insertpomocna = "insert into Pomocna3([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values (@crna, @kvaliteta, @kolicina, @mjera)";
                            SqlCommand com = new SqlCommand(insertpomocna, conn);
                            com.Parameters.AddWithValue("@crna", lb12.Text);
                            com.Parameters.AddWithValue("@kvaliteta", lb13.Text);
                            com.Parameters.AddWithValue("@kolicina", lb14.Text);
                            com.Parameters.AddWithValue("@mjera", lb15.Text);
                            com.ExecuteNonQuery();
                        }
                    }

                    for (int i = 0; i < GridView6.Rows.Count; i++)
                    {
                        CheckBox ch4 = (CheckBox)GridView6.Rows[i].FindControl("ŠipŠest");
                        Label lb16 = (Label)GridView6.Rows[i].FindControl("OMetalŠipŠest");
                        Label lb17 = (Label)GridView6.Rows[i].FindControl("KvalŠipŠest");
                        Label lb18 = (Label)GridView6.Rows[i].FindControl("KolŠipŠest");
                        Label lb19 = (Label)GridView6.Rows[i].FindControl("MjeraŠipŠest");
                        if (ch4.Checked == true)
                        {
                            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Pomocna"].ConnectionString);
                            conn.Open();
                            string insertpomocna = "insert into Pomocna3([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values (@crna, @kvaliteta, @kolicina, @mjera)";
                            SqlCommand com = new SqlCommand(insertpomocna, conn);
                            com.Parameters.AddWithValue("@crna", lb16.Text);
                            com.Parameters.AddWithValue("@kvaliteta", lb17.Text);
                            com.Parameters.AddWithValue("@kolicina", lb18.Text);
                            com.Parameters.AddWithValue("@mjera", lb19.Text);
                            com.ExecuteNonQuery();
                        }
                    }

                    for (int i = 0; i < GridView7.Rows.Count; i++)
                    {
                        CheckBox ch5 = (CheckBox)GridView7.Rows[i].FindControl("SpojZaHidCh");
                        Label lb20 = (Label)GridView7.Rows[i].FindControl("SpojZaHid");
                        Label lb21 = (Label)GridView7.Rows[i].FindControl("KvalSpojZaHid");
                        Label lb22 = (Label)GridView7.Rows[i].FindControl("KolSpojZaHid");
                        Label lb23 = (Label)GridView7.Rows[i].FindControl("MjeraSpojZaHid");
                        if (ch5.Checked == true)
                        {
                            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Pomocna"].ConnectionString);
                            conn.Open();
                            string insertpomocna = "insert into Pomocna3([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values (@crna, @kvaliteta, @kolicina, @mjera)";
                            SqlCommand com = new SqlCommand(insertpomocna, conn);
                            com.Parameters.AddWithValue("@crna", lb20.Text);
                            com.Parameters.AddWithValue("@kvaliteta", lb21.Text);
                            com.Parameters.AddWithValue("@kolicina", lb22.Text);
                            com.Parameters.AddWithValue("@mjera", lb23.Text);
                            com.ExecuteNonQuery();
                        }
                    }

                    for (int i = 0; i < GridView8.Rows.Count; i++)
                    {
                        CheckBox ch6 = (CheckBox)GridView8.Rows[i].FindControl("ŽicZaVarCh");
                        Label lb24 = (Label)GridView8.Rows[i].FindControl("ŽicZaVar");
                        Label lb25 = (Label)GridView8.Rows[i].FindControl("KvalŽicZaVar");
                        Label lb26 = (Label)GridView8.Rows[i].FindControl("KolŽicZaVar");
                        Label lb27 = (Label)GridView8.Rows[i].FindControl("MjeraŽicZaVar");
                        if (ch6.Checked == true)
                        {
                            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Pomocna"].ConnectionString);
                            conn.Open();
                            string insertpomocna = "insert into Pomocna3([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values (@crna, @kvaliteta, @kolicina, @mjera)";
                            SqlCommand com = new SqlCommand(insertpomocna, conn);
                            com.Parameters.AddWithValue("@crna", lb24.Text);
                            com.Parameters.AddWithValue("@kvaliteta", lb25.Text);
                            com.Parameters.AddWithValue("@kolicina", lb26.Text);
                            com.Parameters.AddWithValue("@mjera", lb27.Text);
                            com.ExecuteNonQuery();
                        }
                    }
                    Response.Redirect("~/Tablice/TehnickiMaterijal/Zavrsetak.aspx");
                }

                else
                {
                    Response.Write("Trebate biti prijavljeni");
                    Response.Redirect("~/Prijava/Prijava.aspx");
                }

            }
        }
    }
}