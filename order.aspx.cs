using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //
        if (Session["UserName"] != null)
        {
            Label4.Text = Session["UserName"].ToString();
            Label5.Text = "Hi," + Session["UserName"].ToString() + "這是你的訂單紀錄";
            btnlogout.Visible = true;
        }
        else
        {
            Response.Write("<script>alert('請先登入!'); location.href='index.aspx'; </script>");
        }

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
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
    protected void btnmanager_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage.aspx");
    }
}