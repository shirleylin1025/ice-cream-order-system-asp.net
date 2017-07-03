<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="testtt" %>

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
				<h1><a href="index.aspx">IceCream <asp:Button ID="btnlogout" runat="server" 
                        Text="登出" onclick="btnlogout_Click"></asp:Button></a></h1>
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
                     
                     <h3><asp:Label ID="Label5" runat="server" Text="訂單管理"></asp:Label></h3
                     >

                     </header>
                     
    <div>
    
        
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:buylistConnectionString2 %>" 
            DeleteCommand="DELETE FROM [ice] WHERE [編號] = @original_編號 AND [username] = @original_username AND (([訂購日期] = @original_訂購日期) OR ([訂購日期] IS NULL AND @original_訂購日期 IS NULL)) AND (([金額] = @original_金額) OR ([金額] IS NULL AND @original_金額 IS NULL)) AND (([品名] = @original_品名) OR ([品名] IS NULL AND @original_品名 IS NULL)) AND (([數量] = @original_數量) OR ([數量] IS NULL AND @original_數量 IS NULL)) AND (([電話] = @original_電話) OR ([電話] IS NULL AND @original_電話 IS NULL)) AND (([地址] = @original_地址) OR ([地址] IS NULL AND @original_地址 IS NULL)) AND (([付款方式] = @original_付款方式) OR ([付款方式] IS NULL AND @original_付款方式 IS NULL)) AND (([訂單狀況] = @original_訂單狀況) OR ([訂單狀況] IS NULL AND @original_訂單狀況 IS NULL))" 
            InsertCommand="INSERT INTO [ice] ([username], [訂購日期], [金額], [品名], [數量], [電話], [地址], [付款方式], [訂單狀況]) VALUES (@username, @訂購日期, @金額, @品名, @數量, @電話, @地址, @付款方式, @訂單狀況)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [ice]" 
            UpdateCommand="UPDATE [ice] SET [username] = @username, [訂購日期] = @訂購日期, [金額] = @金額, [品名] = @品名, [數量] = @數量, [電話] = @電話, [地址] = @地址, [付款方式] = @付款方式, [訂單狀況] = @訂單狀況 WHERE [編號] = @original_編號 AND [username] = @original_username AND (([訂購日期] = @original_訂購日期) OR ([訂購日期] IS NULL AND @original_訂購日期 IS NULL)) AND (([金額] = @original_金額) OR ([金額] IS NULL AND @original_金額 IS NULL)) AND (([品名] = @original_品名) OR ([品名] IS NULL AND @original_品名 IS NULL)) AND (([數量] = @original_數量) OR ([數量] IS NULL AND @original_數量 IS NULL)) AND (([電話] = @original_電話) OR ([電話] IS NULL AND @original_電話 IS NULL)) AND (([地址] = @original_地址) OR ([地址] IS NULL AND @original_地址 IS NULL)) AND (([付款方式] = @original_付款方式) OR ([付款方式] IS NULL AND @original_付款方式 IS NULL)) AND (([訂單狀況] = @original_訂單狀況) OR ([訂單狀況] IS NULL AND @original_訂單狀況 IS NULL))">
            <DeleteParameters>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="編號" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" 
                    ReadOnly="True" SortExpression="編號" />
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
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <br />
        <h3><asp:Label ID="Label6" runat="server" Text="留言管理"></asp:Label></h3>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:icecreamConnectionString %>" 
            DeleteCommand="DELETE FROM [message] WHERE [Num] = @original_Num AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL))" 
            InsertCommand="INSERT INTO [message] ([Name], [Time], [Message]) VALUES (@Name, @Time, @Message)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [message]" 
            UpdateCommand="UPDATE [message] SET [Name] = @Name, [Time] = @Time, [Message] = @Message WHERE [Num] = @original_Num AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Num" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Time" Type="String" />
                <asp:Parameter Name="original_Message" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
                <asp:Parameter Name="original_Num" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Time" Type="String" />
                <asp:Parameter Name="original_Message" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Num" 
            DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    </td>
                    <td>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NumLabel" runat="server" Text='<%# Eval("Num") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NumLabel1" runat="server" Text='<%# Eval("Num") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>
                            未傳回資料。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    </td>
                    <td>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NumLabel" runat="server" Text='<%# Eval("Num") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">
                                    </th>
                                    <th runat="server">
                                        Name</th>
                                    <th runat="server">
                                        Time</th>
                                    <th runat="server">
                                        Message</th>
                                    <th runat="server">
                                        Num</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    </td>
                    <td>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NumLabel" runat="server" Text='<%# Eval("Num") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
    
        
    
    </div>
   
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
