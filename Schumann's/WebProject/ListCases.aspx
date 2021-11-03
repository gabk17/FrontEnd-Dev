<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListCases.aspx.cs" Inherits="WebProject.ListUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="Navbar.css"/>
    <link rel="stylesheet" href="Photos.css"/> 
    <link rel="stylesheet" href="Title.css"/> 
    <link rel="stylesheet" href="Footer.css"/> 
    <link rel="stylesheet" href="Slider.css"/> 
    <link rel="stylesheet" href="/Css/css/all.min.css">
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
            <li><a href="#">Schedule</a></li>
            <li><a href="#">Employees</a></li>
          </ul>
        </li>
        <li><a href="ListCases.aspx">All Cases</a></li>
      </ul>
    </div>
  </nav>

        <asp:Button ID="btn_Add" runat="server" Text="New Case" style="position: absolute; top: 91px; left: 756px; width:150px; height:40px; font-size: 20px; cursor: pointer;" OnClick="btn_Add_Click"/>
        <asp:Button ID="btn_Search" runat="server" Text="Search" style="position: absolute; top: 91px; left: 976px; width:150px; height:40px; font-size: 20px; cursor: pointer;" OnClick="btn_Search_Click" />


    <div style="background:#222127; margin:150px 37px 50px 100px; border:3.4px solid #c1a26b; width: 1714px; padding: 5px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" style="color:white; width: 1698px; margin-top: 4px;" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" ItemStyle-Width="100" ItemStyle-ForeColor="#c1a26b">
<ItemStyle ForeColor="#C1A26B" Width="110px"></ItemStyle>
            </asp:CommandField>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" ItemStyle-Width="50">
<ItemStyle Width="50px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="cname" HeaderText="Customer Name" SortExpression="cname" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="operation" HeaderText="Operation" SortExpression="operation" ItemStyle-Width="120">
<ItemStyle Width="120px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="waiter" HeaderText="Waiter" SortExpression="waiter" ItemStyle-Width="100">
<ItemStyle Width="100px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="check_number" HeaderText="Check Number" SortExpression="check_number" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="correction_number" HeaderText="Correction Check Number" SortExpression="correction_number" ItemStyle-Width="240">
<ItemStyle Width="240px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="filled_by" HeaderText="Filled By" SortExpression="filled_by" ItemStyle-Width="110">
<ItemStyle Width="110px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="branch" HeaderText="Branch" SortExpression="branch" ItemStyle-Width="110">
<ItemStyle Width="110px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="date" HeaderText="Date Of Incident" SortExpression="date" ItemStyle-Width="190">
<ItemStyle Width="190px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="details" HeaderText="Details" SortExpression="details" ItemStyle-Width="250">
<ItemStyle Width="250px"></ItemStyle>
            </asp:BoundField>
        </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_cases] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tbl_cases] ([cname], [phone], [operation], [waiter], [check_number], [correction_number], [filled_by], [branch], [date], [details]) VALUES (@cname, @phone, @operation, @waiter, @check_number, @correction_number, @filled_by, @branch, @date, @details)" SelectCommand="SELECT * FROM [tbl_cases]" UpdateCommand="UPDATE [tbl_cases] SET [cname] = @cname, [phone] = @phone, [operation] = @operation, [waiter] = @waiter, [check_number] = @check_number, [correction_number] = @correction_number, [filled_by] = @filled_by, [branch] = @branch, [date] = @date, [details] = @details WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cname" Type="String" />
                <asp:Parameter Name="phone" Type="Int32" />
                <asp:Parameter Name="operation" Type="String" />
                <asp:Parameter Name="waiter" Type="String" />
                <asp:Parameter Name="check_number" Type="Int32" />
                <asp:Parameter Name="correction_number" Type="Int32" />
                <asp:Parameter Name="filled_by" Type="String" />
                <asp:Parameter Name="branch" Type="String" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="details" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cname" Type="String" />
                <asp:Parameter Name="phone" Type="Int32" />
                <asp:Parameter Name="operation" Type="String" />
                <asp:Parameter Name="waiter" Type="String" />
                <asp:Parameter Name="check_number" Type="Int32" />
                <asp:Parameter Name="correction_number" Type="Int32" />
                <asp:Parameter Name="filled_by" Type="String" />
                <asp:Parameter Name="branch" Type="String" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="details" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    
    </form>

</body>
</html>
