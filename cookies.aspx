<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cookies.aspx.cs" Inherits="final_productcookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>ICECREAM</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
</head>
<body>
    
		<form id="form1" runat="server">
    
		<!-- Header -->
			<header id="header">
				<h1><a href="index.aspx">ICE CREAM<asp:Button ID="Button1" runat="server" 
                        Text="登出" onclick="Button1_Click1" />
                    </a>&nbsp;<asp:Button ID="btnmanager" runat="server" Text="後臺管理" 
                        Visible="False" />
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
                    <li><a href="contact.aspx">聯絡我</a></li>
                    <li><a href="message.aspx">留言板</a></li>
				</ul>
			</nav>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="container">

					<header class="major special">
						<h2 id="titleProducts">餅乾 | Cookies</h2>		
					</header>
                    <h3><asp:Label ID="labname" runat="server" Text="Label"></asp:Label></h3>
                    <article class="feature left">
						<span><img src="otherimages/cookiecam.png" width="150" height="150" alt="焦糖 | Caramel"  ></span>
						<div class="content">
							<h2>焦糖餅乾</h2>
							<p id="caramelcookies">Caramel Cookies</p>
						</div>

                        <span><img src="otherimages/cookiechocolate.png" width="150" height="150" alt="巧克力 | Chocolate"></span>
						<div class="content">
							<h2>巧克力餅乾</h2>
							<p id="chococookies">Chocolate Cookie</p>
						</div>

                        <span><img src="otherimages/cookiecoffee.png" width="150" height="159" alt="咖啡 | Coffee"></span>
						<div class="content">
							<h2>咖啡餅乾</h2>
							<p id="coffeecookies">Coffee Cookie</p>
						</div>
					</article>
				</div>
			</section>

		<!-- Footer -->
            <footer id="footer">
                <div class="inner">
                    <ul class="icons">
                        <li><a href="https://www.facebook.com/yfoodz" class="icon fa-facebook">
                            <span class="label">Facebook</span></a></li>              
                        <li><a href="https://www.instagram.com/eltonchang_18/" class="icon fa-instagram">
                            <span class="label">eltonchang_18</span></a></li>
                        <li><a href="https://www.instagram.com/shirley_lin__/" class="icon fa-instagram">
                            <span class="label">shirley_lin__</span></a></li>
                        <li><a href="https://www.instagram.com/yu_1117_/" class="icon fa-instagram">
                            <span class="label">yu_1117_</span></a></li>
                    </ul>
                    <ul class="copyright">
                        <li>&copy;</li>
                        <li>Images: <a href="index.html">ICECREAM</a>.</li>
                        <li>Design: <a href="index.html">ICECREAM</a>.</li>
                    </ul>
                </div>
            </footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

        </form>

</body>
</html>
