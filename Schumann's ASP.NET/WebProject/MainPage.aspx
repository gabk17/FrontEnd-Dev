<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" MaintainScrollPositionOnPostBack="true" Inherits="WebProject.MainPage" %>
<!-- <div style="width: 1710px; float:left; height:778px; background:#222127; margin:157px 37px 50px 97px; border:3.4px solid #c1a26b; ">-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>MainPage</title>
    <link rel="stylesheet" href="Navbar.css"/>
    <link rel="stylesheet" href="Photos.css"/> 
    <link rel="stylesheet" href="Title.css"/> 
    <link rel="stylesheet" href="Footer.css"/> 
    <link rel="stylesheet" href="Slider.css"/> 
    <link rel="stylesheet" href="/Css/css/all.min.css">


    
</head>
<body>
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

 
   <div>
   <svg>
    <symbol id="text">
      <text text-anchor="title" x="50%" y="50%">Our Best-Sellers For This Month</text>
    </symbol>
    <use xlink:href="#text"></use>
  </svg>
  </div> 
    
    <div style="width: 1736px; float:left; height:740px; background:#222127; margin:205px 37px 50px 102px; border:5px solid #c1a26b; "></div>
 
    <section>
    <div class="container">
      <div class="box">
          <div class="imgBx">
              <img src="photos/img1.png"/>
          </div>
      </div>
      <div class="box">
         <div class="imgBx">
              <img src="photos/img8.png"/> 
          </div>
      </div>
      <div class="box">
         <div class="imgBx">
              <img src="photos/img3.png"/>  
         </div>
      </div>
      <div class="box">
          <div class="imgBx">
              <img src="photos/img5.png"/>
          </div>
      </div>
    </div>
  </section>

    <div style="width: 1720px; float:left; height:781px; background:#222127; margin:0px 40px 20px 111px; border:3.4px solid #c1a26b; "></div> <!--1022px-->
    <div class="container">
    <div class="banner1">
      <img src="photos/sliderIMG1.png" class="img1">
      <div class="text-box text-box1">
        <h1>Events</h1>
        <span></span>
        <p>From our renowned gourmet evenings to wine tastings and more, we have something for everyone taking place every month</p>
      </div>
    </div>
    <div class="banner2">
      <img src="photos/sliderIMG6.png" class="img2">
      <div class="text-box text-box2">
        <h1>Fresh</h1>
        <span></span>
        <p>Showcasing the finest ingredients the World has to offer, seven days a week.</p>
      </div>
    </div>
    <div class="banner3">
      <img src="photos/sliderIMG3 (2).png" class="img3">
      <div class="text-box text-box3">
        <h1>Warm Atmosphere</h1>
        <span></span>
        <p>We offer over sixty seating places surrounding a fireplace that will make your dining exquisite and enjoyable</p>
      </div>
    </div>
    <div class="banner4">
      <img src="photos/sliderIMG4.png" class="img4">
      <div class="text-box text-box4">
        <h1>Drinks</h1>
        <span></span>
        <p>Our focus is to bring the best and most responsibly sourced ingredients to the table.</p>
      </div>
    </div>
  </div>
 
  <div class="page-wrapper"></div>

  <div class="footer">
    <div class="footer-content">
    <label class="botTitle1">Follow Us</label>
    <label class="botTitle2">Have A Request? Tell Us Here</label>
    <label class="botTitle3">Contact Us</label>

    <i class="fas fa-2x fa-phone-alt"  style="position:absolute; top: 181px; left: 1280px; width: 64px; height: 57px;"></i>
        <label style="position:absolute; top: 128px; left: 1338px; font-size: 22px;">City, Country</label>
    <i class="fas fa-2x fa-search-location" style="position:absolute; top: 125px; left: 1279px; height: 68px; width: 53px;"></i>
        <label style="position:absolute; top: 184px; left: 1339px; font-size: 22px;">+1-23-456-789</label>
    <i class="fas fa-2x fa-envelope-open-text" style="position:absolute; top: 240px; left: 1280px; height: 68px; width: 53px;"></i>
        <label style="position:absolute; top: 240px; left: 1339px; font-size: 22px;">abc@email.com</label>

    <form id="form1" runat="server">
        <asp:TextBox ID="txt_id" runat="server" placeholder="Enter ID Here" style="position:absolute; top: 196px; left: 95px; width: 432px; height: 29px;"></asp:TextBox>
        <asp:TextBox ID="txt_request" runat="server" placeholder="Enter Schedule Request Here" style="position:absolute; top: 239px; left: 95px; width: 432px; height: 29px;"></asp:TextBox>

        <asp:Button ID="btn_send" runat="server" Text="Send" class="send" OnClick="btn_send_Click"/>
        <asp:Label ID="LabelRes" runat="server" Text="" style="position:absolute; top: 286px; left: 180px;"></asp:Label>
    </form>

  <ul class="uList">
    <li class="iList"><a href='https://www.facebook.com/schumanns.rest/'>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <i class="fab fa-2x fa-facebook-f"></i>
        </a>
    </li>
    <li class="iList"><a href='https://twitter.com/RestSchumanns?s=08'>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <i class="fab fa-2x fa-twitter"></i>
        </a>
    </li>
    <li class="iList"><a href='https://www.instagram.com/schumanns_rest/'>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <i class="fab fa-2x fa-instagram"></i>
        </a>
    </li>
  </ul>

    </div>
    <div class="footer-bottom">
      &copy; SCHUMANN'S | All Rights Reserved
    </div>
  </div>

    <style>
        .botTitle1{
            text-align: center; 
            color: white; 
            font-size: 60px; 
            position: absolute; 
            top: 22px; 
            left: 735px; 
            border-top: 4px solid #19181c; 
            border-bottom: 4px solid #19181c;
        }

        .botTitle2{
            text-align: center; 
            color: white; 
            font-size: 50px; 
            position: absolute; 
            top: 22px; 
            left: 94px; 
            border-top: 4px solid #19181c; 
            border-bottom: 4px solid #19181c;
            height: 157px;
            width: 439px;
        }

        .botTitle3{
            text-align: center; 
            color: white; 
            font-size: 50px; 
            position: absolute; 
            top: 22px; 
            left: 1200px; 
            border-top: 4px solid #19181c; 
            border-bottom: 4px solid #19181c;
            width: 439px;
        }

        .send{
            position:absolute; 
            top: 281px; 
            left: 93px; 
            width: 66px; 
            font-size:20px; 
            color: gray;
            height: 27px;
            background-color: transparent;
            border-color: transparent;

        }

        .send:hover{
            color:#c1a26b;
            cursor: pointer;
            font-weight:900;
        }
    </style>
 
</body>
    <script type="text/javascript">
        const imgBx = document.querySelectorAll('.imgBx')
        imgBx.forEach(popup => popup.addEventListener('click', () => {
            popup.classList.toggle('active')
        }))
    </script>


</html>
