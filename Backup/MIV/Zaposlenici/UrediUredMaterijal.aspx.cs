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
    public partial class UrediUredMaterijal : System.Web.UI.Page
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
            SqlDataAdapter da = new SqlDataAdapter("Select * from UrMatKuverte", conn);
            DataSet ds = new DataSet();
            conn.Open();
            da.Fill(ds);
            conn.Close();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

            SqlConnection conn1 = new SqlConnection(connect);
            SqlDataAdapter da1 = new SqlDataAdapter("Select * from UrMatFascikli", conn1);
            DataSet ds1 = new DataSet();
            conn1.Open();
            da1.Fill(ds1);
            conn1.Close();
            GridView2.DataSource = ds1.Tables[0];
            GridView2.DataBind();

            SqlConnection conn2 = new SqlConnection(connect);                                        //G1
            SqlDataAdapter da2 = new SqlDataAdapter("Select * from UrMatRegistratori", conn2);
            DataSet ds2 = new DataSet();
            conn2.Open();
            da2.Fill(ds2);
            conn2.Close();
            GridView3.DataSource = ds2.Tables[0];
            GridView3.DataBind();

            SqlConnection conn3 = new SqlConnection(connect);                                        //G1
            SqlDataAdapter da3 = new SqlDataAdapter("Select * from UrMatPapir", conn3);
            DataSet ds3 = new DataSet();
            conn3.Open();
            da3.Fill(ds3);
            conn3.Close();
            GridView4.DataSource = ds3.Tables[0];
            GridView4.DataBind();

            SqlConnection conn4 = new SqlConnection(connect);                                        //G1
            SqlDataAdapter da4 = new SqlDataAdapter("Select * from UrMatObrasci", conn4);
            DataSet ds4 = new DataSet();
            conn4.Open();
            da4.Fill(ds4);
            conn4.Close();
            GridView5.DataSource = ds4.Tables[0];
            GridView5.DataBind();

            SqlConnection conn5 = new SqlConnection(connect);                                        //G1
            SqlDataAdapter da5 = new SqlDataAdapter("Select * from UrMatPisaciPribor", conn5);
            DataSet ds5 = new DataSet();
            conn5.Open();
            da5.Fill(ds5);
            conn5.Close();
            GridView6.DataSource = ds5.Tables[0];
            GridView6.DataBind();

            SqlConnection conn6 = new SqlConnection(connect);                                        //G1
            SqlDataAdapter da6 = new SqlDataAdapter("Select * from UrMatOstalo", conn6);
            DataSet ds6 = new DataSet();
            conn6.Open();
            da6.Fill(ds6);
            conn6.Close();
            GridView7.DataSource = ds6.Tables[0];
            GridView7.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)//G1
        {
            Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("lblIDKuverte");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from UrMatKuverte where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView2_RowDeleting(object sender1, GridViewDeleteEventArgs e1)
        {
            Label id = (Label)GridView2.Rows[e1.RowIndex].FindControl("lblIDFascikli");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from UrMatFascikli where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView3.Rows[e.RowIndex].FindControl("lblIDRegistratori");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from UrMatRegistratori where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView4.Rows[e.RowIndex].FindControl("lblIDPapir");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from UrMatPapir where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView5_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView5.Rows[e.RowIndex].FindControl("lblIDObrasci");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from UrMatObrasci where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView6_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView6.Rows[e.RowIndex].FindControl("lblIDPisaci");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from UrMatPisaciPribor where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView7_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView7.Rows[e.RowIndex].FindControl("lblIDOstalo");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from UrMatOstalo where ID=@1";
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

                TextBox texttal = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Kuverte1");
                TextBox textatest = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Dim1");
                TextBox textkol = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Kol1");
                TextBox textmjera = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Mjera1");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into UrMatKuverte(KUVERTE, DIMENZIJE, [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView1.FooterRow.FindControl("FooterKuverte");
                TextBox textatest = (TextBox)GridView1.FooterRow.FindControl("FooterKvalKuverte");
                TextBox textkol = (TextBox)GridView1.FooterRow.FindControl("FooterKolKuverte");
                TextBox textmjera = (TextBox)GridView1.FooterRow.FindControl("FooterMjerKuverte");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert intoUrMatKuverte(KUVERTE, DIMENZIJE,  [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView1.FooterRow.FindControl("FooterKuverte");
                TextBox textatest = (TextBox)GridView1.FooterRow.FindControl("FooterKvalKuverte");
                TextBox textkol = (TextBox)GridView1.FooterRow.FindControl("FooterKolKuverte");
                TextBox textmjera = (TextBox)GridView1.FooterRow.FindControl("FooterMjerKuverte");
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

                TextBox texttal = (TextBox)GridView2.Controls[0].Controls[0].FindControl("Fascikli1");
                TextBox textatest = (TextBox)GridView2.Controls[0].Controls[0].FindControl("DimFascikli");
                TextBox textkol = (TextBox)GridView2.Controls[0].Controls[0].FindControl("KoliFascikli");
                TextBox textmjera = (TextBox)GridView2.Controls[0].Controls[0].FindControl("MjeraFascikli");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into UrMatFascikli(FASCIKLI, DIMENZIJE, [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView2.FooterRow.FindControl("FooterFascikli");
                TextBox textatest = (TextBox)GridView2.FooterRow.FindControl("FooterKvalFascikli");
                TextBox textkol = (TextBox)GridView2.FooterRow.FindControl("FooterKolFascikli");
                TextBox textmjera = (TextBox)GridView2.FooterRow.FindControl("FooterMjerFascikli");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into UrMatFascikli(FASCIKLI, DIMENZIJE, [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView2.FooterRow.FindControl("FooterFascikli");
                TextBox textatest = (TextBox)GridView2.FooterRow.FindControl("FooterKvalFascikli");
                TextBox textkol = (TextBox)GridView2.FooterRow.FindControl("FooterKolFascikli");
                TextBox textmjera = (TextBox)GridView2.FooterRow.FindControl("FooterMjerFascikli");
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

                TextBox texttal = (TextBox)GridView3.Controls[0].Controls[0].FindControl("Registratori1");
                TextBox textatest = (TextBox)GridView3.Controls[0].Controls[0].FindControl("KarRegistratori");
                TextBox textkol = (TextBox)GridView3.Controls[0].Controls[0].FindControl("KoliRegistratori");
                TextBox textmjera = (TextBox)GridView3.Controls[0].Controls[0].FindControl("MjeraRegistratori");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into UrMatRegistratori(REGISTRATORI, DIMENZIJE, [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView3.FooterRow.FindControl("FooterRegistratori");
                TextBox textatest = (TextBox)GridView3.FooterRow.FindControl("FooterKvalRegistratori");
                TextBox textkol = (TextBox)GridView3.FooterRow.FindControl("FooterKolRegistratori");
                TextBox textmjera = (TextBox)GridView3.FooterRow.FindControl("FooterMjerRegistratori");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into UrMatRegistratori(REGISTRATORI, DIMENZIJE, [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView3.FooterRow.FindControl("FooterRegistratori");
                TextBox textatest = (TextBox)GridView3.FooterRow.FindControl("FooterKvalRegistratori");
                TextBox textkol = (TextBox)GridView3.FooterRow.FindControl("FooterKolRegistratori");
                TextBox textmjera = (TextBox)GridView3.FooterRow.FindControl("FooterMjerRegistratori");
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

                TextBox texttal = (TextBox)GridView4.Controls[0].Controls[0].FindControl("Papir1");
                TextBox textatest = (TextBox)GridView4.Controls[0].Controls[0].FindControl("KarPapir");
                TextBox textkol = (TextBox)GridView4.Controls[0].Controls[0].FindControl("KoliPapir");
                TextBox textmjera = (TextBox)GridView4.Controls[0].Controls[0].FindControl("MjeraPapir");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into UrMatPapir(PAPIR, KARAKTERISTIKE, [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView4.FooterRow.FindControl("FooterPapir");
                TextBox textatest = (TextBox)GridView4.FooterRow.FindControl("FooterKvalPapir");
                TextBox textkol = (TextBox)GridView4.FooterRow.FindControl("FooterKolPapir");
                TextBox textmjera = (TextBox)GridView4.FooterRow.FindControl("FooterMjerPapir");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into UrMatPapir(PAPIR, KARAKTERISTIKE, [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView4.FooterRow.FindControl("FooterPapir");
                TextBox textatest = (TextBox)GridView4.FooterRow.FindControl("FooterKvalPapir");
                TextBox textkol = (TextBox)GridView4.FooterRow.FindControl("FooterKolPapir");
                TextBox textmjera = (TextBox)GridView4.FooterRow.FindControl("FooterMjerPapir");
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

                TextBox texttal = (TextBox)GridView5.Controls[0].Controls[0].FindControl("Obrasci1");
                TextBox textatest = (TextBox)GridView5.Controls[0].Controls[0].FindControl("KarObrasci");
                TextBox textkol = (TextBox)GridView5.Controls[0].Controls[0].FindControl("KoliObrasci");
                TextBox textmjera = (TextBox)GridView5.Controls[0].Controls[0].FindControl("MjeraObrasci");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into UrMatObrasci(OBRASCI, KARAKTERISTIKE, [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView5.FooterRow.FindControl("FooterObrasci");
                TextBox textatest = (TextBox)GridView5.FooterRow.FindControl("FooterKvalObrasci");
                TextBox textkol = (TextBox)GridView5.FooterRow.FindControl("FooterKolObrasci");
                TextBox textmjera = (TextBox)GridView5.FooterRow.FindControl("FooterMjerObrasci");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into UrMatObrasci(OBRASCI, KARAKTERISTIKE, [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView5.FooterRow.FindControl("FooterObrasci");
                TextBox textatest = (TextBox)GridView5.FooterRow.FindControl("FooterKvalObrasci");
                TextBox textkol = (TextBox)GridView5.FooterRow.FindControl("FooterKolObrasci");
                TextBox textmjera = (TextBox)GridView5.FooterRow.FindControl("FooterMjerObrasci");
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

                TextBox texttal = (TextBox)GridView6.Controls[0].Controls[0].FindControl("Pisaci1");
                TextBox textatest = (TextBox)GridView6.Controls[0].Controls[0].FindControl("KarPisaci");
                TextBox textkol = (TextBox)GridView6.Controls[0].Controls[0].FindControl("KoliPisaci");
                TextBox textmjera = (TextBox)GridView6.Controls[0].Controls[0].FindControl("MjeraPisaci");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into UrMatPisaciPribor([PISAĆI PRIBOR], KARAKTERISTIKE, [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView6.FooterRow.FindControl("FooterPisaci");
                TextBox textatest = (TextBox)GridView6.FooterRow.FindControl("FooterKvalPisaci");
                TextBox textkol = (TextBox)GridView6.FooterRow.FindControl("FooterKolPisaci");
                TextBox textmjera = (TextBox)GridView6.FooterRow.FindControl("FooterMjerPisaci");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into UrMatPisaciPribor([PISAĆI PRIBOR], KARAKTERISTIKE, [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView6.FooterRow.FindControl("FooterPisaci");
                TextBox textatest = (TextBox)GridView6.FooterRow.FindControl("FooterKvalPisaci");
                TextBox textkol = (TextBox)GridView6.FooterRow.FindControl("FooterKolPisaci");
                TextBox textmjera = (TextBox)GridView6.FooterRow.FindControl("FooterMjerPisaci");
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

                TextBox texttal = (TextBox)GridView7.Controls[0].Controls[0].FindControl("Ostalo1");
                TextBox textatest = (TextBox)GridView7.Controls[0].Controls[0].FindControl("KarOstalo");
                TextBox textkol = (TextBox)GridView7.Controls[0].Controls[0].FindControl("KoliOstalo");
                TextBox textmjera = (TextBox)GridView7.Controls[0].Controls[0].FindControl("MjeraOstalo");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into UrMatOstalo(OSTALO, KARAKTERISTIKE, [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView7.FooterRow.FindControl("FooterOstalo");
                TextBox textatest = (TextBox)GridView7.FooterRow.FindControl("FooterKvalOstalo");
                TextBox textkol = (TextBox)GridView7.FooterRow.FindControl("FooterKolOstalo");
                TextBox textmjera = (TextBox)GridView7.FooterRow.FindControl("FooterMjerOstalo");

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
                TextBox texttal = (TextBox)GridView7.FooterRow.FindControl("FooterOstalo");
                TextBox textatest = (TextBox)GridView7.FooterRow.FindControl("FooterKvalOstalo");
                TextBox textkol = (TextBox)GridView7.FooterRow.FindControl("FooterKolOstalo");
                TextBox textmjera = (TextBox)GridView7.FooterRow.FindControl("FooterMjerOstalo");
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
            Label textID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblNovoIDKuverte");
            TextBox texttal = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoKuverte");
            TextBox textatest = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoKvalKuverte");
            TextBox textkol = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoKolKuverte");
            TextBox textmjera = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoMjerKuverte");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update UrMatKuverte set KUVERTE=@1, DIMENZIJE=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
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
            Label textID = (Label)GridView2.Rows[e.RowIndex].FindControl("lblNovoIDFascikli");
            TextBox texttal = (TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBoxNovoFascikli");
            TextBox textatest = (TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBoxNovoKvalFascikli");
            TextBox textkol = (TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBoxNovoKolFascikli");
            TextBox textmjera = (TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBoxNovoMjerFascikli");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update UrMatFascikli set FASCIKLI=@1, DIMENZIJE=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
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
            Label textID = (Label)GridView3.Rows[e.RowIndex].FindControl("lblNovoIDRegistratori");
            TextBox texttal = (TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBoxNovoRegistratori");
            TextBox textatest = (TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBoxNovoKvalRegistratori");
            TextBox textkol = (TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBoxNovoKolRegistratori");
            TextBox textmjera = (TextBox)GridView3.Rows[e.RowIndex].FindControl("TextBoxNovoMjerRegistratori");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update UrMatRegistratori set REGISTRATORI=@1, DIMENZIJE=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
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
            Label textID = (Label)GridView4.Rows[e.RowIndex].FindControl("lblNovoIDPapir");
            TextBox texttal = (TextBox)GridView4.Rows[e.RowIndex].FindControl("TextBoxNovoPapir");
            TextBox textatest = (TextBox)GridView4.Rows[e.RowIndex].FindControl("TextBoxNovoKvalPapir");
            TextBox textkol = (TextBox)GridView4.Rows[e.RowIndex].FindControl("TextBoxNovoKolPapir");
            TextBox textmjera = (TextBox)GridView4.Rows[e.RowIndex].FindControl("TextBoxNovoPapir");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update UrMatPapir set PAPIR=@1, KARAKTERISTIKE=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
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
            Label textID = (Label)GridView5.Rows[e.RowIndex].FindControl("lblNovoIDObrasci");
            TextBox texttal = (TextBox)GridView5.Rows[e.RowIndex].FindControl("TextBoxNovoObrasci");
            TextBox textatest = (TextBox)GridView5.Rows[e.RowIndex].FindControl("TextBoxNovoKvalObrasci");
            TextBox textkol = (TextBox)GridView5.Rows[e.RowIndex].FindControl("TextBoxNovoKolObrasci");
            TextBox textmjera = (TextBox)GridView5.Rows[e.RowIndex].FindControl("TextBoxNovoMjerObrasci");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update UrMatObrasci set OBRASCI=@1, KARAKTERISTIKE=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
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
            Label textID = (Label)GridView6.Rows[e.RowIndex].FindControl("lblNovoIDPisaci");
            TextBox texttal = (TextBox)GridView6.Rows[e.RowIndex].FindControl("TextBoxNovoPisaci");
            TextBox textatest = (TextBox)GridView6.Rows[e.RowIndex].FindControl("TextBoxNovoKvalPisaci");
            TextBox textkol = (TextBox)GridView6.Rows[e.RowIndex].FindControl("TextBoxNovoKolPisaci");
            TextBox textmjera = (TextBox)GridView6.Rows[e.RowIndex].FindControl("TextBoxNovoMjerPisaci");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update UrMatPisaciPribor set [PISAĆI PRIBOR]=@1, KARAKTERISTIKE=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
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
            Label textID = (Label)GridView7.Rows[e.RowIndex].FindControl("lblNovoIDOstalo");
            TextBox texttal = (TextBox)GridView7.Rows[e.RowIndex].FindControl("TextBoxNovoOstalo");
            TextBox textatest = (TextBox)GridView7.Rows[e.RowIndex].FindControl("TextBoxNovoKvalOstalo");
            TextBox textkol = (TextBox)GridView7.Rows[e.RowIndex].FindControl("TextBoxNovoKolOstalo");
            TextBox textmjera = (TextBox)GridView7.Rows[e.RowIndex].FindControl("TextBoxNovoMjerOstalo");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update UrMatOstalo set OSTALO=@1, KARAKTERISTIKE=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
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