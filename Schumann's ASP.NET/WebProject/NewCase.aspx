<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewCase.aspx.cs" Inherits="WebProject.NewCase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Navbar.css"/>
    <link rel="stylesheet" href="SaveButton.css"/>



</head>
<body>
    <form id="form1" runat="server">
        <div style="background:#222127; width:2000px; position:fixed; top: -12px; left: -1px; height: 69px; z-index:104;"></div>
   <nav>
    <div class="wrapper">
      <div class="logo"><a href="#">SCHUMANN'S</a></div>
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
    
        <div style="width: 1710px; float:left; height:778px; background:#222127; margin:128px 37px 50px 97px; border:3.4px solid #c1a26b; z-index:98;">
        </div>

        <label style="text-align: center; 
            color: white; 
            font-size: 35px; 
            position: absolute; 
          
            border-top: 4px solid #c1a26b; 
            border-bottom: 4px solid #c1a26b; top: 183px; left: 271px; height: 63px;">New Case</label>

        <div style="position: absolute; background: #c1a26b; border-radius: 5px; z-index:99; width: 5px; height:565px; top: 254px; left: 650px;"></div>
        <div style="position: absolute; background: #c1a26b; border-radius: 5px; z-index:99; width: 5px; height:565px; top: 254px; left: 1200px;"></div>

        <asp:TextBox ID="cname" runat="server" style="position: absolute; top: 350px; left: 200px; width: 353px; height: 35px;"></asp:TextBox>
        <asp:TextBox ID="phone_number" runat="server" style="position: absolute; top: 470px; left: 200px; width: 353px; height: 35px;"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" style="position: absolute; top: 590px; left: 200px; width: 353px; height: 35px;">
            <asp:ListItem>Dine in</asp:ListItem>
            <asp:ListItem>Delivery</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="waiter_name" runat="server" style="position: absolute; top: 710px; left: 200px; width: 353px; height: 35px;"></asp:TextBox>

        <asp:TextBox ID="check_num" runat="server" style="position: absolute; top: 350px; left: 750px; width: 353px; height: 35px;"></asp:TextBox>
        <asp:TextBox ID="correction_num" runat="server" style="position: absolute; top: 470px; left: 750px; width: 353px; height: 35px;"></asp:TextBox>
        <asp:TextBox ID="filled_by" runat="server" style="position: absolute; top: 590px; left: 750px; width: 353px; height: 35px;"></asp:TextBox>
        <asp:DropDownList ID="DropDownList2" runat="server" style="position: absolute; top: 710px; left: 750px; width: 353px; height: 35px;">
            <asp:ListItem>Achrafieh</asp:ListItem>
            <asp:ListItem>Broumana</asp:ListItem>
        </asp:DropDownList>

        <asp:TextBox ID="date_incident" runat="server" type="date" style="position: absolute; top: 350px; left: 1300px; width: 353px; height: 35px;"></asp:TextBox>    
        <asp:TextBox name="content" ID="detailsOfIncident" style="position: absolute; top: 470px; left: 1300px; width: 353px; height: 160px;" runat="server" TextMode="MultiLine"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required"  style="position: absolute; color: #c1a26b; top: 320px; left: 478px; color: red;" ControlToValidate="cname"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required"  style="position: absolute; color: #c1a26b; top: 437px; left: 478px; color: red;" ControlToValidate="phone_number"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required"  style="position: absolute; color: #c1a26b; top: 560px; left: 478px; color: red;" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required"  style="position: absolute; color: #c1a26b; top: 680px; left: 478px; color: red;" ControlToValidate="waiter_name"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required"  style="position: absolute; color: #c1a26b; top: 323px; left: 1030px; color: red;" ControlToValidate="check_num"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required"  style="position: absolute; color: #c1a26b; top: 441px; left: 1033px; color: red;" ControlToValidate="correction_num"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required"  style="position: absolute; color: #c1a26b; top: 560px; left: 1033px; color: red;" ControlToValidate="filled_by"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required"  style="position: absolute; color: #c1a26b; top: 680px; left: 1033px; color: red;" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required"  style="position: absolute; color: #c1a26b; top: 320px; left: 1580px; color: red;" ControlToValidate="date_incident"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required"  style="position: absolute; color: #c1a26b; top: 440px; left: 1580px; color: red;" ControlToValidate="detailsOfIncident"></asp:RequiredFieldValidator>

        <label style="position: absolute; color: #c1a26b; top: 320px; left: 202px;">Customer Full Name</label>
        <label style="position: absolute; color: #c1a26b; top: 440px; left: 202px;">Phone Number</label>
        <label style="position: absolute; color: #c1a26b; top: 560px; left: 202px;">Operation</label>
        <label style="position: absolute; color: #c1a26b; top: 680px; left: 202px;">Waiter/Operator</label>

        <label style="position: absolute; color: #c1a26b; top: 320px; left: 752px;">Customer Check Number</label>
        <label style="position: absolute; color: #c1a26b; top: 440px; left: 752px;">Correction Check Number</label>
        <label style="position: absolute; color: #c1a26b; top: 560px; left: 752px;">Filled By</label>
        <label style="position: absolute; color: #c1a26b; top: 680px; left: 752px;">Branch</label>

        <label style="position: absolute; color: #c1a26b; top: 320px; left: 1300px;">Date Of Incident</label>
        <label style="position: absolute; color: #c1a26b; top: 440px; left: 1300px;">Details</label>

        <div style="position:absolute; top: 678px; left: 1414px; height: 124px; width: 319px; z-index: 98;">
                <a class="btnSignIn" href="#">
                 <span></span>
                 <span></span>
                 <span></span>
                 <span></span>
                    <asp:Button ID="btn_save" runat="server" Text="Save" style="font-size:30px; background-color: transparent; border-color: transparent; color: #c1a26b" OnClick="btn_save_Click"/>
                 </a>
            </div>
    <div style="position: absolute; background:#222127; top: 651px; left: 1392px; width: 214px; z-index: 100; height: 27px;"></div>

        </form>
        










        


</body>
</html>
