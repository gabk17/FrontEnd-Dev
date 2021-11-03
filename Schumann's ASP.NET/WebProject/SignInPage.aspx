<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="WebProject.SignInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In Page</title>

    <style>
        @font-face{
            font-family:'ArnoPro';
            src: url(ArnoPro-Regular.otf);
            font-style:normal;
            font-weight:normal;
        }

        .topTitle{
            font-family: ArnoPro;
            font-weight: normal;
        }
    </style>

    <link rel="stylesheet" href="ButtonStyle.css"/>
    <link rel="stylesheet" href="Navbar.css"/>


</head>
<body style="background-image: url('background1.png');" ">
  
    <form id="form1" runat="server">
        
                
        <div style="width: 1000px; float:left; height:920px; background:#c1a26b; margin:15px">
            <img src="logo1.png" style="width: 993px; height: 913px; margin-left: 3px; margin-top: 3px" />
        </div>

        <div style="width: 709px; float:left; height:913px; background:#222127; margin:14px 5px 5px 5px; border:3.4px solid #c1a26b; ">
        <img src="border.png" style="max-width: 100%; max-height: 100%; margin-left: 24px;" />
            <div style ="position:absolute; width: 184px; top: 69px; left: 1456px;"> 
                <asp:TextBox ID="txt_Username" runat="server" style="position:absolute; top: 181px; left: -207px; height: 33px; width: 317px;" placeholder="Enter your name here"></asp:TextBox>  
                <asp:TextBox ID="txt_Pass" runat="server" style="position:absolute; top: 283px; left: -210px; margin-top: 11px; margin-bottom: 1px; height: 33px; width: 317px;" placeholder="Enter your password here" TextMode="Password"></asp:TextBox>
            </div>

            <asp:Label ID="LabelRes" runat="server" Text="" style="position:absolute; top: 415px; left: 1300px; width: 299px; color: red"></asp:Label>

            <br /><br />
            <br /><br />
            <br /><br />

            <div style ="position:absolute; top: 132px; left: 1304px; width: 213px;">
                <label class="topTitle" style="font-size:40px; color:white;">Log In Here</label>
            </div>

            <div style ="position:absolute; top: 182px; left: 1304px; width: 189px; margin-top: 0px; background:#c1a26b; height: 2px;">
            </div>

            <img src="lock.png" style="height: 19px; width: 25px; top:371px; position:absolute; left: 1539px;"/>
            <img src="user.png" style="height: 19px; width: 23px; top:257px; position:absolute; left: 1539px; bottom: 237px;"/>

    <div style="position: absolute; background:#222127; top: 439px; left: 1306px; width: 242px; z-index: 100; height: 8px;"></div>

            <div style ="position:absolute; top: 226px; left: 1250px; width: 87px;">
                <label class="topTitle" style="font-size:17px; color:#c1a26b;">User Name :</label>
            </div>

             <div style ="position:absolute; top: 338px; left: 1250px; width: 84px;">
                <label class="topTitle" style="font-size:17px; color:#c1a26b;">Password :</label>
            </div>

            <div style="position:absolute; top: 447px; left: 1311px; height: 124px; width: 319px;">
                <a class="btnSignIn" href="#">
                 <span></span>
                 <span></span>
                 <span></span>
                 <span></span>
                    <asp:Button ID="Button1" runat="server" Text="Sign In" style="font-size:30px; background-color: transparent; border-color: transparent; color: white;" OnClick="Button1_Click"/>
                 </a>
            </div>

            <div style="position: absolute; top: 607px; left: 1292px; width: 386px;">
                <label style="color: white;">Not a Member yet ? </label><a href="Register.aspx" style="color: #c1a26b;">Register here</a>
            </div>

            <br /><br />
            <br /><br />
            <br /><br />

           <div style="text-align:center; position: absolute; top: 722px; left: 1182px; margin-right: 0px;">
               <label style="font-size:18px; color:#c1a26b">
                    𝒜 𝓇𝑒𝒸𝒾𝓅𝑒 𝒽𝒶𝓈 𝓃𝑜 𝓈𝑜𝓊𝓁. <br /> 𝒴𝑜𝓊, 𝒶𝓈 𝓉𝒽𝑒 𝒸𝑜𝑜𝓀, 𝓂𝓊𝓈𝓉 𝒷𝓇𝒾𝓃𝑔 𝓈𝑜𝓊𝓁 𝓉𝑜 𝓉𝒽𝑒 𝓇𝑒𝒸𝒾𝓅𝑒 <br />- 𝒯𝒽𝑜𝓂𝒶𝓈 𝒦𝑒𝓁𝓁𝑒𝓇
               </label>
           </div>

            </div>
           
    </form>
</body>
</html>
