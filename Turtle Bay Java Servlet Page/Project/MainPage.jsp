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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/Project/Navbar.css" />
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
      <div class="logo"><a href="MainPage.jsp">TURTLE BAY</a></div>
      <input type="radio" name="slider" id="menu-btn"/>
      <input type="radio" name="slider" id="close-btn"/>
      <ul class="nav-links">
        <label for="close-btn" class="btn close-btn"><em class="fas fa-times"></em></label>
        <li><a href="MainPage.jsp">Home</a></li>
        <li>
          <a href="#" class="desktop-item">Work Place</a>
          <input type="checkbox" id="showDrop">
          <label for="showDrop" class="mobile-item">Dropdown Menu</label>
          <ul class="drop-menu">
            <li><a href="NewReservation.jsp">New Reservation</a></li>
            <li><a href="Register.jsp">New User</a></li>
          </ul>
        </li>
        <li><a href="ListReservation.jsp">All Reservations</a></li>
        <li><a href="ListUser.jsp">All Users</a></li>
        <li><a href="SignInPage.jsp">Sign Out</a></li>

      </ul>
    </div>
  </nav>
  
  <div>
    <div
      style="width: 40%; float:left; height:740px; background:#222127; margin:100px 37px 150px 30%; border:5px solid #9CD4FF; justify-content:center; text-align:center; ">

       <div style="margin-top: 50px;">

        <label style="color: #9CD4FF; font-size: 60px; border-top: 4px solid white; border-bottom: 4px solid white;">
          Welcome
        </label>
        <br/>
        <label style="color: white; font-size: 30px; border-top: 4px solid white; border-bottom: 4px solid white;">
          Admin View
        </label>
        <br/>
        <br/>
        <br/>
        <br/>
        <label style="position: relative; color: white; font-size: 20px; margin-right: 40px;">
          As an administrator, you are able to view all reservations as well as all users registered in here.
        </label>
        <br/>
        <br/>
        <br/>
        <br/>

        <input type="button" style="positon relative; width: 350px; font-size: 20px;" value="Check Reservations Here" onclick="window.location.href='ListReservation.jsp';"/>

        <br/>
        <br/>
        <br/>
        <br/>

        <input type="button" style="positon relative; width: 350px; font-size: 20px;" value="Check Users Here" onclick="window.location.href='ListUser.jsp';"/>
      </div>
      
    </div>
  </div>

  <div style="position: absolute; top: 18px; left: 20px;">
    <label style="position: fixed; color: white; z-index: 200; font-size: 30px;">Welcome! <%=uname%></label>
  </div>
  
  <div class="page-wrapper"></div>
  
  <div class="footer">
    <div class="footer-content">
      <label class="botTitle1">Social Media</label>
      <label class="botTitle2">The Customer is ALWAYS right! Please serve them nicely.</label>
      <label class="botTitle3">Contact Info</label>
  
      <em class="fa fa-2x fa-phone"
        style="position:absolute; top: 181px; left: 1280px; width: 64px; height: 57px;"></em>
      <label style="position:absolute; top: 128px; left: 1338px; font-size: 22px;">City, Country</label>
      <em class="fa fa-2x fa-search"
        style="position:absolute; top: 125px; left: 1279px; height: 68px; width: 53px;"></em>
      <label style="position:absolute; top: 184px; left: 1339px; font-size: 22px;">+1-23-456-789</label>
      <em class="fa fa-2x fa-envelope"
        style="position:absolute; top: 240px; left: 1280px; height: 68px; width: 53px;"></em>
      <label style="position:absolute; top: 240px; left: 1339px; font-size: 22px;">abc@email.com</label>
  
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
      left: 685px;
      border-top: 4px solid #001322;
      border-bottom: 4px solid #001322;
    }
  
    .botTitle2 {
      text-align: center;
      color: white;
      font-size: 45px;
      position: absolute;
      top: 22px;
      left: 94px;
      border-top: 4px solid #001322;
      border-bottom: 4px solid #001322;
      height: 280px;
      width: 439px;
    }
  
    .botTitle3 {
      text-align: center;
      color: white;
      font-size: 50px;
      position: absolute;
      top: 22px;
      left: 1200px;
      border-top: 4px solid #001322;
      border-bottom: 4px solid #001322;
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