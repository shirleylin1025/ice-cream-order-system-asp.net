using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        tbxName.Text = "輸入您的名字";
        tbxName.Attributes.Add("style", "color:#666666");
        tbxName.Attributes.Add("onFocus", "this.value=''");//點擊後清空

        tbxEmail.Text = "輸入您的E-Mail";
        tbxEmail.Attributes.Add("style", "color:#666666");
        tbxEmail.Attributes.Add("onFocus", "this.value=''");

        tbxMessage.Text = "輸入訊息";
        tbxMessage.Attributes.Add("style", "color:#666666");
        tbxMessage.Attributes.Add("onFocus", "this.value=''");

         */
        if (Session["UserName"] != null)
        {
            Button2.Visible = true;
            if (Session["UserName"].ToString() == "Shirley")
            {
                btnmanager.Visible = true;
            }
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string str = "";
        if (tbxName.Text != "NULL" && tbxMessage.Text != str)
        {
            string strInsert = "insert into [contact] "
                     + "([UserName], [Email], [Message]) "
                     + "values ( @eName, @eEmail, @eMessage) ";


            string strSource = "Data Source=ACER;" + "Initial Catalog=icecream;" + "Integrated Security=True";

            SqlConnection conn = new SqlConnection(strSource);

            SqlCommand cmd = new SqlCommand(strInsert, conn);


            cmd.Parameters.Add("@eName", SqlDbType.NVarChar).Value = tbxName.Text;
            cmd.Parameters.Add("@eEmail", SqlDbType.NVarChar).Value = tbxEmail.Text;
            cmd.Parameters.Add("@eMessage", SqlDbType.NVarChar).Value = tbxMessage.Text;
            conn.Open();

            int rows = cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('我們已收到您的訊息，將會盡快回覆'); location.href='contact.aspx'; </script>");

        }
        else
        {
            Response.Write("<script>alert('您的訊息未送出，請再次確認'); location.href='contact.aspx'; </script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}