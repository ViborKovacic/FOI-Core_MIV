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

namespace MIV.Tablice.RezervniDijelovi
{
    public partial class IspisRezDijelovi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UrediRezMat.Visible = false;
            if (Session["Korisnik"] != null)
            {
                string korisnickoIme = (string)Session["Korisnik"];
                string tipKorisnika = (string)Session["Tip"];

                if (int.Parse(tipKorisnika) == 1 || int.Parse(tipKorisnika) == 3)
                {
                    UrediRezMat.Visible = true;
                }

                else
                {
                    UrediRezMat.Visible = false;
                }
            }
        }

        protected void botton_Click(object sender, EventArgs e)
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
                        if (ch.Checked == true)
                        {
                            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MIV"].ConnectionString);
                            conn.Open();
                            string insertpomocna = "insert into PomocnaRezDijelovi([REZERVNI DIJELOVI], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values (@rez, @kolicina, @mjera)";
                            SqlCommand com = new SqlCommand(insertpomocna, conn);
                            com.Parameters.AddWithValue("@rez", lb.Text);
                            com.Parameters.AddWithValue("@kolicina", lb1.Text);
                            com.Parameters.AddWithValue("@mjera", lb2.Text);
                            com.ExecuteNonQuery();

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