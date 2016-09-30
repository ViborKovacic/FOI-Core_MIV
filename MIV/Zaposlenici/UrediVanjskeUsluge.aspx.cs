﻿using System;
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
    public partial class UrediVanjskeUsluge : System.Web.UI.Page
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
            SqlDataAdapter da = new SqlDataAdapter("Select * from VanjskeUsluge", conn);
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
            cmd.CommandText = "Delete from VanjskeUsluge where ID=@1";
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

                TextBox textUsluga = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Usluga");
                TextBox textOpis = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Opis");
                TextBox textMjera = (TextBox)GridView1.Controls[0].Controls[0].FindControl("Mjera");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into VanjskeUsluge(USLUGA, OPIS, [JEDINICA MJERE]) values(@1,@2,@3)";
                cmd.Parameters.AddWithValue("@1", textUsluga.Text);
                cmd.Parameters.AddWithValue("@2", textOpis.Text);
                cmd.Parameters.AddWithValue("@3", textMjera.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();

            }

            if (e.CommandName == "Insert1")
            {
                TextBox textUsluga = (TextBox)GridView1.FooterRow.FindControl("FooterUsluga");
                TextBox textOpis = (TextBox)GridView1.FooterRow.FindControl("FooterOpis");
                TextBox textMjera = (TextBox)GridView1.FooterRow.FindControl("FooterMjera");

                SqlConnection conn = new SqlConnection(connect);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into VanjskeUsluge(USLUGA, OPIS, [JEDINICA MJERE]) values(@1,@2,@3)";
                cmd.Parameters.AddWithValue("@1", textUsluga.Text);
                cmd.Parameters.AddWithValue("@2", textOpis.Text);
                cmd.Parameters.AddWithValue("@3", textMjera.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Bind();
            }

            if (e.CommandName == "Clear1")
            {
                TextBox textUsluga = (TextBox)GridView1.FooterRow.FindControl("FooterUsluga");
                TextBox textOpis = (TextBox)GridView1.FooterRow.FindControl("FooterOpis");
                TextBox textMjera = (TextBox)GridView1.FooterRow.FindControl("FooterMjera");

                textUsluga.Text = "";
                textOpis.Text = "";
                textMjera.Text = "";
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
            TextBox textUsluga = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoUsluga");
            TextBox textOpis = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoOpis");
            TextBox textMjera = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBoxNovoMjera");

            SqlConnection conn = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update VanjskeUsluge set USLUGA=@1, OPIS=@2, [JEDINICA MJERE]=@3 where ID=@4";
            cmd.Parameters.AddWithValue("@1", textUsluga.Text);
            cmd.Parameters.AddWithValue("@2", textOpis.Text);
            cmd.Parameters.AddWithValue("@3", textMjera.Text);
            cmd.Parameters.AddWithValue("@4", textID.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView1.EditIndex = -1;
            Bind();
        }
    }
}