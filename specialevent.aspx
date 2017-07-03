<%@ Page Language="C#" AutoEventWireup="true" CodeFile="specialevent.aspx.cs" Inherits="specialevent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SepcialEvent</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" initial-scale=1"/>
    <link rel="stylesheet" href="assets/css/main.css" />
	<style rel="stylesheet">
		.puzzle{width:210px;height:210px;position:relative;border:10px solid #ccc;border-radius:5px;}
		.puzzle-in{position:relative;margin:1%;height:99%;width:99%}
		.puzz-item{position:absolute;width:70px;height:70px;text-align:center;}
		.puzz-item p{color:#000;font-size:24px;position:absolute;top:50%;margin-top:-8px;left:50%;margin-left:-8px;}
	</style>
	<script src="js/Jun.js"></script>
	<script src="js/Jun.dom.js"></script>
	<script src="js/puzz.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <style>
    .button
    {
     font-size: 1px;
     height:0px;
     width:1px;
     }
     .name
     {
         
     }
    </style>
<header id="header">
				<h1>
                    <a href="index.aspx">ICECREAM</a><div class="button"</div>
        <asp:Button ID="Button1" runat="server" Text="登出" onclick="Button1_Click" /></h1>
                    
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
                    
                    
                    <div>
    <div class="container-fluid" style="margin:0 auto;">
    <div class="content">
	  <div class="row">
		<div class="span5">
        <div id="name"><asp:Label ID="labname" runat="server" Text="Label"></asp:Label></div>
			<h2>拼回原圖即可享有小優惠^_^</h2>
			<div class="puzzle" id="puzzle" >
            
            
            </div>
            <br><br>


            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/mihee_210.jpg"></asp:Image>
            <br>
			<div style="margin-top:10px;"><input type="button" class="btn" value="排回原狀" onclick="game.shuffle();" /></div>
            <br>
		</div>
		<!--
        <div class="span5">
			<h2>5*5 300 拼数字</h2>
			<div class="puzzle" id="puzzle2" style="width:300px;height:300px;" ></div>
			<div style="margin-top:10px;"><input type="button" class="btn" value="重开" onclick="game2.shuffle();" /></div>
		</div>
	  </div>
	  <div class="row">
		<div class="span5">
			<h2>3*3 210 拼图片</h2>
			<div class="puzzle" id="puzzle3" ></div>
			<div style="margin-top:10px;"><input type="button" class="btn" value="重开" onclick="game3.shuffle();" /></div>
		</div>
		<div class="span5">
			<h2>5*5 300 拼图片</h2>
			<div class="puzzle" id="puzzle4" style="width:300px;height:300px;" ></div>
			<div style="margin-top:10px;"><input type="button" class="btn" value="重开" onclick="game4.shuffle();" /></div>
		</div>
        -->
	  </div>
    </div>
  </div>
  
	<script>
	    //images/mihee_210.jpg
	    var game = new Puzzie('puzzle', 210, 210, 'images/mihee_210.jpg', 3, true);
	    game.start();
	    //Jun.mix(game, PuzzTest);

	    //var game2 = new Puzzie('puzzle2', 300, 300, 'images/mihee_300.jpg', 5, true);
	    //game2.start();

	    //var game3 = new Puzzie('puzzle3', 210, 210, 'images/mihee_210.jpg', 3, false);
	    //game3.start();

	    //var game4 = new Puzzie('puzzle4', 300, 300, 'images/mihee_300.jpg', 5, false);
	    //game4.start();
	</script>
    </div>
    </div>
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

    </form>

    </body>
</html>
