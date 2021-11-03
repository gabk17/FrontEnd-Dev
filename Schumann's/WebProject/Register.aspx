<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebProject.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="Navbar.css"/>
    <link rel="stylesheet" href="Photos.css"/> 
    <link rel="stylesheet" href="Footer.css"/> 
    <link rel="stylesheet" href="/Css/css/all.min.css"/>
    <link rel="stylesheet" href="ButtonStyle.css"/>
    <link rel='stylesheet' href="Loader.css">


</head>
<body>
        <div style="background:#222127; width:1901px; position:fixed; top: -12px; left: -1px; height: 69px; z-index:104;"></div>
   <nav>
    <div class="wrapper">
      <div class="logo"><a href="#">SCHUMANN'S</a></div>
    </div>
  </nav>

 <div style="width: 1500px; float:left; height:840px; background:#222127; margin:100px 37px 50px 200px; border:3.4px solid #c1a26b; "></div>

    <label style="text-align: center; color: white; font-size: 35px; position: absolute; border-top: 4px solid #c1a26b; border-bottom: 4px solid #c1a26b; top: 136px; left: 1025px; height: 63px; margin-top: 0px;">Welcome To The Team!</label>
        
   <form id="form1" runat="server">
    <asp:TextBox ID="fname" runat="server" style="position: absolute; top: 255px; left: 1010px; width: 453px; height: 35px;"></asp:TextBox>
    <asp:TextBox ID="lname" runat="server" style="position: absolute; top: 355px; left: 1010px; width: 453px; height: 35px;"></asp:TextBox>
    <asp:TextBox ID="uname" runat="server" style="position: absolute; top: 455px; left: 1010px; width: 453px; height: 35px;"></asp:TextBox>
    <asp:TextBox ID="email" runat="server" style="position: absolute; top: 555px; left: 1010px; width: 453px; height: 35px;" TextMode="Email"></asp:TextBox>
    <asp:TextBox ID="pass" runat="server" style="position: absolute; top: 655px; left: 1010px; width: 453px; height: 35px;" TextMode="Password"></asp:TextBox>
    <asp:TextBox ID="conf_pass" runat="server" style="position: absolute; top: 755px; left: 1010px; width: 453px; height: 35px;" TextMode="Password"></asp:TextBox>

       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is Required" style="position: absolute; color: red; top: 225px; left: 1280px; width: 230px;" ControlToValidate="fname"></asp:RequiredFieldValidator>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is Required" style="position: absolute; color: red; top: 325px; left: 1280px; width: 230px;" ControlToValidate="lname"></asp:RequiredFieldValidator>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="User Name is Required" style="position: absolute; color: red; top: 425px; left: 1280px; width: 230px;" ControlToValidate="uname"></asp:RequiredFieldValidator>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email is Required" style="position: absolute; color: red; top: 525px; left: 1327px; width: 230px;" ControlToValidate="email"></asp:RequiredFieldValidator>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password is Required" style="position: absolute; color: red; top: 625px; left: 1290px; width: 230px;" ControlToValidate="pass"></asp:RequiredFieldValidator>
       <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Does not match" style="position: absolute; color: red; top: 725px; left: 1328px;" ControlToCompare="pass" ControlToValidate="conf_pass"></asp:CompareValidator>

    <label style="position: absolute; color: #c1a26b; top: 225px; left: 1010px; height: 18px;">First Name</label>
    <label style="position: absolute; color: #c1a26b; top: 325px; left: 1010px;">Last Name</label>
    <label style="position: absolute; color: #c1a26b; top: 425px; left: 1010px;">User Name</label>
    <label style="position: absolute; color: #c1a26b; top: 525px; left: 1010px;">Email</label>
    <label style="position: absolute; color: #c1a26b; top: 625px; left: 1010px;">Password</label>
    <label style="position: absolute; color: #c1a26b; top: 725px; left: 1010px;">Confirm Password</label>


     <div style="position:absolute; top: 816px; left: 1149px; height: 124px; width: 319px; z-index: 98;">
                <a class="btnSignIn" href="#">
                 <span></span>
                 <span></span>
                 <span></span>
                 <span></span>
                    <asp:Button ID="btn_save" runat="server" Text="Save" style="font-size:30px; background-color: transparent; border-color: transparent; color: #c1a26b" OnClick="btn_save_Click"/>
                 </a>
            </div>
    <div style="position: absolute; background:#222127; top: 802px; left: 1132px; width: 214px; z-index: 100; height: 14px;"></div>

    <label style="text-align: center; color: white; font-size: 35px; position: absolute; top: 258px; left: 388px; height: 63px; margin-top: 0px; border-top: 4px solid #c1a26b; letter-spacing: 3px; line-height: 1.6">
        We are glad to have you <br /> Let's get you <br />Set up </label>
    <label style="text-align: center; color: white; font-size: 20px; position: absolute; top: 513px; left: 412px; height: 115px; margin-top: 0px; border-bottom: 4px solid #c1a26b; letter-spacing: 3px; line-height: 1.6;">
        It should take a couple of minutes <br /> to create your account
    </label>
    
<!--<div style="position: absolute;
    top: 682px;
    left: 632px;
    width: 148px;
    height: 46px;
    margin: -20px 0 0 -71px;
    z-index: 999;
    background-color: transparent;
    border: 4px solid #c1a26b;
    border-radius: 10px;"></div>-->

   <!-- <div class="gooey">
    <span class="dot"></span>
    <div class="dots">
      <span></span>
      <span></span>
      <span></span>
    </div>
  </div>
       <div style="position: absolute;
    width: 150px;
    height: 150px;
    border-radius: 50%;
    border: 4px solid #c1a26b;
    top: 723px;
    left: 568px;
    margin-top: 0px;"></div>
         <div class="loader"></div>-->

       <svg width="100" height="100" viewBox="0 0 100 100">
  <polyline class="line-cornered stroke-still" points="0,0 100,0 100,100" stroke-width="10" fill="none"></polyline>
  <polyline class="line-cornered stroke-still" points="0,0 0,100 100,100" stroke-width="10" fill="none"></polyline>
  <polyline class="line-cornered stroke-animation" points="0,0 100,0 100,100" stroke-width="10" fill="none"></polyline>
  <polyline class="line-cornered stroke-animation" points="0,0 0,100 100,100" stroke-width="10" fill="none"></polyline>
</svg>
    </form>

</body>
</html>
