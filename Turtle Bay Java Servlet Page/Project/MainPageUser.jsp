<%
String uname ="";
if(request.getSession().getAttribute("uname") != null )
{
uname = (String) request.getSession().getAttribute("uname");
}else
{
response.sendRedirect("logout.jsp");
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MainPage</title>
  <link rel="stylesheet" href="Navbar.css" />
  <link rel="stylesheet" href="Photos.css" />
  <link rel="stylesheet" href="Title.css" />
  <link rel="stylesheet" href="Footer.css" />
  <link rel="stylesheet" href="Slider.css" />
  <link rel="stylesheet" href="/Css/css/all.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body style="background-image: url('WhiteWood.jpg');">

  <div style="background:#0061ab; width:2000px; position:fixed; top: -12px; left: -1px; height: 69px; z-index:104;"></div>
  <nav>
    <div class="wrapper">
      <div class="logo">
      <a href="MainPage.jsp">TURTLE BEACH</a></div>
      <input type="radio" name="slider" id="menu-btn"/>
      <input type="radio" name="slider" id="close-btn"/>
      <ul class="nav-links">
        <li><a href="MainPageUser.jsp">Home</a></li>
        <li><a href="NewReservationUser.jsp">New Reservation</a></li>
        <li><a href="SignInPage.jsp">Sign Out</a></li>

      </ul>
    </div>
  </nav>
  
  
  <div>
    <svg>
      <symbol id="text">
        <text text-anchor="title" x="50%" y="50%">Check Some Of Our Best Views</text>
      </symbol>
      <use xlink:href="#text"></use>
    </svg>
  </div>
  
  <div
    style="width: 1736px; float:left; height:748px; background:#222127; margin:207px 37px 50px 102px; border:5px solid #9CD4FF; ">
  </div>
  
  <div style="position: absolute; top: 18px; left: 20px;">
    <label style="position: fixed; color: white; z-index: 200; font-size: 30px;">Welcome! <%=uname%></label>
  </div>

  <section>
    <div class="container">
      <div class="box">
        <div class="imgBx">
          <img src="photos/Turtle1.jpg" alt="" />
        </div>
      </div>
      <div class="box">
        <div class="imgBx">
          <img src="photos/Turtle2.jpg" alt="" />
        </div>
      </div>
      <div class="box">
        <div class="imgBx">
          <img src="photos/Turtle3.jpg" alt="" />
        </div>
      </div>
      <div class="box">
        <div class="imgBx">
          <img src="photos/Turtle4.jpg" alt="" />
        </div>
      </div>
    </div>
  </section>
  
  <div
    style="width: 1720px; float:left; height:781px; background:#222127; margin:0px 40px 20px 111px; border:3.4px solid #9CD4FF; ">
  </div>
  <div class="container">
    <div class="banner1">
      <img src="photos/Slider4.jpg" class="img1" alt="">
      <div class="text-box text-box1">
        <h1>Events</h1>
        <span></span>
        <p>From our renowned gourmet evenings to wine tastings and more, we have something for everyone taking place every
          month</p>
      </div>
    </div>
    <div class="banner2">
      <img src="photos/Slider1.jpg" class="img2" alt="">
      <div class="text-box text-box2">
        <h1>Comfort</h1>
        <span></span>
        <p>Stay on top of the world with top of the line service.</p>
      </div>
    </div>
    <div class="banner3">
      <img src="photos/Slider2.jpg" class="img3" alt="">
      <div class="text-box text-box3">
        <h1>Warm Atmosphere</h1>
        <span></span>
        <p>We offer cozy seating places surrounding on the sea side that will make your stay exquisite and enjoyable
        </p>
      </div>
    </div>
    <div class="banner4">
      <img src="photos/Slider3.jpg" class="img4" alt="">
      <div class="text-box text-box4">
        <h1>Packages</h1>
        <span></span>
        <p>When planning your escape to Turtle Bay, we want you to make the most of it. And that includes getting the best stay possible.</p>
      </div>
    </div>
  </div>
  
  <div class="page-wrapper"></div>
  
  <div class="footer">
    <div class="footer-content">
      <label class="botTitle1">Follow Us</label>
      <label class="botTitle2">Need A Reservation? <br/>Tell Us Here</label>
      <label class="botTitle3">Contact Us</label>
  
      <em class="fa fa-2x fa-phone"
        style="position:absolute; top: 181px; left: 1280px; width: 64px; height: 57px;"></em>
      <label style="position:absolute; top: 128px; left: 1338px; font-size: 22px;">City, Country</label>
      <em class="fa fa-2x fa-search"
        style="position:absolute; top: 125px; left: 1279px; height: 68px; width: 53px;"></em>
      <label style="position:absolute; top: 184px; left: 1339px; font-size: 22px;">+1-23-456-789</label>
      <em class="fa fa-2x fa-envelope"
        style="position:absolute; top: 240px; left: 1280px; height: 68px; width: 53px;"></em>
      <label style="position:absolute; top: 240px; left: 1339px; font-size: 22px;">abc@email.com</label>
  
      
      <input type="button" ID="btnReservation" value = "Make A Reservation" style="position:absolute; top: 260px; left: 95px; width: 432px; height: 29px;" onclick="window.location.href='NewReservationUser.jsp';"/>
  
      <ul class="uList">
        <li class="iList"><a href='https://www.facebook.com/schumanns.rest/'>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <em class="fa fa-2x fa-facebook"></em>
          </a>
        </li>
        <li class="iList"><a href='https://twitter.com/RestSchumanns?s=08'>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <em class="fa fa-2x fa-twitter"></em>
          </a>
        </li>
        <li class="iList"><a href='https://www.instagram.com/schumanns_rest/'>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <em class="fa fa-2x fa-instagram"></em>
          </a>
        </li>
      </ul>
  
    </div>
    <div class="footer-bottom">
      &copy; TURTLE BEACH | All Rights Reserved
    </div>
  </div>
  
  <style>
    .botTitle1 {
      text-align: center;
      color: white;
      font-size: 60px;
      position: absolute;
      top: 22px;
      left: 735px;
      border-top: 4px solid #19181c;
      border-bottom: 4px solid #19181c;
    }
  
    .botTitle2 {
      text-align: center;
      color: white;
      font-size: 45px;
      position: absolute;
      top: 22px;
      left: 94px;
      border-top: 4px solid #19181c;
      border-bottom: 4px solid #19181c;
      height: 220px;
      width: 439px;
    }
  
    .botTitle3 {
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
  
    .send {
      position: absolute;
      top: 281px;
      left: 93px;
      width: 66px;
      font-size: 20px;
      color: gray;
      height: 27px;
      background-color: transparent;
      border-color: transparent;
  
    }
  
    .send:hover {
      color: #9CD4FF;
      cursor: pointer;
      font-weight: 900;
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