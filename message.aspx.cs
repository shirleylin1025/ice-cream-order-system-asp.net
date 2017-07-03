using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbxTime.Text = DateTime.Now.ToString();

        if (Session["UserName"] != null)
        {
            tbxName.Text = Session["UserName"].ToString();

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
            tbxName.Text = "NULL";
            Button2.Visible = false;
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "";
        if (tbxName.Text !="NULL"&& tbxMessage.Text!=str)
        {
            string strInsert = "insert into [message] "
                     + "([Name], [Time], [Message]) "
                     + "values ( @ename, @etime, @emessage) ";

            
            string strSource = "Data Source=ACER;" + "Initial Catalog=icecream;" + "Integrated Security=True";
            
            SqlConnection conn = new SqlConnection(strSource);
            
            SqlCommand cmd = new SqlCommand(strInsert, conn);


            cmd.Parameters.Add("@ename", SqlDbType.NVarChar).Value = Session["UserName"].ToString();
            cmd.Parameters.Add("@etime", SqlDbType.NVarChar).Value = tbxTime.Text;
            cmd.Parameters.Add("@emessage", SqlDbType.NVarChar).Value = tbxMessage.Text;

            conn.Open();

            int rows = cmd.ExecuteNonQuery();
            conn.Close();


            string strInsert2 = "insert into [message] "
                     + "([Name], [Time], [Message]) "
                     + "values ( @ename2, @etime2, @emessage2) ";


            string strSource2 = "Data Source=ACER;" + "Initial Catalog=icecream;" + "Integrated Security=True";

            SqlConnection conn2 = new SqlConnection(strSource2);

            SqlCommand cmd2 = new SqlCommand(strInsert2, conn2);

            cmd2.Parameters.Add("@ename2", SqlDbType.NVarChar).Value = "版主";
            cmd2.Parameters.Add("@etime2", SqlDbType.NVarChar).Value = "版主於" + DateTime.Now.ToString() + "收到訊息";
            cmd2.Parameters.Add("@emessage2", SqlDbType.NVarChar).Value = "版主尚未回覆";


            conn2.Open();

            int rows2 = cmd2.ExecuteNonQuery();
            conn2.Close();

            ListView1.DataBind();//重整
            tbxprompt.Visible = true;
            tbxprompt.Text = "新增留言成功!";
            tbxprompt.ForeColor = System.Drawing.Color.Red;
        }
        if (tbxName.Text == "NULL")
        {
            tbxprompt.Visible = true;
            tbxprompt.Text = "請先登入!";
            tbxprompt.ForeColor = System.Drawing.Color.Red;
        }
        if (tbxMessage.Text ==str)
        {
            tbxprompt.Visible = true;
            tbxprompt.Text = "留言處請勿空白!!";
            tbxprompt.ForeColor = System.Drawing.Color.Red;
        }
        
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
    protected void btnmanager_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage.aspx");
    }
}