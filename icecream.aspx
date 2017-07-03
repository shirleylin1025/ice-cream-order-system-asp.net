<%@ Page Language="C#" AutoEventWireup="true" CodeFile="icecream.aspx.cs" Inherits="final_producticecream" %>

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

					<h1><a href="index.aspx">ICE CREAM <asp:Button ID="Button1" runat="server" 
                            Text="登出" onclick="Button1_Click2"></asp:Button>
                    &nbsp;<asp:Button ID="btnmanager" runat="server" Text="後臺管理" 
                            onclick="btnmanager_Click" Visible="False" />
                    </a></h1>

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
						<h2 id="titleProducts">冰淇淋 | Ice cream</h2>
                        	
					</header>
                    <h3><asp:Label ID="labname" runat="server" Text="Label"></asp:Label></h3>
                    <ul><li><h2>單口味: 單純濃郁感</h2></li></ul>
                    <article class="feature leftx">
						<span><img src="otherimages/icemilk.png" width="150" height="150" alt="白牛奶冰淇淋"  ></span>
						<div class="content">
							<h2>牛奶冰淇淋</h2>
							<p id="milkice">Milk Ice cream</p>
                            <p id="milkintro">選用小農國產鮮乳製作而成的牛奶冰淇淋，味道香濃，口感滑順，一吃即愛上!</p>

						</div>

                        <span><img src="otherimages/icechocolate.png" width="150" height="150" alt="巧克力冰淇淋"></span>
						<div class="content">
							<h2>巧克力冰淇淋</h2>
							<p id="chocolateice">Chocolate Ice cream</p>
                            <p id="chocolateintro">來自比利時的巧克力，選用70%，甜度剛好不會膩，喜歡吃巧克力的你不可錯過的選擇!</p>
						</div>

                        <span><img src="otherimages/icemocha.png" width="150" height="150" alt="綠抹茶冰淇淋"></span>
						<div class="content">
							<h2>抹茶冰淇淋</h2>
							<p id="greenice">Green Tea Ice cream</p>
                            <p id="greenintro">來自日本的抹茶，近年來大家都愛抹茶食品，除了味道濃郁，更能帶動體內的新陳代謝，Ice Cream熱門商品唷!</p>
						</div>
					</article>


                    <article class="feature leftx">

						<span><img src="otherimages/icestrawberry.png" width="150" height="150" alt="粉草莓冰淇淋"></span>
						<div class="content">
							<h2>草莓冰淇淋</h2>
							<p id="strawice">Strawberry Ice cream</p>
                            <p id="strawintro">冬天的草莓最好吃，使用台灣的大湖草莓，酸酸甜甜好滋味，冬季必吃的水果，快點來嘗試!</p>
						</div>
                        <span><img src="otherimages/icetora.png" width="150" height="150" alt="紫芋頭冰淇淋"></span>
						<div class="content">
							<h2>芋頭冰淇淋</h2>
							<p id="toraice">Tora Ice cream</p>
                            <p id="toraintro">選用台中大甲的芋頭，濃香純天然芋頭冰淇淋，口感鬆綿，甜而不膩，美味香甜！</p>
						</div>
                        <span><img src="otherimages/icebanana.png" width="150" height="150" alt="黃香蕉冰淇淋"></span>
						<div class="content">
							<h2>香蕉冰淇淋</h2>
							<p id="bananaice">Banana Ice cream</p>
                            <p id="bananaintro">香蕉是台灣水果之光，常外銷至國外，選用台灣香蕉結合冰淇淋，讓大家都能品嘗台灣濃濃香蕉滋味！</p>
						</div>
					</article>

                    <ul><li><h2>雙口味: 蹦出新滋味</h2></li></ul>
                    <article class="feature left">
						<span><img src="otherimages/icechocomilk.png" width="150" height="150" alt="巧克力牛奶冰淇淋"  ></span>
						<div class="content">
							<h2>巧克力牛奶冰淇淋</h2>
							<p id="dxchocomilkice">Chocolate and Milk Ice cream</p>
						</div>
                      
                        <span><img src="otherimages/icechocotora.png" width="150" height="150" alt="巧克力芋頭冰淇淋"  ></span>
						<div class="content">
							<h2>巧克力芋頭冰淇淋</h2>
							<p id="dxchocotoraice">Chocolate and Tora Ice cream</p>
						</div>

                        <span><img src="otherimages/icechocostraw.png" width="150" height="150" alt="巧克力草莓冰淇淋"></span>
						<div class="content">
							<h2>巧克力草莓冰淇淋</h2>
							<p id="dxchocostrawice">Chocolate and Strawberry Ice cream</p>
						</div>
					</article>

                    <article class="feature left">
						<span><img src="otherimages/icechocobanana.png" width="150" height="150" alt="巧克力香蕉冰淇淋"></span>
                        <div class="content">
							<h2>巧克力香蕉冰淇淋</h2>
							<p id="dxchocobananaice">Chocolate and Banana Ice cream</p>
						</div>

                        <span><img src="otherimages/icechocomocha.png" width="150" height="150" alt="巧克力抹茶冰淇淋"></span>
						<div class="content">
							<h2>巧克力抹茶冰淇淋</h2>
							<p id="dxchocomochaice">Chocolate and Green Tea Ice cream</p>
						</div>

                        <span><img src="otherimages/icemilkbanana.png" width="150" height="150" alt="牛奶香蕉冰淇淋"></span>
						<div class="content">
							<h2>牛奶香蕉冰淇淋</h2>
							<p id="dxmilkbananaice">Milk and Banana Ice cream</p>
						</div>
					</article>

                    <article class="feature left">
                        <span><img src="otherimages/icemilkmocha.png" width="150" height="150" alt="牛奶抹茶冰淇淋"></span>
						<div class="content">
							<h2>牛奶抹茶冰淇淋</h2>
							<p id="dxmilkmochaice">Milk and Green Tea Ice cream</p>
						</div>

                        <span><img src="otherimages/icemilkstraw.png" width="150" height="150" alt="牛奶草莓冰淇淋"  ></span>
						<div class="content">
							<h2>牛奶草莓冰淇淋</h2>
							<p id="dxmilkstrawice">Milk and Strawberry Ice cream</p>
						</div>

                        <span><img src="otherimages/icemilktora.png" width="150" height="150" alt="牛奶芋頭冰淇淋"></span>
						<div class="content">
							<h2>牛奶芋頭冰淇淋</h2>
							<p id="dxmilktoraice">Milk and Tora Ice cream</p>
						</div>
					</article>

                    <article class="feature left">
                        <span><img src="otherimages/icemochastraw.png" width="150" height="150" alt="抹茶草莓冰淇淋"></span>
						<div class="content">
							<h2>抹茶草莓冰淇淋</h2>
							<p id="dxmochastrawice">Green Tea and Strawberry Ice cream</p>
						</div>

                        <span><img src="otherimages/icemochatora.png" width="150" height="150" alt="抹茶芋頭冰淇淋"  ></span>
						<div class="content">
							<h2>抹茶芋頭冰淇淋</h2>
							<p id="dxmochatoraice">Green Tea and Tora Ice cream</p>
						</div>

                        <span><img src="otherimages/icemochabanana.png" width="150" height="150" alt="抹茶香蕉冰淇淋"></span>
						<div class="content">
							<h2>抹茶香蕉冰淇淋</h2>
							<p id="dxmochabananaice">Green Tea and Banana Ice cream</p>
						</div>
					</article>

                    <article class="feature left">
                        <span><img src="otherimages/icestrawtora.png" width="150" height="150" alt="草莓芋頭冰淇淋"></span>
						<div class="content">
							<h2>草莓芋頭冰淇淋</h2>
							<p id="dxstawtoraice">Strawberry and Tora Ice cream</p>
						</div>

                        <span><img src="otherimages/icestrawbanana.png" width="150" height="150" alt="草莓香蕉冰淇淋"  ></span>
						<div class="content">
							<h2>草莓香蕉冰淇淋</h2>
							<p id="dxstrawbananaice">Strawberry and Banana Ice cream</p>
						</div>

                        <span><img src="otherimages/icetorabanana.png" width="150" height="150" alt="芋頭香蕉冰淇淋"></span>
						<div class="content">
							<h2>芋頭香蕉冰淇淋</h2>
							<p id="dxtorabananaice">Tora and Banana Ice cream</p>
						</div>
					</article>

                    <!--//3-->
                    <ul><li><h2>三口味: 挑戰新味覺</h2></li></ul>
                    <article class="feature left">
						<span><img src="otherimages/icechocomilkmocha.png" width="150" height="150" alt="巧克力牛奶抹茶冰淇淋"  ></span>
						<div class="content">
							<h2>巧克力+牛奶+抹茶冰淇淋</h2>
							<p id="txchocomilkmochaice">Chocolate+Milk+Green Tea Ice cream</p>

						</div>
                                               
						<span><img src="otherimages/icechocomilkstraw.png" width="150" height="150" alt="巧克力牛奶草莓冰淇淋"  ></span>
						<div class="content">
							<h2>巧克力+牛奶+草莓冰淇淋</h2>
							<p id="txchocomilkstrawice">Chocolate+Milk+Strawberry Ice cream</p>
						</div>
                        <span><img src="otherimages/icechocomilktora.png" width="150" height="150" alt="巧克力牛奶芋頭冰淇淋"></span>
						<div class="content">
							<h2>巧克力+牛奶+芋頭冰淇淋</h2>
							<p id="txchocomilktoraice">Chocolate+Milk+Tora Ice cream</p>
						</div>
					</article>

                    <article class="feature left">
						<span><img src="otherimages/icechocomilkbanana.png" width="150" height="150" alt="巧克力牛奶香蕉冰淇淋"></span>
                        <div class="content">
							<h2>巧克力+牛奶+香蕉冰淇淋</h2>
							<p id="txchocomilkbananaice">Chocolate+Milk+Banana Ice cream</p>
						</div>

                        <span><img src="otherimages/icechocomochastraw.png" width="150" height="150" alt="巧克力抹茶草莓冰淇淋"></span>
						<div class="content">
							<h2>巧克力+抹茶+草莓冰淇淋</h2>
							<p id="txchocomochastrawice">Chocolate+Green Tea+Strawberry Ice cream</p>
						</div>
                        <span><img src="otherimages/icechocomochatora.png" width="150" height="150" alt="巧克力抹茶芋頭冰淇淋"></span>
						<div class="content">
							<h2>巧克力+抹茶+芋頭冰淇淋</h2>
							<p id="txchocomochatoraice">Chocolate+Green Tea+Tora Ice cream</p>
						</div>
					</article>

                    <article class="feature left">
                        <span><img src="otherimages/icechocomochabanana.png" width="150" height="150" alt="巧克力抹茶香蕉冰淇淋"></span>
						<div class="content">
							<h2>巧克力+抹茶+香蕉冰淇淋</h2>
							<p id="chocomochabananaice">Chocolate+Green Tea+Banana Ice cream</p>
						</div>

                        <span><img src="otherimages/icechocostrawtora.png" width="150" height="150" alt="巧克力草莓芋頭冰淇淋"  ></span>
						<div class="content">
							<h2>巧克力+草莓+芋頭冰淇淋</h2>
							<p id="txchocostrawtoraice">Chocolate+Strawberry+Tora Ice cream</p>
						</div>

                        <span><img src="otherimages/icechocostrawbanana.png" width="150" height="150" alt="巧克力草莓香蕉冰淇淋"></span>
						<div class="content">
							<h2>巧克力+草莓+香蕉冰淇淋</h2>
							<p id="txchocostrawbananaice">Chocolate+Strawberry+Banana Ice cream</p>
						</div>
					</article>

                    <article class="feature left">
                        <span><img src="otherimages/icechocotorabanana.png" width="150" height="150" alt="巧克力芋頭香蕉冰淇淋"></span>
						<div class="content">
							<h2>巧克力+芋頭+香蕉冰淇淋</h2>
							<p id="txchocotorabananaice">Chocolate+Tora+Banana Ice cream</p>
						</div>

                        <span><img src="otherimages/icemilkmochastraw.png" width="150" height="150" alt="牛奶抹茶草莓冰淇淋"  ></span>
						<div class="content">
							<h2>牛奶+抹茶+草莓冰淇淋</h2>
							<p id="milkmochastrawice">Milk+Green Tea+Strawberry Ice cream</p>
						</div>

                        <span><img src="otherimages/icemilkmochatora.png" width="150" height="150" alt="牛奶抹茶芋頭冰淇淋"></span>
						<div class="content">
							<h2>牛奶+抹茶+芋頭冰淇淋</h2>
							<p id="txmilkmochatoraice">Milk+Greeen Tea+Tora Ice cream</p>
						</div>
					</article>

                    <article class="feature left">
                        <span><img src="otherimages/icemilkmochabanana.png" width="150" height="150" alt="牛奶抹茶香蕉冰淇淋"></span>
						<div class="content">
							<h2>牛奶+抹茶+香蕉冰淇淋</h2>
							<p id="txmilkmochabanana">Milk+Green Tea+Banana Ice cream</p>
						</div>

                        <span><img src="otherimages/icemilkstrawtora.png" width="150" height="150" alt="牛奶+草莓+芋頭冰淇淋"  ></span>
						<div class="content">
							<h2>牛奶+草莓+芋頭冰淇淋</h2>
							<p id="txmilkstrawtoraice">Milk+Strawberry+Tora Ice cream</p>
						</div>

                        <span><img src="otherimages/icemilkstrawbanana.png" width="150" height="150" alt="牛奶草莓香蕉冰淇淋"></span>
						<div class="content">
							<h2>牛奶+草莓+香蕉冰淇淋</h2>
							<p id="txmilkstrawbananaice">Milk+Strawberry+Banana Ice cream</p>
						</div>
                     </article>

                     <article class="feature left">
                        <span><img src="otherimages/icemilktorabanana.png" width="150" height="150" alt="牛奶芋頭香蕉冰淇淋"></span>
						<div class="content">
							<h2>牛奶+芋頭+香蕉冰淇淋</h2>
							<p id="txmilktorabananaice">Milk+Tora+Banana Ice cream</p>
						</div>

                        <span><img src="otherimages/icemochastrawtora.png" width="150" height="150" alt="抹茶草莓芋頭冰淇淋"  ></span>
						<div class="content">
							<h2>抹茶+草莓+芋頭冰淇淋</h2>
							<p id="txmochastrawtoraice">Green Tea+Strawberry+Tora Ice cream</p>
						</div>

                        <span><img src="otherimages/icemochastrawbanana.png" width="150" height="150" alt="抹茶草莓香蕉冰淇淋"></span>
						<div class="content">
							<h2>抹茶+草莓+香蕉冰淇淋</h2>
							<p id="txmochastrawbananaice">Green Tea+Strawberry+Banana Ice cream</p>
						</div>
					</article>
                     <article class="feature left">
                        <span><img src="otherimages/icemochatorabanana.png" width="150" height="150" alt="抹茶芋頭香蕉冰淇淋"></span>
						<div class="content">
							<h2>抹茶+芋頭+香蕉冰淇淋</h2>
							<p id="txmochatorabananaice">Green Tea+Tora+Banana Ice cream</p>
						</div>

                        <span><img src="otherimages/icestrawtorabanana.png" width="150" height="150" alt="草莓芋頭香蕉冰淇淋"  ></span>
						<div class="content">
							<h2> 草莓+芋頭+香蕉冰淇淋</h2>
							<p id="txstrawtorabananaice">Strawberry+Tora+Banana Ice cream</p>
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
