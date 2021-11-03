<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListEmployees.aspx.cs" Inherits="WebProject.ListEmployees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Navbar.css"/>

</head>
<body>
    <form id="form1" runat="server">
       <div style="background:#222127; width:2000px; position:fixed; top: -12px; left: -1px; height: 69px; z-index:104;"></div>
   <nav>
    <div class="wrapper">
      <div class="logo"><a href="MainPage.aspx">SCHUMANN'S</a></div>
      <input type="radio" name="slider" id="menu-btn"/>
      <input type="radio" name="slider" id="close-btn"/>
      <ul class="nav-links">
        <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
        <li><a href="MainPage.aspx">Home</a></li>
        <li>
          <a href="#" class="desktop-item">Work Place</a>
          <input type="checkbox" id="showDrop">
          <label for="showDrop" class="mobile-item">Dropdown Menu</label>
          <ul class="drop-menu">
            <li><a href="NewCase.aspx">New Case</a></li>
            <li><a href="ListRequest.aspx">All Requests</a></li>
            <li><a href="ListEmployees.aspx">Employees</a></li>
          </ul>
        </li>
        <li><a href="ListCases.aspx">All Cases</a></li>
      </ul>
    </div>
  </nav>

        <asp:Button ID="btn_Add" runat="server" Text="New Employee" style="position: absolute; top: 100px; left: 756px; width:150px; height:40px; font-size: 20px; cursor: pointer; right: 933px;" OnClick="btn_Add_Click"/>
        <asp:Button ID="btn_Search" runat="server" Text="Search" style="position: absolute; top: 100px; left: 976px; width:150px; height:40px; font-size: 20px; cursor: pointer;" OnClick="btn_Search_Click" />
        
    <div style="background:#222127; margin:150px 37px 50px 500px; border:3.4px solid #c1a26b; width: 889px; padding: 5px;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="104px" style="color:white;" Width="871px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ItemStyle-Width="150" ItemStyle-ForeColor="#c1a26b">
<ItemStyle ForeColor="#C1A26B" Width="150px"></ItemStyle>
                </asp:CommandField>
                <asp:BoundField DataField="Id" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tbl_users] ([fname], [lname], [username], [password], [email]) VALUES (@fname, @lname, @username, @password, @email)" SelectCommand="SELECT * FROM [tbl_users]" UpdateCommand="UPDATE [tbl_users] SET [fname] = @fname, [lname] = @lname, [username] = @username, [password] = @password, [email] = @email WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
