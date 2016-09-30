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


namespace MIV.Tablice.UredskiMaterijal
{
    public partial class IspisUredMaterijal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                        CheckBox ch = (CheckBox)GridView2.Rows[i].FindControl("Kuverte1");
                        Label lb = (Label)GridView2.Rows[i].FindControl("lblKuverte");
                        Label lb1 = (Label)GridView2.Rows[i].FindControl("DimKuverte");
                        Label lb2 = (Label)GridView2.Rows[i].FindControl("KolKuverte");
                        Label lb3 = (Label)GridView2.Rows[i].FindControl("MjeraKuverte");
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
                        CheckBox ch1 = (CheckBox)GridView3.Rows[j].FindControl("Fascikli1");
                        Label lb4 = (Label)GridView3.Rows[j].FindControl("lblFascikli");
                        Label lb5 = (Label)GridView3.Rows[j].FindControl("DimFascikli");
                        Label lb6 = (Label)GridView3.Rows[j].FindControl("KolFascikli");
                        Label lb7 = (Label)GridView3.Rows[j].FindControl("MjeraFascikli");
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
                        CheckBox ch2 = (CheckBox)GridView4.Rows[i].FindControl("Reg1");
                        Label lb8 = (Label)GridView4.Rows[i].FindControl("lblReg");
                        Label lb9 = (Label)GridView4.Rows[i].FindControl("DimReg");
                        Label lb10 = (Label)GridView4.Rows[i].FindControl("KolReg");
                        Label lb11 = (Label)GridView4.Rows[i].FindControl("MjeraReg");
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
                        CheckBox ch3 = (CheckBox)GridView5.Rows[i].FindControl("Papir1");
                        Label lb12 = (Label)GridView5.Rows[i].FindControl("lblPapir");
                        Label lb13 = (Label)GridView5.Rows[i].FindControl("KarPapir");
                        Label lb14 = (Label)GridView5.Rows[i].FindControl("KolPapir");
                        Label lb15 = (Label)GridView5.Rows[i].FindControl("MjeraPapir");
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
                        CheckBox ch4 = (CheckBox)GridView6.Rows[i].FindControl("Obrasci1");
                        Label lb16 = (Label)GridView6.Rows[i].FindControl("lblObrasci");
                        Label lb17 = (Label)GridView6.Rows[i].FindControl("KarObrasci");
                        Label lb18 = (Label)GridView6.Rows[i].FindControl("KolObrasci");
                        Label lb19 = (Label)GridView6.Rows[i].FindControl("MjeraObrasci");
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
                        CheckBox ch5 = (CheckBox)GridView7.Rows[i].FindControl("Pribor1");
                        Label lb20 = (Label)GridView7.Rows[i].FindControl("lblPribor");
                        Label lb21 = (Label)GridView7.Rows[i].FindControl("KarPribor");
                        Label lb22 = (Label)GridView7.Rows[i].FindControl("KolPribor");
                        Label lb23 = (Label)GridView7.Rows[i].FindControl("MjeraPribor");
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
                        CheckBox ch6 = (CheckBox)GridView8.Rows[i].FindControl("Ostalo1");
                        Label lb24 = (Label)GridView8.Rows[i].FindControl("lblOstalo");
                        Label lb25 = (Label)GridView8.Rows[i].FindControl("KarOstalo");
                        Label lb26 = (Label)GridView8.Rows[i].FindControl("KolOstalo");
                        Label lb27 = (Label)GridView8.Rows[i].FindControl("MjeraOstalo");
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