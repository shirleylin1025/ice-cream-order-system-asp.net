<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>訂單紀錄</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />

</head>
<body>
    <form id="form1" runat="server">
    
    <header id="header">
				<h1><a href="index.aspx">IceCream<asp:Button ID="btnlogout" runat="server" 
                        Text="登出" onclick="btnlogout_Click" Visible="False"></asp:Button></a>&nbsp;<asp:Button 
                        ID="btnmanager" runat="server" Text="後臺管理" onclick="btnmanager_Click" 
                        Visible="False" /></h1>
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
                            <li><a href="order.aspx">訂單查詢</a></li>
                            <li><a href="contact.aspx">聯絡我</a></li>
                            <li><a href="message.aspx">留言板</a></li>
            </ul>
           </nav>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="container">
                    
                    <header class="major special">
						
					</header>
                    
                    <!-- Four -->
                   <section id="four" class="wrapper style2 special">
                    <div class="inner">
                     <header class="major narrow">
                     
                     <h2><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h2>

                     </header>
                     
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:buylistConnectionString %>" 
            
            SelectCommand="SELECT [username], [訂購日期], [金額], [品名], [數量], [電話], [地址], [付款方式], [訂單狀況] FROM [ice] WHERE (([username] = @username) AND ([username] = @username2))">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label4" Name="username" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="Label4" Name="username2" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
            <asp:BoundField DataField="訂購日期" HeaderText="訂購日期" SortExpression="訂購日期" />
            <asp:BoundField DataField="金額" HeaderText="金額" SortExpression="金額" />
            <asp:BoundField DataField="品名" HeaderText="品名" SortExpression="品名" />
            <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
            <asp:BoundField DataField="電話" HeaderText="電話" SortExpression="電話" />
            <asp:BoundField DataField="地址" HeaderText="地址" SortExpression="地址" />
            <asp:BoundField DataField="付款方式" HeaderText="付款方式" SortExpression="付款方式" />
            <asp:BoundField DataField="訂單狀況" HeaderText="訂單狀況" SortExpression="訂單狀況" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    </div>
    <p>
    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
    </p>
        </form>
 </div>
</section>


		<!-- Footer -->
            <footer id="footer">
                <div class="inner">
                    <ul class="icons">
                        <li><a href="https://www.facebook.com/yfoodz" class="icon fa-facebook">
                            <span class="label">Facebook</span></a></li>              
                        <li><a href="https://www.instagram.com/raychang_18/" class="icon fa-instagram">
                            <span class="label">rayonchang_18</span></a></li>
                        <li><a href="https://www.instagram.com/shirley_lin__/" class="icon fa-instagram">
                            <span class="label">shirley_lin__</span></a></li>
                        <li><a href="https://www.instagram.com/yu_1117_/" class="icon fa-instagram">
                            <span class="label">yu_1117_</span></a></li>
                    </ul>
                    <ul class="copyright">
                        <li>&copy;</li>
                        <li>Images: <a href="index.aspx">IceCream</a>.</li>
                        <li>Design: <a href="index.aspx">IceCream</a>.</li>
                    </ul>
                </div>
            </footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>

			<script src="assets/js/main.js"></script>
</body>
</html>
