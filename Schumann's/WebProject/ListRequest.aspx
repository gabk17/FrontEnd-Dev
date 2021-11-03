<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListRequest.aspx.cs" Inherits="WebProject.ListRequest" %>

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

    <div style="background:#222127; margin:120px 37px 50px 680px; border:3.4px solid #c1a26b; width: 515px; padding: 5px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" style="color: white;">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ItemStyle-Width="70" ItemStyle-ForeColor="#c1a26b"/>
                <asp:BoundField DataField="Id" HeaderText="Request ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" ItemStyle-Width="150"/>
                <asp:BoundField DataField="id_user" HeaderText="User ID" SortExpression="id_user" ItemStyle-Width="150"/>
                <asp:BoundField DataField="request" HeaderText="User Request" SortExpression="request" ItemStyle-Width="150"/>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_request] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tbl_request] ([id_user], [request]) VALUES (@id_user, @request)" SelectCommand="SELECT * FROM [tbl_request]" UpdateCommand="UPDATE [tbl_request] SET [id_user] = @id_user, [request] = @request WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_user" Type="Int32" />
                <asp:Parameter Name="request" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_user" Type="Int32" />
                <asp:Parameter Name="request" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
