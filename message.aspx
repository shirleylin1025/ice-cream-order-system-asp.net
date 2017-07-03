<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="message" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
        <br/>
</head>
<body>
    <form id="form1" runat="server">
    <!-- Header -->
			<header id="header">
				<h1><a href="index.aspx">IceCream</a>
                <asp:Button ID="Button2" runat="server" Text="登出" onclick="Button2_Click"></asp:Button>&nbsp;<asp:Button 
                        ID="btnmanager" runat="server" Text="後臺管理" onclick="btnmanager_Click" 
                        Visible="False"></asp:Button>
                </h1>
				<a href="#nav">Menu</a>
			</header>

    <!--Nav-->
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
<div>
   <!-- Main -->
			<style>
			#colorone
			{
			    border-radius:10px;
                background:#cccccc;
                width:90%;
                position:relative;
                left:10%;
                 
			}
			#colorone p
			{
			    position:relative; 
			    top:10px; 
			    left:40px; 
			}
            #colortwo
			{
			    border-radius:10px;
                background:#626262;
                position:relative;
                
			}
			#colortwo p
			{
			    position:relative; 
			    top:10px; 
			    left:20px;
			    color:#FFF;
			}
			</style>
		<div class="container">

        <asp:Label ID="Label1" runat="server" Text="Name:">
        </asp:Label>
        <asp:TextBox ID="tbxName" runat="server" Height="40px" Width="230px" 
                ReadOnly="True"></asp:TextBox>
        <br />
    
        <asp:Label ID="Label2" runat="server" Text="Time:"></asp:Label>
        <asp:TextBox ID="tbxTime" runat="server" Height="35px" Width="230px"></asp:TextBox>
        <br />
    
        <asp:Label ID="Label3" runat="server" Text="Message:"></asp:Label>
        <asp:TextBox ID="tbxMessage" runat="server" Height="170px" Width="300px" 
                TextMode="MultiLine" ViewStateMode="Enabled"></asp:TextBox>
        <br />
        <a href="#Link">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" /></a>
        <br />
        <br />
            <asp:TextBox ID="tbxprompt" runat="server" Height="36px" Visible="False"></asp:TextBox>
        <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                
                <AlternatingItemTemplate><div id="colorone">
                    <span style="">
                    <p>Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Time:
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                    <br />
                    Message:
                    <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' /></p>
                    <br />
                    <br />
                    </span>
                    </div>
                </AlternatingItemTemplate>
                
                <EditItemTemplate>
                    <span>Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Time:
                    <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                    <br />
                    Message:
                    <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    <br />
                    <br />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>未傳回資料。</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Time:
                    <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                    <br />
                    Message:
                    <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    <br />
                    <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span><div id="colortwo"><p>Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Time:
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                    <br />
                    Message:
                    <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' /></p>
                    <br />
                    <br />
                    </div>
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div ID="itemPlaceholderContainer" runat="server" 
                        style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="text-align: center;background-color: #CCCCCC;border-collapse: collapse;border-color: #999999;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="background-color: #FF0000;font-weight: bold;color: #FFFFFF;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Time:
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                    <br />
                    Message:
                    <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
                    <br />
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:icecreamConnectionString %>" 
            SelectCommand="SELECT * FROM [message]"></asp:SqlDataSource>
        <style>
        .datable {background-color: #FFFFFF;border-top: 1px solid #FFFFFF; border-left: 1px solid #FFFFFF;}
        .datable tr {height:20px;}
    
        .datable .lup th {border-top: 1px solid #FFFFFF; border-left: 1px solid #FFFFFF;font-weight: normal;}
        .datable .lupbai {background-color: #FFFFFF;}
        .datable td {border-top: 1px solid #FFFFFF; border-left: 1px solid #FFFFFF;}

}

</style>
</div>
        <br />
    <!-- Footer -->
            <footer id="footer">
            <a name="Link"></a>
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

 
    </form>

</body>
</html>
