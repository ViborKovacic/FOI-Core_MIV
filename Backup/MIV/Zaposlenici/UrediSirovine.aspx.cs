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
    public partial class UrediSirovine : System.Web.UI.Page
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
            SqlDataAdapter da = new SqlDataAdapter("Select * from SirovineZaTalionicu", conn);
            DataSet ds = new DataSet();
            conn.Open();
            da.Fill(ds);
            conn.Close();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

            SqlConnection conn1 = new SqlConnection(connect);
            SqlDataAdapter da1 = new SqlDataAdapter("Select * from SirovineKalupJezgra", conn1);
            DataSet ds1 = new DataSet();
            conn.Open();
            da1.Fill(ds1);
            conn.Close();
            GridView2.DataSource = ds1.Tables[0];
            GridView2.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("lblIDtal");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from SirovineZaTalionicu where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView2_RowDeleting(object sender1, GridViewDeleteEventArgs e1)
        {
            Label id = (Label)GridView2.Rows[e1.RowIndex].FindControl("lblIDkij");
            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from SirovineKalupJezgra where ID=@1";
            cmd.Parameters.Add("@1", SqlDbType.Int, 12).Value = id.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Bind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Insert"))
            {

                TextBox texttal = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Tal1");
                TextBox textatest = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Atest1");
                TextBox textkol = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Kol1");
                TextBox textmjera = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Mjera1");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into SirovineZaTalionicu([SIROVINE ZA TALIONICU], [ATEST_STL-lista_KEMIJSKI SASTAV:], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView1.FooterRow.FindControl("FooterTal");
                TextBox textatest = (TextBox)GridView1.FooterRow.FindControl("FooterAtTal");
                TextBox textkol = (TextBox)GridView1.FooterRow.FindControl("FooterKolTal");
                TextBox textmjera = (TextBox)GridView1.FooterRow.FindControl("FooterMjerTal");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into SirovineZaTalionicu([SIROVINE ZA TALIONICU], [ATEST_STL-lista_KEMIJSKI SASTAV:], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView1.FooterRow.FindControl("FooterTal");
                TextBox textatest = (TextBox)GridView1.FooterRow.FindControl("FooterAtTal");
                TextBox textkol = (TextBox)GridView1.FooterRow.FindControl("FooterKolTal");
                TextBox textmjera = (TextBox)GridView1.FooterRow.FindControl("FooterMjerTal");
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

                TextBox texttal = (TextBox)GridView2.Controls[0].Controls[0].FindControl("KiJ1");
                TextBox textatest = (TextBox)GridView2.Controls[0].Controls[0].FindControl("AteKiJ");
                TextBox textkol = (TextBox)GridView2.Controls[0].Controls[0].FindControl("KolKij");
                TextBox textmjera = (TextBox)GridView2.Controls[0].Controls[0].FindControl("MjerKiJ");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into SirovineKalupJezgra([SIROVINE ZA KALUPARSKU I JEZGRENU MJEŠAVINU], [ATEST_STL-lista_KEMIJSKI SASTAV:], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView2.FooterRow.FindControl("FooterKiJ");
                TextBox textatest = (TextBox)GridView2.FooterRow.FindControl("FooterAtKij");
                TextBox textkol = (TextBox)GridView2.FooterRow.FindControl("FooterKolKiJ");
                TextBox textmjera = (TextBox)GridView2.FooterRow.FindControl("FooterMjeKiJ");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into SirovineKalupJezgra([SIROVINE ZA KALUPARSKU I JEZGRENU MJEŠAVINU], [ATEST_STL-lista_KEMIJSKI SASTAV:], [GODIŠNJA KOLIČINA], [JEDINICA MJERE]) values(@2,@3,@4,@5)";
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
                TextBox texttal = (TextBox)GridView2.FooterRow.FindControl("FooterKiJ");
                TextBox textatest = (TextBox)GridView2.FooterRow.FindControl("FooterAtKij");
                TextBox textkol = (TextBox)GridView2.FooterRow.FindControl("FooterKolKiJ");
                TextBox textmjera = (TextBox)GridView2.FooterRow.FindControl("FooterMjeKiJ");
                texttal.Text = "";
                textatest.Text = "";
                textkol.Text = "";
                textmjera.Text = "";

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            Bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label textID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblNovoID");
            TextBox texttal = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoTal");
            TextBox textatest = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoAtTal");
            TextBox textkol = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoKolTal");
            TextBox textmjera = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoMjerTal");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update SirovineZaTalionicu set [SIROVINE ZA TALIONICU]=@1, [ATEST_STL-lista_KEMIJSKI SASTAV:]=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
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
            Label textID = (Label)GridView2.Rows[e.RowIndex].FindControl("lblNovoKiJ");
            TextBox texttal = (TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBoxNovoKiJ");
            TextBox textatest = (TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBoxNovoAtKij");
            TextBox textkol = (TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBoxNovoKolKiJ");
            TextBox textmjera = (TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBoxNovoMjeKiJ");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update SirovineKalupJezgra set [SIROVINE ZA KALUPARSKU I JEZGRENU MJEŠAVINU]=@1, [ATEST_STL-lista_KEMIJSKI SASTAV:]=@2, [GODIŠNJA KOLIČINA]=@3, [JEDINICA MJERE]=@4 where ID=@5";
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
    }
}