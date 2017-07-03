<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Icecream</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
        <style>
            #log
            {
              width:30%; height:350px; padding-left:3%; float:left;
            }
            .cut
            {
               width:100%; height:350px;
            }
            #photo 
            {
               width:70%; float:right; height:350px; padding-top:5%; padding-right:20%; padding-left:5%;
            }
            
            .mySlides {display:none}
            .left, .right, .cir {cursor:pointer}
            .cir {height:13px;width:13px;padding:0}
            .cir, .cir:hover{color:#000!important;background-color:#fff!important}
            .left{float:left!important} .right{float:right!important}
            
            .cut
            {
               width:100%; height:400px;
            }
            #photo 
            {
               width:70%; float:right; height:350px;
               padding:3% 20% 5% 5%;
            } 
                      
            
        </style>

	</head>
	<body class="landing">
    <form id="form1" runat="server">

		<!-- Header -->
			<header id="header" class="alt">
				
				<a href="#nav"><img src="indeximages/menu.png" /></a>
			</header>

		<!-- Nav -->
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:icecreamConnectionString %>" 
            SelectCommand="SELECT * FROM [member]"></asp:SqlDataSource>
           <nav id="nav">
                               
    
    <ul class="links">
     <li><a href="index.aspx">首頁</a></li>
     <li><a href="specialevent.aspx">特別活動</a></li>
     <li>產品介紹<a href="message.aspx">
         </a>&nbsp;<ul>
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

		<!-- Banner -->
			<section id="banner">
				
				<p>hello ICE CREAM</p>
			</section>		
            
            <div class="cut">
            <div id="log">
                <br />
                <h2>
                    <asp:Label ID="lablogintitle" runat="server" Text="LOGIN" Visible="True"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </h2>
                <asp:Label ID="labAccount" runat="server" Text="Account:"></asp:Label>
                <asp:TextBox ID="tbxAccount" runat="server" Height="10%" Width="55%"></asp:TextBox>
                <asp:Label ID="labPassword" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="tbxPassword" runat="server" Height="10%" Width="55%" 
                    TextMode="Password"></asp:TextBox>

                <br />
                <asp:Button ID="btnLog" runat="server" Text="登入" Height="12%" Width="30%" 
                    onclick="btnLog_Click" />
                <asp:Button ID="btnlogout" runat="server" Height="48px" 
                    onclick="btnlogout_Click" Text="登出" Visible="False" />
                
                <br />
                <br />
                <asp:Button ID="btnNew" runat="server"
                    Text="加入會員" Height="12%" Width="30%" onclick="btnNew_Click" />
                    <asp:Button ID="btnmanager" runat="server" 
             Text="後臺管理" Visible="False" onclick="btnmanager_Click" />

            </div> 
            <div id="photo">   
              <img class="mySlides" src="indeximages/001.png" style="max-width:100%">
              <img class="mySlides" src="indeximages/002.png" style="max-width:100%">
              <img class="mySlides" src="indeximages/003.png" style="max-width:100%">
              <div class="mid"  style="max-width:100%">
                <div class="left" onclick="plusDivs(-1)" style="font-size: xx-large; padding-top:5px;">&#10094;</div>
                <div class="right" onclick="plusDivs(1)" style="font-size: xx-large; padding-top:5px;">&#10095;</div>
            </div>
            </div>
               
            </div>


		
            
            <section id="two" class="wrapper special">
				<div class="inner">
					<header class="major narrow">
						<h3>熱銷口味</h3>
						
					</header>
					<div class="image-grid">
						<a href="icecream.aspx" class="image"><img src="indeximages/1.png"></a>
						<a href="icecream.aspx" class="image"><img src="indeximages/2.png"></a>
						<a href="icecream.aspx" class="image"><img src="indeximages/3.png"></a>
						<a href="icecream.aspx" class="image"><img src="indeximages/4.png"></a>
						<a href="icecream.aspx" class="image"><img src="indeximages/5.png"></a>
						<a href="icecream.aspx" class="image"><img src="indeximages/6.png"></a>
						<a href="icecream.aspx" class="image"><img src="indeximages/7.png"></a>
						<a href="icecream.aspx" class="image"><img src="indeximages/8.png"></a>
					</div>
				
			</section>
            
		
		
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
						<li>Images: <a href="index.aspx">ICE CREAM</a>.</li>
						<li>Design: <a href="index.aspx">ICE CREAM</a>.</li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
            
            <script>
                var slideIndex = 1;
                showDivs(slideIndex);

                function plusDivs(n) {
                    showDivs(slideIndex += n);
                }

                function currentDiv(n) {
                    showDivs(slideIndex = n);
                }

                function showDivs(n) {
                    var i;
                    var x = document.getElementsByClassName("mySlides");

                    if (n > x.length) { slideIndex = 1 }
                    if (n < 1) { slideIndex = x.length }
                    for (i = 0; i < x.length; i++) {
                        x[i].style.display = "none";
                    }

                    x[slideIndex - 1].style.display = "block";

                }
            </script>

    </form>
	</body>
</html>
