using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

public partial class join : System.Web.UI.Page
{
    private void Page_Load(object sender, System.EventArgs e)
    {
        DateTime tnow = DateTime.Now;//現在時間 
        ArrayList AlYear = new ArrayList();
        int i;
        for (i = 1980; i <= 2017; i++)
            AlYear.Add(i);
        ArrayList AlMonth = new ArrayList();
        for (i = 1; i <= 12; i++)
            AlMonth.Add(i);
        if (!this.IsPostBack)
        {
            DropDownList1.DataSource = AlYear;
            DropDownList1.DataBind();//綁定年 
            //選擇當前年 
            DropDownList1.SelectedValue = tnow.Year.ToString();
            DropDownList2.DataSource = AlMonth;
            DropDownList2.DataBind();//綁定月 
            //選擇當前月 
            DropDownList2.SelectedValue = tnow.Month.ToString();
            int year, month;
            year = Int32.Parse(DropDownList1.SelectedValue);
            month = Int32.Parse(DropDownList2.SelectedValue);
            BindDays(year, month);//綁定天 
            //選擇當前日期 
            DropDownList3.SelectedValue = tnow.Day.ToString();
        }
    }


    //判斷閏年 
    private bool CheckLeap(int year)
    {
        if ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0))
            return true;
        else return false;
    }
    //綁定每月的天數 
    private void BindDays(int year, int month)
    {
        int i;
        ArrayList AlDay = new ArrayList();

        switch (month)
        {
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
                for (i = 1; i <= 31; i++)
                    AlDay.Add(i);
                break;
            case 2:
                if (CheckLeap(year))
                {
                    for (i = 1; i <= 29; i++)
                        AlDay.Add(i);
                }
                else
                {
                    for (i = 1; i <= 28; i++)
                        AlDay.Add(i);
                }
                break;
            case 4:
            case 6:
            case 9:
            case 11:
                for (i = 1; i <= 30; i++)
                    AlDay.Add(i);
                break;
        }
        DropDownList3.DataSource = AlDay;
        DropDownList3.DataBind();
    } 
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "";
        String man = "男";
        String woman = "女";
        birthday.Text = DropDownList1.Text + "/" + DropDownList2.Text + "/" + DropDownList3.Text;
        if (tbxaccount.Text == str)
            lblaccount.Visible = true;
        else
            lblaccount.Visible = false;
        if (tbxpassword.Text == str)
            lblpassword.Visible = true;
        else
            lblpassword.Visible = false;
        if (tbxpasswordtwo.Text == str)
            lblpasswordtwo.Visible = true;
        else
            lblpasswordtwo.Visible = false;
        if (lblpassword.Text != lblpasswordtwo.Text)
            lblno.Visible = true;
        else
            lblno.Visible = false;
        if (tbxaddress.Text == str)
            lbladdress.Visible = true;
        else
            lbladdress.Visible = false;
        if (tbxphone.Text == str)
            lblphone.Visible = true;
        else
            lblphone.Visible = false;
        if (tbxpassword.Text != tbxpasswordtwo.Text)
            lblno.Visible = true;
        else
            lblno.Visible = false;
        if (RadioButtonList1.Items[0].Selected)
            gender.Text = "男";
        else if (RadioButtonList1.Items[1].Selected)
            gender.Text = "女";
        else
            labGender.Visible = true;
        if (tbxaccount.Text != str && tbxpassword.Text != str && tbxpasswordtwo.Text != str && tbxaddress.Text != str && tbxphone.Text != str && tbxpassword.Text == tbxpasswordtwo.Text && RadioButtonList1.Items[0].Selected == true || RadioButtonList1.Items[1].Selected == true)
        {
            string strInsert = "insert into [member] "
                     + "([UserName],[password],[gender],[birthday],[address],[phone]) "
                     + "values ( @eName, @ePassword, @eGender, @eBirthday, @eAddress, @ePhone) ";


            string strSource = "Data Source=ACER;" + "Initial Catalog=icecream;" + "Integrated Security=True";

            SqlConnection conn = new SqlConnection(strSource);

            SqlCommand cmd = new SqlCommand(strInsert, conn);


            cmd.Parameters.Add("@eName", SqlDbType.NVarChar).Value = tbxaccount.Text;
            cmd.Parameters.Add("@ePassword", SqlDbType.NVarChar).Value = tbxpassword.Text;
            cmd.Parameters.Add("@eGender", SqlDbType.NVarChar).Value = gender.Text;
            cmd.Parameters.Add("@eBirthday", SqlDbType.NVarChar).Value = birthday.Text;
            cmd.Parameters.Add("@eAddress", SqlDbType.NVarChar).Value = tbxaddress.Text;
            cmd.Parameters.Add("@ePhone", SqlDbType.NVarChar).Value = tbxphone.Text;

            conn.Open();

            int rows = cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('你已成功加入會員，請登入!'); location.href='index.aspx'; </script>");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int year, month;
        year = Int32.Parse(DropDownList1.SelectedValue);
        month = Int32.Parse(DropDownList2.SelectedValue);
        BindDays(year, month); 
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int year, month;
        year = Int32.Parse(DropDownList1.SelectedValue);
        month = Int32.Parse(DropDownList2.SelectedValue);
        BindDays(year, month); 
    }
}