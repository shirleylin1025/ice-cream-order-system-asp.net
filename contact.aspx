<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />

</head>
<body>
    <form id="form1" runat="server">
    <header id="header">
				<h1><a href="index.aspx">IceCream</a><asp:Button ID="Button2" runat="server" 
                        Text="登出" onclick="Button2_Click" Visible="False"></asp:Button>
                    &nbsp;<asp:Button runat="server" onclick="Button3_Click" Text="後臺管理" 
                        ID="btnmanager" Visible="False" />
                </h1>
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
                        <h2>Contact us.聯絡我</h2>
                        <p>You can contact us by those ways</p>
                     </header>
                     </div>
                      <div class="container 75%">
                       <div class="row uniform 50%">
                        <div class="6u 12u$(xsmall)">

                        名字<asp:TextBox ID="tbxName" runat="server" Width="430"></asp:TextBox>
                         &nbsp;</div>
                        <div class="6u$ 12u$(xsmall)">

                        <asp:Label ID="Label1" runat="server" Text="E-Mail"></asp:Label>
                        <asp:TextBox ID="tbxEmail" runat="server" TextMode="Email" Width="430"></asp:TextBox>
                         &nbsp;</div>
                        <div class="12u$">
                        訊息
                <asp:TextBox ID="tbxMessage" runat="server" Height="160px" TextMode="MultiLine"></asp:TextBox>
                         &nbsp;</div>
                       </div>
                      </div>
                      <ul class="actions">
                       <li>
                           <asp:Button ID="Button1" runat="server" Text="送出" onclick="Button1_Click1" />
                          </li>
                       <li><input type="reset" class="alt" value="清除" /></li>
                      </ul>
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
