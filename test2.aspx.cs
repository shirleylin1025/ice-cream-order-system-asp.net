using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class test2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String Username = TextBox1.Text;
        String Password = TextBox2.Text;

        SqlConnection conn = new SqlConnection("Data Source=ACER;Initial Catalog=icecream;Integrated Security=True");
        conn.Open();
        String strSQL = @"SELECT * FROM [member] WHERE UserName = @eUsername";
        SqlCommand cmd = new SqlCommand(strSQL, conn);
        cmd.Parameters.Add("@eUsername", SqlDbType.VarChar).Value = Username;
        SqlDataReader data = cmd.ExecuteReader();

        if (data.Read())
        {
            if (data["password"].ToString() == TextBox2.Text)
            {
                // Login success
                Session["UserName"] = Username;
                Response.Redirect("index.aspx");
                Label1.Visible = true;

            }
            else
            {
                Label2.Visible = true;
            }
        }
            conn.Close();

        }
}