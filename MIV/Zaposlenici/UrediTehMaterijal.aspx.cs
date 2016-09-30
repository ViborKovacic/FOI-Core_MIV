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
    public partial class UrediTehMaterijal : System.Web.UI.Page
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
            SqlConnection conn = new SqlConnection(connect);                                        //G1
            SqlDataAdapter da = new SqlDataAdapter("Select * from TehMaterijalLim", conn);
            DataSet ds = new DataSet();
            conn.Open();
            da.Fill(ds);
            conn.Close();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

            SqlConnection conn1 = new SqlConnection(connect);
            SqlDataAdapter da1 = new SqlDataAdapter("Select * from TehMaterijalŠipkeOkrugle", conn1);
            DataSet ds1 = new DataSet();
            conn1.Open();
            da1.Fill(ds1);
            conn1.Close();
            GridView2.DataSource = ds1.Tables[0];
            GridView2.DataBind();

            SqlConnection conn2 = new SqlConnection(connect);                                        //G1
            SqlDataAdapter da2 = new SqlDataAdapter("Select * from [TehMaterijalCijevi L=3m]", conn2);
            DataSet ds2 = new DataSet();
            conn2.Open();
            da2.Fill(ds2);
            conn2.Close();
            GridView3.DataSource = ds2.Tables[0];
            GridView3.DataBind();

            SqlConnection conn3 = new SqlConnection(connect);                                        //G1
            SqlDataAdapter da3 = new SqlDataAdapter("Select * from [TehMaterijalŠipKvad L=3m]", conn3);
            DataSet ds3 = new DataSet();
            conn3.Open();
            da3.Fill(ds3);
            conn3.Close();
            GridView4.DataSource = ds3.Tables[0];
            GridView4.DataBind();

            SqlConnection conn4 = new SqlConnection(connect);                                        //G1
            SqlDataAdapter da4 = new SqlDataAdapter("Select * from TehMaterijalŠipŠesterokutne", conn4);
            DataSet ds4 = new DataSet();
            conn4.Open();
            da4.Fill(ds4);
            conn4.Close();
            GridView5.DataSource = ds4.Tables[0];
            GridView5.DataBind();

            SqlConnection conn5 = new SqlConnection(connect);                                        //G1
            SqlDataAdapter da5 = new SqlDataAdapter("Select * from TehMaterijalSpojZaHidrante", conn5);
            DataSet ds5 = new DataSet();
            conn5.Open();
            da5.Fill(ds5);
            conn5.Close();
            GridView6.DataSource = ds5.Tables[0];
            GridView6.DataBind();

            SqlConnection conn6 = new SqlConnection(connect);                                        //G1
            SqlDataAdapter da6 = new SqlDataAdapter("Select * from TehMaterijalŽicZaVarenje", conn6);
            DataSet ds6 = new DataSet();
            conn6.Open();
            da6.Fill(ds6);
            conn6.Close();
            GridView7.DataSource = ds6.Tables[0];
            GridView7.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)//G1
        {
            Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("lblIDLim");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from TehMaterijalLim where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView2_RowDeleting(object sender1, GridViewDeleteEventArgs e1)
        {
            Label id = (Label)GridView2.Rows[e1.RowIndex].FindControl("lblIDSO");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from TehMaterijalŠipkeOkrugle where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView3.Rows[e.RowIndex].FindControl("lblIDCL3");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from [TehMaterijalCijevi L=3m] where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView4.Rows[e.RowIndex].FindControl("lblIDSK3");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from [TehMaterijalŠipKvad L=3m] where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView5_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView5.Rows[e.RowIndex].FindControl("lblIDŠŠ");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from TehMaterijalŠipŠesterokutne where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView6_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView6.Rows[e.RowIndex].FindControl("lblIDspojke");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from TehMaterijalSpojZaHidrante where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView7_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView7.Rows[e.RowIndex].FindControl("lblIDžica");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from TehMaterijalŽicZaVarenje where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)//G1
        {
            if (e.CommandName.Equals("Insert"))
            {

                TextBox texttal = (TextBox)GridView1.Controls[0].Controls[0].FindControl("CM1");
                TextBox textatest = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Kval1");
                TextBox textkol = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Koli1");
                TextBox textmjera = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Mjera1");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into TehMaterijalLim([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);
             
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();

            }

            if (e.CommandName == "Insert1")
            {
                TextBox texttal = (TextBox)GridView1.FooterRow.FindControl("FooterCMLim");
                TextBox textatest = (TextBox)GridView1.FooterRow.FindControl("FooterKvalLim");
                TextBox textkol = (TextBox)GridView1.FooterRow.FindControl("FooterKolLim");
                TextBox textmjera = (TextBox)GridView1.FooterRow.FindControl("FooterMjerLim");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into TehMaterijalLim([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);
                
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();
            }

            if (e.CommandName == "Clear1")
            {
                TextBox texttal = (TextBox)GridView1.FooterRow.FindControl("FooterCMLim");
                TextBox textatest = (TextBox)GridView1.FooterRow.FindControl("FooterKvalLim");
                TextBox textkol = (TextBox)GridView1.FooterRow.FindControl("FooterKolLim");
                TextBox textmjera = (TextBox)GridView1.FooterRow.FindControl("FooterMjerLim");
                texttal.Text = "";
                textatest.Text = "";
                textkol.Text = "";
                textmjera.Text = "";

            }
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Insert"))
            {

                TextBox texttal = (TextBox)GridView2.Controls[0].Controls[0].FindControl("CMSO");
                TextBox textatest = (TextBox)GridView2.Controls[0].Controls[0].FindControl("KvalSO");
                TextBox textkol = (TextBox)GridView2.Controls[0].Controls[0].FindControl("KoliSO");
                TextBox textmjera = (TextBox)GridView2.Controls[0].Controls[0].FindControl("MjeraSO");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into TehMaterijalŠipkeOkrugle([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);
             
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();

            }

            if (e.CommandName == "Insert1")
            {
                TextBox texttal = (TextBox)GridView2.FooterRow.FindControl("FooterCMSO");
                TextBox textatest = (TextBox)GridView2.FooterRow.FindControl("FooterKvalSO");
                TextBox textkol = (TextBox)GridView2.FooterRow.FindControl("FooterKolSO");
                TextBox textmjera = (TextBox)GridView2.FooterRow.FindControl("FooterMjerSO");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into TehMaterijalŠipkeOkrugle([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);
                
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();
            }

            if (e.CommandName == "Clear1")
            {
                TextBox texttal = (TextBox)GridView2.FooterRow.FindControl("FooterCMSO");
                TextBox textatest = (TextBox)GridView2.FooterRow.FindControl("FooterKvalSO");
                TextBox textkol = (TextBox)GridView2.FooterRow.FindControl("FooterKolSO");
                TextBox textmjera = (TextBox)GridView2.FooterRow.FindControl("FooterMjerSO");
                texttal.Text = "";
                textatest.Text = "";
                textkol.Text = "";
                textmjera.Text = "";

            }
        }


        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Insert"))
            {

                TextBox texttal = (TextBox)GridView3.Controls[0].Controls[0].FindControl("CMCL3");
                TextBox textatest = (TextBox)GridView3.Controls[0].Controls[0].FindControl("KvalCL3");
                TextBox textkol = (TextBox)GridView3.Controls[0].Controls[0].FindControl("KoliCL3");
                TextBox textmjera = (TextBox)GridView3.Controls[0].Controls[0].FindControl("MjeraCL3");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into [TehMaterijalCijevi L=3m]([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();

            }

            if (e.CommandName == "Insert1")
            {
                TextBox texttal = (TextBox)GridView3.FooterRow.FindControl("FooterCMCL3");
                TextBox textatest = (TextBox)GridView3.FooterRow.FindControl("FooterKvalCL3");
                TextBox textkol = (TextBox)GridView3.FooterRow.FindControl("FooterKolSCL3");
                TextBox textmjera = (TextBox)GridView3.FooterRow.FindControl("FooterMjerCL3");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into [TehMaterijalCijevi L=3m]([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();
            }

            if (e.CommandName == "Clear1")
            {
                TextBox texttal = (TextBox)GridView3.FooterRow.FindControl("FooterCMCL3");
                TextBox textatest = (TextBox)GridView3.FooterRow.FindControl("FooterKvalCL3");
                TextBox textkol = (TextBox)GridView3.FooterRow.FindControl("FooterKolSCL3");
                TextBox textmjera = (TextBox)GridView3.FooterRow.FindControl("FooterMjerCL3");
                texttal.Text = "";
                textatest.Text = "";
                textkol.Text = "";
                textmjera.Text = "";

            }
        }

        protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Insert"))
            {

                TextBox texttal = (TextBox)GridView4.Controls[0].Controls[0].FindControl("CMSK3");
                TextBox textatest = (TextBox)GridView4.Controls[0].Controls[0].FindControl("KvalSK3");
                TextBox textkol = (TextBox)GridView4.Controls[0].Controls[0].FindControl("KoliSK3");
                TextBox textmjera = (TextBox)GridView4.Controls[0].Controls[0].FindControl("MjeraSK3");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into [TehMaterijalŠipKvad L=3m]([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();

            }

            if (e.CommandName == "Insert1")
            {
                TextBox texttal = (TextBox)GridView4.FooterRow.FindControl("FooterCMSK3");
                TextBox textatest = (TextBox)GridView4.FooterRow.FindControl("FooterKvalSK3");
                TextBox textkol = (TextBox)GridView4.FooterRow.FindControl("FooterKolSK3");
                TextBox textmjera = (TextBox)GridView4.FooterRow.FindControl("FooterMjerSK3");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into [TehMaterijalŠipKvad L=3m]([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();
            }

            if (e.CommandName == "Clear1")
            {
                TextBox texttal = (TextBox)GridView4.FooterRow.FindControl("FooterCMSK3");
                TextBox textatest = (TextBox)GridView4.FooterRow.FindControl("FooterKvalSK3");
                TextBox textkol = (TextBox)GridView4.FooterRow.FindControl("FooterKolSK3");
                TextBox textmjera = (TextBox)GridView4.FooterRow.FindControl("FooterMjerSK3");
                texttal.Text = "";
                textatest.Text = "";
                textkol.Text = "";
                textmjera.Text = "";

            }
        }

        protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Insert"))
            {

                TextBox texttal = (TextBox)GridView5.Controls[0].Controls[0].FindControl("CMŠŠ");
                TextBox textatest = (TextBox)GridView5.Controls[0].Controls[0].FindControl("KvalŠŠ");
                TextBox textkol = (TextBox)GridView5.Controls[0].Controls[0].FindControl("KoliŠŠ");
                TextBox textmjera = (TextBox)GridView5.Controls[0].Controls[0].FindControl("MjeraŠŠ");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into TehMaterijalŠipŠesterokutne([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();

            }

            if (e.CommandName == "Insert1")
            {
                TextBox texttal = (TextBox)GridView5.FooterRow.FindControl("FooterCMŠŠ");
                TextBox textatest = (TextBox)GridView5.FooterRow.FindControl("FooterKvalŠŠ");
                TextBox textkol = (TextBox)GridView5.FooterRow.FindControl("FooterKolŠŠ");
                TextBox textmjera = (TextBox)GridView5.FooterRow.FindControl("FooterMjerŠŠ");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into TehMaterijalŠipŠesterokutne([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();
            }

            if (e.CommandName == "Clear1")
            {
                TextBox texttal = (TextBox)GridView5.FooterRow.FindControl("FooterCMŠŠ");
                TextBox textatest = (TextBox)GridView5.FooterRow.FindControl("FooterKvalŠŠ");
                TextBox textkol = (TextBox)GridView5.FooterRow.FindControl("FooterKolŠŠ");
                TextBox textmjera = (TextBox)GridView5.FooterRow.FindControl("FooterMjerŠŠ");
                texttal.Text = "";
                textatest.Text = "";
                textkol.Text = "";
                textmjera.Text = "";

            }
        }

        protected void GridView6_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Insert"))
            {

                TextBox texttal = (TextBox)GridView6.Controls[0].Controls[0].FindControl("CMspojke");
                TextBox textatest = (TextBox)GridView6.Controls[0].Controls[0].FindControl("Kvalspojke");
                TextBox textkol = (TextBox)GridView6.Controls[0].Controls[0].FindControl("Kolispojke");
                TextBox textmjera = (TextBox)GridView6.Controls[0].Controls[0].FindControl("Mjeraspojke");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into TehMaterijalSpojZaHidrante([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();

            }

            if (e.CommandName == "Insert1")
            {
                TextBox texttal = (TextBox)GridView6.FooterRow.FindControl("FooterCMspojke");
                TextBox textatest = (TextBox)GridView6.FooterRow.FindControl("FooterKvalspojke");
                TextBox textkol = (TextBox)GridView6.FooterRow.FindControl("FooterKolspojke");
                TextBox textmjera = (TextBox)GridView6.FooterRow.FindControl("FooterMjerspojke");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into TehMaterijalSpojZaHidrante([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();
            }

            if (e.CommandName == "Clear1")
            {
                TextBox texttal = (TextBox)GridView6.FooterRow.FindControl("FooterCMspojke");
                TextBox textatest = (TextBox)GridView6.FooterRow.FindControl("FooterKvalspojke");
                TextBox textkol = (TextBox)GridView6.FooterRow.FindControl("FooterKolspojke");
                TextBox textmjera = (TextBox)GridView6.FooterRow.FindControl("FooterMjerspojke");
                texttal.Text = "";
                textatest.Text = "";
                textkol.Text = "";
                textmjera.Text = "";

            }
        }

        protected void GridView7_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Insert"))
            {

                TextBox texttal = (TextBox)GridView7.Controls[0].Controls[0].FindControl("CMžica");
                TextBox textatest = (TextBox)GridView7.Controls[0].Controls[0].FindControl("Kvalžica");
                TextBox textkol = (TextBox)GridView7.Controls[0].Controls[0].FindControl("Koližica");
                TextBox textmjera = (TextBox)GridView7.Controls[0].Controls[0].FindControl("Mjeražica");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into TehMaterijalŽicZaVarenje([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();

            }

            if (e.CommandName == "Insert1")
            {
                TextBox texttal = (TextBox)GridView7.FooterRow.FindControl("FooterCMžica");
                TextBox textatest = (TextBox)GridView7.FooterRow.FindControl("FooterKvalžica");
                TextBox textkol = (TextBox)GridView7.FooterRow.FindControl("FooterKolžica");
                TextBox textmjera = (TextBox)GridView7.FooterRow.FindControl("FooterMjeržica");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into TehMaterijalŽicZaVarenje([CRNA METALURGIJA], [KVALITETA MATERIJALA], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
                cmd.Parameters.AddWithValue("@2", texttal.Text);
                cmd.Parameters.AddWithValue("@3", textatest.Text);
                cmd.Parameters.AddWithValue("@4", textkol.Text);
                cmd.Parameters.AddWithValue("@5", textmjera.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();
            }

            if (e.CommandName == "Clear1")
            {
                TextBox texttal = (TextBox)GridView7.FooterRow.FindControl("FooterCMžica");
                TextBox textatest = (TextBox)GridView7.FooterRow.FindControl("FooterKvalžica");
                TextBox textkol = (TextBox)GridView7.FooterRow.FindControl("FooterKolžica");
                TextBox textmjera = (TextBox)GridView7.FooterRow.FindControl("FooterMjeržica");
                texttal.Text = "";
                textatest.Text = "";
                textkol.Text = "";
                textmjera.Text = "";

            }
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)//G1
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView3.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void GridView4_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView4.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void GridView5_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView5.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void GridView6_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView6.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void GridView7_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView7.EditIndex = e.NewEditIndex;
            Bind();
        }
                

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)//G1
        {
            GridView1.EditIndex = -1;
            Bind();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            Bind();
        }

        protected void GridView3_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView3.EditIndex = -1;
            Bind();
        }

        protected void GridView4_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView4.EditIndex = -1;
            Bind();
        }

        protected void GridView5_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView5.EditIndex = -1;
            Bind();
        }

        protected void GridView6_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView6.EditIndex = -1;
            Bind();
        }

        protected void GridView7_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView7.EditIndex = -1;
            Bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)//G1
        {
            Label textID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblNovoIDLim");
            TextBox texttal = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoCMLim");
            TextBox textatest = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoKvalLim");
            TextBox textkol = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoKolLim");
            TextBox textmjera = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoMjerLim");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update TehMaterijalLim set [CRNA METALURGIJA]=@1, [KVALITETA MATERIJALA]=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
            cmd.Parameters.AddWithValue("@1", texttal.Text);
            cmd.Parameters.AddWithValue("@2", textatest.Text);
            cmd.Parameters.AddWithValue("@3", textkol.Text);
            cmd.Parameters.AddWithValue("@4", textmjera.Text);
            cmd.Parameters.AddWithValue("@5", textID.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView1.EditIndex = -1;
            Bind();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label textID = (Label)GridView2.Rows[e.RowIndex].FindControl("lblNovoIDSO");
            TextBox texttal = (TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBoxNovoCMSO");
            TextBox textatest = (TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBoxNovoKvalSO");
            TextBox textkol = (TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBoxNovoKolSO");
            TextBox textmjera = (TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBoxNovoMjerSO");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update TehMaterijalŠipkeOkrugle set [CRNA METALURGIJA]=@1, [KVALITETA MATERIJALA]=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
            cmd.Parameters.AddWithValue("@1", texttal.Text);
            cmd.Parameters.AddWithValue("@2", textatest.Text);
            cmd.Parameters.AddWithValue("@3", textkol.Text);
            cmd.Parameters.AddWithValue("@4", textmjera.Text);
            cmd.Parameters.AddWithValue("@5", textID.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView2.EditIndex = -1;
            Bind();
        }

        protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label textID = (Label)GridView3.Rows[e.RowIndex].FindControl("lblNovoIDCL3");
            TextBox texttal = (TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBoxNovoCMCL3");
            TextBox textatest = (TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBoxNovoKvalCL3");
            TextBox textkol = (TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBoxNovoKolCL3");
            TextBox textmjera = (TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBoxNovoMjerCL3");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update [TehMaterijalCijevi L=3m] set [CRNA METALURGIJA]=@1, [KVALITETA MATERIJALA]=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
            cmd.Parameters.AddWithValue("@1", texttal.Text);
            cmd.Parameters.AddWithValue("@2", textatest.Text);
            cmd.Parameters.AddWithValue("@3", textkol.Text);
            cmd.Parameters.AddWithValue("@4", textmjera.Text);
            cmd.Parameters.AddWithValue("@5", textID.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView3.EditIndex = -1;
            Bind();
        }

        protected void GridView4_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label textID = (Label)GridView4.Rows[e.RowIndex].FindControl("lblNovoIDSK3");
            TextBox texttal = (TextBox)GridView4.Rows[e.RowIndex].FindControl("TextBoxNovoCMSK3");
            TextBox textatest = (TextBox)GridView4.Rows[e.RowIndex].FindControl("TextBoxNovoKvalSK3");
            TextBox textkol = (TextBox)GridView4.Rows[e.RowIndex].FindControl("TextBoxNovoKolSK3");
            TextBox textmjera = (TextBox)GridView4.Rows[e.RowIndex].FindControl("TextBoxNovoMjerSK3");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update [TehMaterijalŠipKvad L=3m] set [CRNA METALURGIJA]=@1, [KVALITETA MATERIJALA]=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
            cmd.Parameters.AddWithValue("@1", texttal.Text);
            cmd.Parameters.AddWithValue("@2", textatest.Text);
            cmd.Parameters.AddWithValue("@3", textkol.Text);
            cmd.Parameters.AddWithValue("@4", textmjera.Text);
            cmd.Parameters.AddWithValue("@5", textID.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView4.EditIndex = -1;
            Bind();
        }

        protected void GridView5_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label textID = (Label)GridView5.Rows[e.RowIndex].FindControl("lblNovoIDŠŠ");
            TextBox texttal = (TextBox)GridView5.Rows[e.RowIndex].FindControl("TextBoxNovoCMŠŠ");
            TextBox textatest = (TextBox)GridView5.Rows[e.RowIndex].FindControl("TextBoxNovoKvalŠŠ");
            TextBox textkol = (TextBox)GridView5.Rows[e.RowIndex].FindControl("TextBoxNovoKolŠŠ");
            TextBox textmjera = (TextBox)GridView5.Rows[e.RowIndex].FindControl("TextBoxNovoMjerŠŠ");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update TehMaterijalŠipŠesterokutne set [CRNA METALURGIJA]=@1, [KVALITETA MATERIJALA]=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
            cmd.Parameters.AddWithValue("@1", texttal.Text);
            cmd.Parameters.AddWithValue("@2", textatest.Text);
            cmd.Parameters.AddWithValue("@3", textkol.Text);
            cmd.Parameters.AddWithValue("@4", textmjera.Text);
            cmd.Parameters.AddWithValue("@5", textID.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView5.EditIndex = -1;
            Bind();
        }

        protected void GridView6_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label textID = (Label)GridView6.Rows[e.RowIndex].FindControl("lblNovoIDspojke");
            TextBox texttal = (TextBox)GridView6.Rows[e.RowIndex].FindControl("TextBoxNovoCMspojke");
            TextBox textatest = (TextBox)GridView6.Rows[e.RowIndex].FindControl("TextBoxNovoKvalspojke");
            TextBox textkol = (TextBox)GridView6.Rows[e.RowIndex].FindControl("TextBoxNovoKolspojke");
            TextBox textmjera = (TextBox)GridView6.Rows[e.RowIndex].FindControl("TextBoxNovoMjerspojke");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update TehMaterijalSpojZaHidrante set [CRNA METALURGIJA]=@1, [KVALITETA MATERIJALA]=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
            cmd.Parameters.AddWithValue("@1", texttal.Text);
            cmd.Parameters.AddWithValue("@2", textatest.Text);
            cmd.Parameters.AddWithValue("@3", textkol.Text);
            cmd.Parameters.AddWithValue("@4", textmjera.Text);
            cmd.Parameters.AddWithValue("@5", textID.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView6.EditIndex = -1;
            Bind();
        }

        protected void GridView7_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label textID = (Label)GridView7.Rows[e.RowIndex].FindControl("lblNovoIDžica");
            TextBox texttal = (TextBox)GridView7.Rows[e.RowIndex].FindControl("TextBoxNovoCMžica");
            TextBox textatest = (TextBox)GridView7.Rows[e.RowIndex].FindControl("TextBoxNovoKvalžica");
            TextBox textkol = (TextBox)GridView7.Rows[e.RowIndex].FindControl("TextBoxNovoKolžica");
            TextBox textmjera = (TextBox)GridView7.Rows[e.RowIndex].FindControl("TextBoxNovoMjeržica");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update TehMaterijalŽicZaVarenje set [CRNA METALURGIJA]=@1, [KVALITETA MATERIJALA]=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
            cmd.Parameters.AddWithValue("@1", texttal.Text);
            cmd.Parameters.AddWithValue("@2", textatest.Text);
            cmd.Parameters.AddWithValue("@3", textkol.Text);
            cmd.Parameters.AddWithValue("@4", textmjera.Text);
            cmd.Parameters.AddWithValue("@5", textID.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView7.EditIndex = -1;
            Bind();
        }              
    }
}