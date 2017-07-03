using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        if (Session["UserName"] != null)
        {
            lablogintitle.Text = "Hi, " + Session["UserName"].ToString();
            tbxAccount.Visible = false;
            labAccount.Visible = false;
            labPassword.Visible = false;
            tbxPassword.Visible = false;

            btnLog.Visible = false;
            btnNew.Visible = false;
            btnlogout.Visible = true;

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
            
        }   
    }
    protected void btnLog_Click(object sender, EventArgs e)
    {

        String Username = tbxAccount.Text;
        SqlConnection conn = new SqlConnection("Data Source=ACER;Initial Catalog=icecream;Integrated Security=True");
        conn.Open();
        String strSQL = @"SELECT * FROM [member] WHERE UserName = @eUsername";
        SqlCommand cmd = new SqlCommand(strSQL, conn);
        cmd.Parameters.Add("@eUsername", SqlDbType.VarChar).Value = Username;
        SqlDataReader data = cmd.ExecuteReader();
        if (data.Read())
        {
            if (data["password"].ToString() == tbxPassword.Text)
            {
                // Login success
                Session["UserName"] = Username;
                //Response.Redirect("index.aspx");
                lablogintitle.Text = "Hi, " + tbxAccount.Text;
                tbxAccount.Visible = false;
                labAccount.Visible = false;
                labPassword.Visible = false;
                tbxPassword.Visible = false;

                btnLog.Visible = false;
                btnNew.Visible = false;

                btnlogout.Visible = true;

            }
            else
            {
                lablogintitle.Text = "密碼錯誤!";
            }
        }
        conn.Close();
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        Response.Redirect("join.aspx");
    }
    protected void btnmanager_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage.aspx");
    }
}