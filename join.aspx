<%@ Page Language="C#" AutoEventWireup="true" CodeFile="join.aspx.cs" Inherits="join" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>加入會員</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
    <form id="form1" runat="server">

    <style>
    .bir
    {
         width:100px;  float:left;
    }
    .bir2
    {
            width:100px;  float:left;
    }
    </style>


    <header id="header">
				<h1><a href="index.aspx">IceCream</a></h1>
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
                    <div>
    <asp:Label ID="labAccout" runat="server" Text="帳號:"></asp:Label>
    <asp:TextBox ID="tbxaccount" runat="server" Width="180px"></asp:TextBox>
    <asp:Label ID="lblaccount" runat="server" ForeColor="Red" Text="帳號不得空白!" 
        Visible="False"></asp:Label>
    <div>
    
        <asp:Label ID="labPassword" runat="server" Text="密碼:"></asp:Label>
        <asp:TextBox ID="tbxpassword" runat="server" Width="180px" Wrap="False" 
            TextMode="Password"></asp:TextBox>
        <asp:Label ID="lblpassword" runat="server" ForeColor="Red" Text="密碼不得空白!" 
            Visible="False"></asp:Label>
        <br />
        <asp:Label ID="labPassword2" runat="server" Text="確認密碼:"></asp:Label>
        <asp:TextBox ID="tbxpasswordtwo" runat="server" Width="180px" 
            TextMode="Password"></asp:TextBox>
        <asp:Label ID="lblno" runat="server" ForeColor="Red" Text="確認密碼和密碼不同!" 
            Visible="False"></asp:Label>
        <asp:Label ID="lblpasswordtwo" runat="server" ForeColor="Red" Text="確認密碼不得空白!" 
            Visible="False"></asp:Label>
        <br />
        <asp:Label ID="labGender" runat="server" Text="性別:"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            RepeatDirection="Horizontal">
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="lblgender" runat="server" ForeColor="Red" Text="性別不得空白!" 
            Visible="False"></asp:Label>
        <br />
        <asp:Label ID="labBirthday" runat="server" Text="生日:"></asp:Label>
        <br />
        <div class="bir">
        <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="100px">
        </asp:DropDownList></div>
        <div class="bir2">
        <asp:DropDownList ID="DropDownList2" runat="server" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="100px">
        </asp:DropDownList></div>
        <asp:DropDownList ID="DropDownList3" runat="server" Width="100px">
        </asp:DropDownList>
        
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="預設地址:"></asp:Label>
        <asp:TextBox ID="tbxaddress" runat="server" Width="300px"></asp:TextBox>
        <asp:Label ID="lbladdress" runat="server" ForeColor="Red" Text="地址不得空白!" 
            Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="預設電話:"></asp:Label>
        <asp:TextBox ID="tbxphone" runat="server" Width="180px"></asp:TextBox>
        <asp:Label ID="lblphone" runat="server" ForeColor="Red" Text="電話不得空白!" 
            Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="加入會員" />
    
        <asp:Label ID="gender" runat="server" Visible="False"></asp:Label>
    
        <asp:Label ID="birthday" runat="server" Text="Label" Visible="False"></asp:Label>
    
        <br />
        <br />
    </div>
    </div></div>
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
         
            </footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>

			<script src="assets/js/main.js"></script>
    </form>
</body>
</html>
