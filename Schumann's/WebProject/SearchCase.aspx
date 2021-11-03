<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchCase.aspx.cs" Inherits="WebProject.SearchCase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Navbar.css"/>

</head>
<body>
    <form id="form1" runat="server">

        <div style="background:#222127; width:1901px; position:fixed; top: -12px; left: -1px; height: 69px; z-index:104;"></div>
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

    <div style="background:#222127; margin:150px 37px 50px 322px; border:3.4px solid #c1a26b; width: 1351px; padding: 5px; color: white;">
        <center>
            
            <h1 style="margin-top: 15px;">Search Records From The Database</h1>
            <h2>Display Customer Incidents</h2>
        <hr />
       
            Search: <asp:TextBox ID="Txtsearch" runat="server" style="margin-left: 11px"></asp:TextBox>
            <asp:Button ID="ButSearch" runat="server" Text="Search" style="margin-left: 18px" OnClick="ButSearch_Click" />
        <hr />
            <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true" EmptyDataText="No Records Found" ItemStyle-Width="50" style="margin :15px;">

            </asp:GridView>
           
        </div>
        </center>
    </form>
</body>
</html>
