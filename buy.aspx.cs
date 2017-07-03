using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data.SqlClient;
using System.Data;

public partial class buy : System.Web.UI.Page
{
    string iceInsert =
            "insert into [ice] " +
            "([username] ,[訂購日期] ,[金額] ,[品名] ,[數量]) " +
            "values (@ename, @edate, @emoney, @eice, @enum) ";
 
    string iceInsert2 =
            "update [ice] set [電話] =@ephone ,[地址] = @eadd ,[付款方式] = @epay where (([訂購日期] = @edate) and ([username] = @ename))";

    /*string iceInsert =
            "insert into [ice] " +
            "([username] ,[訂購日期] ,[金額] ,[品名] ,[數量] ,[電話] ,[地址] ,[付款方式] ,[訂單狀況]) " +
            "values (@ename, @edate, @emoney, @eice, @enum, @ephone, @eadd, @epay, @elist) ";
     */

    string iceDelete =
        "delete from [ice] where (([訂購日期] = @edate) and ([username] = @ename))";

    string datestr = DateTime.Now.ToString("yyyy-MM-dd");

    private int sum = 0;

    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string Delstr = "Data Source=ACER;Initial Catalog=buylist;Integrated Security=True";
        SqlConnection conn = new SqlConnection(Delstr);
        int no = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
        int del = Convert.ToInt32(GridView2.Rows[e.RowIndex].Cells[4].Text);
        
        sum = Int32.Parse(lbltotal.Text);
        lbltotal.Text = (sum - del).ToString();

        string sql = "delete from ice where 編號='" + no + "' ";

        SqlCommand cmd = new SqlCommand(sql,conn);
        conn.Open();
        int rows = cmd.ExecuteNonQuery();
        conn.Close();
        DataBind();
    }

    private object SqlParameter(string p, SqlDbType sqlDbType)
    {
        throw new NotImplementedException();
    }

    public void Del()
    {
        string connStr = "Data Source=ACER;Initial Catalog=buylist;Integrated Security=True";

        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand(iceDelete, conn);

        //cmd.Parameters.Add("@enum", SqlDbType.Int).Value = lbxNum.SelectedValue;

        cmd.Parameters.Add("@ename", SqlDbType.VarChar).Value = Session["UserName"].ToString();
        cmd.Parameters.Add("@edate", SqlDbType.VarChar).Value = datestr;

        conn.Open();
        int rows = cmd.ExecuteNonQuery();
        conn.Close();
        GridView1.DataBind();

    }

    public void More()
    {      

        if (cblcream.SelectedIndex == -1)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message",
                "<script language='javascript' defer>alert('您尚未選取冰淇淋口味');</script>");
        }
        else if (rblcookie.SelectedIndex == -1)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message",
                "<script language='javascript' defer>alert('您尚未選取甜筒口味');</script>");
        }
        else
        {
            string connStr = "Data Source=ACER;Initial Catalog=buylist;Integrated Security=True";

            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(iceInsert, conn);

            int num = Int32.Parse(lbxNum.SelectedItem.Text);
            int n = 0,total=0;
            string icestr = "";
            
            
            for (int i = 0; i < cblcream.Items.Count; i++)
            {
                if (cblcream.Items[i].Selected)
                {
                    //lblall.Text += cblcream.Items[i].Text;
                    icestr += cblcream.Items[i].Text;
                    n++;
                }
            }
            if (n == 1)
            {
                total+=num*60;
            }
            else if(n == 2)
            {
                total+=num*65;
            }
            else
            {
                total+=num*70;
            }
            //lblall.Text += "冰淇淋 + " + rblcookie.SelectedItem.Text + "殼<br>";

            cmd.Parameters.Add("@ename", SqlDbType.VarChar).Value = Session["UserName"].ToString();
            cmd.Parameters.Add("@edate", SqlDbType.VarChar).Value = datestr;
            cmd.Parameters.Add("@eice", SqlDbType.VarChar).Value = icestr + "冰淇淋 + " + rblcookie.SelectedItem.Text + "殼";
            cmd.Parameters.Add("@emoney", SqlDbType.Int).Value = total.ToString();
            cmd.Parameters.Add("@enum", SqlDbType.Int).Value = lbxNum.SelectedValue;
            GridView1.Visible = true;
            btnNext.Enabled = true;

            sum = Int32.Parse(lbltotal.Text);

            lbltotal.Text = (sum + total).ToString();
            

            conn.Open();
            int rows = cmd.ExecuteNonQuery();
            conn.Close();
            DataBind();
        }
        
    }
    
    public void Last()
    {
        if (rblPay.SelectedIndex == -1)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message",
                "<script language='javascript' defer>alert('您尚未選擇付款方式');</script>");
        }
        else
        {
            string connStr = "Data Source=ACER;Initial Catalog=buylist;Integrated Security=True";

            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(iceInsert2, conn);
            datestr = DateTime.Now.ToString("yyyy-MM-dd");

            cmd.Parameters.Add("@ename", SqlDbType.VarChar).Value = Session["UserName"].ToString();
            cmd.Parameters.Add("@edate", SqlDbType.VarChar).Value = datestr;
            cmd.Parameters.Add("@ephone", SqlDbType.VarChar).Value = txtphone.Text;
            cmd.Parameters.Add("@eadd", SqlDbType.VarChar).Value = txtadd.Text;
            cmd.Parameters.Add("@epay", SqlDbType.VarChar).Value = rblPay.SelectedItem.Text;

            conn.Open();
            int rows = cmd.ExecuteNonQuery();
            conn.Close();
            DataBind();
        }

    }

    public void Fin()
    {
        if (rblPay.SelectedIndex == -1)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message",
                "<script language='javascript' defer>alert('您尚未選擇付款方式');</script>");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message",
                "<script language='javascript' defer>alert('完成訂購！');location.href='index.aspx';</script>");
            //Response.Write("<script language='javascript'>window.open('index.aspx','_parent');</script>");

        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserName"] != null)
        {

            lblName.Text= Session["UserName"].ToString();
            lblna.Text = "Hi," + Session["UserName"].ToString();
            SqlConnection conn = new SqlConnection("Data Source=ACER;Initial Catalog=icecream;Integrated Security=True");
            conn.Open();
            String strSQL = @"SELECT * FROM [member] WHERE UserName = @eUsername";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.Add("@eUsername", SqlDbType.VarChar).Value = Session["UserName"].ToString();
            SqlDataReader dataUser = cmd.ExecuteReader();
            conn.Close();
            if (Session["UserName"].ToString() == "Shirley")
                btnmanager.Visible = true;

        }
        else
        {
            Response.Write("<script>alert('請先登入!'); location.href='index.aspx'; </script>");
        }

        lbldate.Text = DateTime.Now.ToString("yyyy-MM-dd");

        if (!Page.IsPostBack) 
        {
            MultiView1.ActiveViewIndex = 0;

        }
        int c = 0; string imgstr="";
        for (int i = 0; i < cblcream.Items.Count; i++)
        {
            if (cblcream.Items[i].Selected)
            {
                c++;
                
                if (c > 3)
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "message",
                        "<script language='javascript' defer>alert('最多只能選擇三種');</script>");
                    cblcream.Items[i].Selected = false;
                }
                else
                {
                    imgstr += i.ToString();
                    if (c == 1)
                    {
                        lbldo.Text = Int32.Parse(lbxNum.SelectedItem.Text) * 60 + "元";                        
                    }
                    else if (c == 2)
                    {
                        lbldo.Text = Int32.Parse(lbxNum.SelectedItem.Text) * 65 + "元";                  
                    }
                    else if (c == 3)
                    {
                        lbldo.Text = Int32.Parse(lbxNum.SelectedItem.Text) * 70 + "元";                        
                    }
                }
            }
        }
        imgice.ImageUrl = "~/orderimg/" + imgstr + ".png";

        if (txtphone.Text == "" || txtadd.Text == "")
        {
            btnFinish.Enabled = false;
        }
        else
        {
            btnFinish.Enabled = true;
        }
    }

    protected void btnMore_Click(object sender, EventArgs e)
    {
        More();
        //Look();
        lbxNum.SelectedIndex = -1;
        cblcream.SelectedIndex = -1;
        rblcookie.SelectedIndex = -1;   

    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        
       
    }
    protected void btnUp_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnDown_Click(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 2;
    }

    protected void btnupp_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void btnFinish_Click(object sender, EventArgs e)
    {
        Last();
        Fin();
    }

    public string connectString { get; set; }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Del();
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "message",
                "<script language='javascript' defer>alert('取消成功！');location.href='index.aspx';</script>");
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
    int _summary = 0;
   
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            var rowdata = ((System.Data.DataRowView)e.Row.DataItem).Row;
            int itemp;
            int.TryParse(rowdata.ItemArray[3].ToString(), out itemp);
            _summary += itemp;
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[2].Text = "合計金額: " + _summary.ToString();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage.aspx");
    }
}