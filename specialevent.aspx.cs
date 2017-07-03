using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class specialevent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["UserName"] != null) 
        {

            labname.Text = "Hi," + Session["UserName"].ToString();
            SqlConnection conn = new SqlConnection("Data Source=ACER;Initial Catalog=icecream;Integrated Security=True");
            conn.Open();
            String strSQL = @"SELECT * FROM [member] WHERE UserName = @eUsername";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.Add("@eUsername", SqlDbType.VarChar).Value = Session["UserName"].ToString();
            SqlDataReader dataUser = cmd.ExecuteReader();
            conn.Close();
        }
        else
        {
            Response.Write("<script>alert('請先登入!'); location.href='index.aspx'; </script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
}