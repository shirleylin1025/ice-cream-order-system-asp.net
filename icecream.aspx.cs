using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class final_producticecream : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            labname.Text = "Hi," + Session["UserName"].ToString();
            String Username = Session["UserName"].ToString();
            SqlConnection conn = new SqlConnection("Data Source=ACER;Initial Catalog=icecream;Integrated Security=True");
            conn.Open();
            String strSQL = @"SELECT * FROM [member] WHERE UserName = @eUsername";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.Add("@eUsername", SqlDbType.VarChar).Value = Username;
            SqlDataReader data = cmd.ExecuteReader();
            if (data.Read())
            {
                if (data["manager"].ToString() == "是")
                {
                    btnmanager.Visible = true;

                }
            }
            conn.Close();
        }
        else
        {
            labname.Text = "Hi,訪客";
            Button1.Visible = false;
        }
    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
    protected void btnmanager_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage.aspx");
    }
}