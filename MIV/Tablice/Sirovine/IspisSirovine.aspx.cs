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

namespace MIV.Tablice.Sirovine
{
    public partial class Sirovine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IzmjSirovine.Visible = false;
            if (Session["Korisnik"] != null)
            {
                string korisnickoIme = (string)Session["Korisnik"];
                string tipKorisnika = (string)Session["Tip"];

                if (int.Parse(tipKorisnika) == 1 || int.Parse(tipKorisnika) == 3)
                {
                    IzmjSirovine.Visible = true;
                }

                else
                {
                    IzmjSirovine.Visible = false;
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
                    for (int i = 0; i < GridView1.Rows.Count; i++)
                    {
                        CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                        Label lb = (Label)GridView1.Rows[i].FindControl("Label1");
                        Label lb1 = (Label)GridView1.Rows[i].FindControl("Label2");
                        Label lb2 = (Label)GridView1.Rows[i].FindControl("Label3");
                        Label lb3 = (Label)GridView1.Rows[i].FindControl("Label4");
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

                    for (int j = 0; j < GridView2.Rows.Count; j++)
                    {
                        CheckBox ch1 = (CheckBox)GridView2.Rows[j].FindControl("CheckBox2");
                        Label lb4 = (Label)GridView2.Rows[j].FindControl("Label5");
                        Label lb5 = (Label)GridView2.Rows[j].FindControl("Label6");
                        Label lb6 = (Label)GridView2.Rows[j].FindControl("Label7");
                        Label lb7 = (Label)GridView2.Rows[j].FindControl("Label8");
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
                            conn.Close();
                        }
                    }
                }
                else
                {
                    Response.Write("Morate biti prijavljeni");
                }
            }
        }
    }
}