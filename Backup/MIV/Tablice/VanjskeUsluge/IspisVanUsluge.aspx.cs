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

namespace MIV.Tablice.VanjskeUsluge
{
    public partial class IspisVanUsluge : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UrediVanUsl.Visible = false;
            if (Session["Korisnik"] != null)
            {
                string korisnickoIme = (string)Session["Korisnik"];
                string tipKorisnika = (string)Session["Tip"];

                if (int.Parse(tipKorisnika) == 1 || int.Parse(tipKorisnika) == 3)
                {
                    UrediVanUsl.Visible = true;
                }

                else
                {
                    UrediVanUsl.Visible = false;
                }
            }
        }

        protected void button_Click(object sender, EventArgs e)
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
                            string insertpomocna = "insert into PomocnaVanUsluge([USLUGA], [OPIS], [JEDINICA MJERE]) values (@usluga, @opis, @mjera)";
                            SqlCommand com = new SqlCommand(insertpomocna, conn);
                            com.Parameters.AddWithValue("@usluga", lb.Text);
                            com.Parameters.AddWithValue("@opis", lb1.Text);
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