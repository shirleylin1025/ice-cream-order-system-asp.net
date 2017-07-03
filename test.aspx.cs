using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(connString))
        {
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM ", conn);
            conn.Open();
            int count = (int)cmd.ExecuteScalar();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strInsert = "insert into [member] "
                     + "([UserName],[password],[birthday],[image],[manager]) "
                     + "values ( @eusername, @epassword, @ebirthday, @eimage, @emanger ) ";

        // 1.
        string strSource = "Data Source=ACER;" + "Initial Catalog=icecream;" + "Integrated Security=True";
        // 2.
        SqlConnection conn = new SqlConnection(strSource);
        // 3.
        SqlCommand cmd = new SqlCommand(strInsert, conn);

       



        conn.Open();

        int rows = cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string strcount = "select count(*) from member";
        string strSource = "Data Source=ACER;" + "Initial Catalog=icecream;" + "Integrated Security=True";
        // 2.
        SqlConnection conn = new SqlConnection(strSource);
        // 3.
        SqlCommand cmd = new SqlCommand(strcount, conn);

        conn.Open();

        int rows = cmd.ExecuteNonQuery();
        conn.Close();
    }
}