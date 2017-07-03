<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buy.aspx.cs" Inherits="buy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BUY</title>
		<meta chlarset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />

        <style>
            .imgBuy
            {
                float:left;
                margin: 20px 25px 15px 15px;
            }
            #all
            {
                margin:10px 15px 100px 15px;  
            }
            .btn 
            { 
                float:right; 
                padding-right:20%;  
            }
            #list
            {
                float:left;
                
                padding-left:15px;
                
            }
            .youbuy
            {
                margin: 40px 0px 20px 30px;
            }
            
            .grid
            {
                padding-left:30px; 
                margin-top:20px;
            }
            
        </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- Header -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:buylistConnectionString2 %>"     
            SelectCommand="SELECT * FROM [ice] WHERE (([訂購日期] = @訂購日期) AND ([username] = @username))" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM ice WHERE (編號 = @Param1)" 
             
            OldValuesParameterFormatString="original_{0}" 
            
            >
            <DeleteParameters>
                <asp:Parameter Name="Param1" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="訂購日期" Type="String" />
                <asp:Parameter Name="金額" Type="Int32" />
                <asp:Parameter Name="品名" Type="String" />
                <asp:Parameter Name="數量" Type="Int32" />
                <asp:Parameter Name="電話" Type="String" />
                <asp:Parameter Name="地址" Type="String" />
                <asp:Parameter Name="付款方式" Type="String" />
                <asp:Parameter Name="訂單狀況" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="lbldate" Name="訂購日期" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="lblName" Name="username" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="訂購日期" Type="String" />
                <asp:Parameter Name="金額" Type="Int32" />
                <asp:Parameter Name="品名" Type="String" />
                <asp:Parameter Name="數量" Type="Int32" />
                <asp:Parameter Name="電話" Type="String" />
                <asp:Parameter Name="地址" Type="String" />
                <asp:Parameter Name="付款方式" Type="String" />
                <asp:Parameter Name="訂單狀況" Type="String" />
                <asp:Parameter Name="original_編號" Type="Int32" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_訂購日期" Type="String" />
                <asp:Parameter Name="original_金額" Type="Int32" />
                <asp:Parameter Name="original_品名" Type="String" />
                <asp:Parameter Name="original_數量" Type="Int32" />
                <asp:Parameter Name="original_電話" Type="String" />
                <asp:Parameter Name="original_地址" Type="String" />
                <asp:Parameter Name="original_付款方式" Type="String" />
                <asp:Parameter Name="original_訂單狀況" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
			<header id="header">
				<h1><a href="index.aspx">ICE CREAM
                    <asp:Button ID="btnLogout" runat="server" 
                        Text="登出" onclick="btnLogout_Click" />&nbsp; <asp:Button ID="btnmanager" 
                        runat="server" Text="後臺管理" onclick="Button1_Click" Visible="False"></asp:Button></a></h1>
				<a href="#nav">Menu</a>
			</header>

		<!-- Nav -->
			<nav id="nav">
				<ul class="links">
                    <li><a href="index.aspx">首頁</a></li>
                    <li><a href="specialevent.aspx">特別活動</a></li>
                    <li>產品介紹
                        <ul>
                            <li><a href="icecream.aspx">Icecream</a></li>
                            <li><a href="cookies.aspx">Cookies</a></li>
                        </ul>
                    </li>
                    <li><a href="buy.aspx">訂購</a></li>
                    <li><a href="contact.aspx">聯絡我</a></li>
                    <li><a href="message.aspx">留言板</a></li>
                </ul>
			</nav>

            <div id="all">

            <asp:MultiView ID="MultiView1" runat="server">
                <br />
                <asp:View ID="View1" runat="server">
                    
                    <div id="buy">
                    <div class="imgBuy">
                        <asp:Image ID="imgice" runat="server" Height="200px" Width="200px" />
                        </div>
                    
                    
                    <asp:Label ID="Label1" runat="server" Text="Label">數量:</asp:Label>
                    <asp:ListBox ID="lbxNum" runat="server" Rows="1" Width="65px" AutoPostBack="True">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:ListBox>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="冰淇淋口味" Font-Size="Larger"></asp:Label>
                        <br />
                    <asp:CheckBoxList ID="cblcream" runat="server" 
                        RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="True">
                        <asp:ListItem>巧克力</asp:ListItem>
                        <asp:ListItem>牛奶</asp:ListItem>
                        <asp:ListItem>抹茶</asp:ListItem>
                        <asp:ListItem>草莓</asp:ListItem>
                        <asp:ListItem>芋頭</asp:ListItem>
                        <asp:ListItem>香蕉</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="甜筒口味" Font-Size="Larger"></asp:Label>
                        <br />
                    <asp:RadioButtonList ID="rblcookie" runat="server" 
                            RepeatDirection="Horizontal" Height="12px" Width="350px" 
                            RepeatLayout="Flow">
                        <asp:ListItem>焦糖</asp:ListItem>
                        <asp:ListItem>咖啡</asp:ListItem>
                        <asp:ListItem>巧克力</asp:ListItem>
                        </asp:RadioButtonList>

                        <asp:Label ID="lbldo" runat="server" Text="$$" Font-Size="X-Large"></asp:Label>

                    <div class="btn">
                    <asp:Button ID="btnMore" runat="server" Text="新增" onclick="btnMore_Click" />
                    <asp:Label ID="lbldate" runat="server" Text="" Visible="false"></asp:Label>
                    
                    
                    </div>
                    </div>                      
                    <hr />
                    
                    <div class="grid">
                    
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource1" Height="220px" Width="550px" Visible="False" 
                            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                            ForeColor="Black" GridLines="None" OnRowDataBound="GridView1_RowDataBound" 
                            ShowFooter="True">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="品名" HeaderText="品名" SortExpression="品名" />
                                <asp:BoundField DataField="金額" HeaderText="金額" SortExpression="金額" />
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                        
                    <br />
                    <asp:Button ID="btnNext" runat="server" Text="下一步" Enabled="False" 
                            onclick="btnNext_Click" />
                    
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">

                    <div class="youbuy">
                        <asp:Label ID="lblName" runat="server" Text="Username" Font-Size="X-Large"></asp:Label>
                        &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text=" 您訂購了" 
                            Font-Size="X-Large"></asp:Label>
                        
                        </div>
                        <div class="grid">
                        <asp:GridView ID="GridView2" runat="server" autogeneratecolumns="False"
                            DataSourceID="SqlDataSource1" Width="600px"
                            AutoGenerateDeleteButton="True" OnRowDeleting="GridView2_RowDeleting" 
                            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                            CellPadding="2" ForeColor="Black" GridLines="None" DataKeyNames="編號" >

                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="編號" HeaderText="編號" SortExpression="編號" 
                                    InsertVisible="False" ReadOnly="True" Visible="false" />
                                <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
                                <asp:BoundField DataField="品名" HeaderText="品名" SortExpression="品名" />
                                <asp:BoundField DataField="金額" HeaderText="金額" SortExpression="金額" />
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                            
                        </div>
                    
                        <br />
                        <div class="btn">
                        <asp:Button ID="btnUp" runat="server" Text="回上層繼續購買" onclick="btnUp_Click" />
                        <asp:Button ID="btnDown" runat="server" Text="下一步" onclick="btnDown_Click" />
                        </div>
                    

                </asp:View>
                <asp:View ID="View3" runat="server">
                    <div class="youbuy">
                        <asp:Label ID="lblna" runat="server" Text="Username" Font-Size="X-Large"></asp:Label>
                        
                        <br />
                        
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Font-Size="X-Large" ForeColor="#FF9933" 
                            Text="總金額 : "></asp:Label>
&nbsp;
                        <asp:Label ID="lbltotal" runat="server" Text="0" Font-Size="X-Large" ForeColor="#FF9933"></asp:Label>
                        
                        <hr />
                        <asp:Label ID="LabelP" runat="server" Text="付款資訊" Font-Size=X-Large ForeColor="#0000CC"></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="電話 : " Font-Size=Larger></asp:Label>
                        <asp:TextBox ID="txtphone" runat="server" Height="40px" Width="20%"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="地址 : " Font-Size=Larger></asp:Label>
                        <asp:TextBox ID="txtadd" runat="server" Height="40px" Width="60%" 
                            AutoPostBack="True"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="付款方式 : " Font-Size=Larger></asp:Label>
                        <asp:RadioButtonList ID="rblPay" runat="server" RepeatDirection="Horizontal" 
                        Height="10px" Width="400px" RepeatLayout="Flow" AutoPostBack="True">

                            <asp:ListItem>取貨付款</asp:ListItem>
                            <asp:ListItem>ATM轉帳</asp:ListItem>
                            <asp:ListItem>信用卡付款</asp:ListItem>

                        </asp:RadioButtonList>

                        <div class="btn">   
                            <asp:Button ID="btnupp" runat="server" Text="回上層" onclick="btnupp_Click" />
                            &nbsp;&nbsp;<asp:Button ID="btnFinish" runat="server" Text="完成" onclick="btnFinish_Click" 
                                Enabled="False" />
                            &nbsp;
                            <asp:Button ID="btnCancel" runat="server" Text="取消訂單" BackColor="#FF5050" 
                                onclick="btnCancel_Click" />
                        </div>
                    </div>
                </asp:View>
                
            </asp:MultiView>

            </div>

            <!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<ul class="icons">
						<li><a href="https://www.facebook.com/yfoodz" class="icon fa-facebook">
							<span class="label">Facebook</span>
						</a></li>
						<li><a href="https://www.instagram.com/eltonchang_18/" class="icon fa-instagram">
							<span class="label">eltonchang_18</span>
						</a></li>
						<li><a href="https://www.instagram.com/shirley_lin__/" class="icon fa-instagram">
							<span class="label">shirley_lin__</span>
						</a></li>
						<li><a href="https://www.instagram.com/yu_1117_/" class="icon fa-instagram">
							<span class="label">yu_1117_</span>
						</a></li>
					</ul>
					<ul class="copyright">
						<li>&copy;</li>
						<li>Images: <a href="index.html">ICE CREAM</a>.</li>
						<li>Design: <a href="index.html">ICE CREAM</a>.</li>
					</ul>
				</div>
			</footer>

            <!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

            


    </div>
    </form>
</body>
</html>
