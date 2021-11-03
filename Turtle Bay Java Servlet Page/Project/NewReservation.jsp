<%@ page import="java.sql.*" %>
<%
String type = request.getParameter("type");
String resId = "";
String name = "";
String phone = "";
String arrival = "";
String departure = "";
String resType = "";
String roomNum = "";
String peopleNum = "";
String details = "";
if("update".equals(type))
{
  resId = request.getParameter("resId");
String url = "jdbc:mysql://127.0.0.1:3306/project";
String username = "root";
String password = "toor";
  Connection con;
  try
  {

   Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection(url,username,password);	
    String sql = "select * from  tbl_reservations where res_id = ?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setInt(1,Integer.parseInt(resId));
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
	    name = rs.getString(2);
      phone = rs.getString(3);
	    arrival = rs.getString(4);
	    departure = rs.getString(5);
	    resType = rs.getString(6);
      roomNum = rs.getString(7);
      peopleNum = rs.getString(8);
      details = rs.getString(9);
    }
 
    if(con != null)
		{
			try 
			{
				con.close();
			} catch (Exception e) 
			{
				System.out.println(""+e);
			}
		} 

}
catch(Exception e)
{
  System.out.println(""+e);
}

}


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
  <title>New Reservation</title>

  <link rel="stylesheet" href="Navbar.css" />
  <link rel="stylesheet" href="SaveButton.css" />
</head>
 <body style="background-image: url('WhiteWood.jpg');">
  <form id="form1" action="JDBCReservation.jsp" method="POST"> 

  <div style="background:#0061ab; width:2000px; position:fixed; top: -12px; left: -1px; height: 69px; z-index:104;"></div>
    </div>
     <nav>
    <div class="wrapper">
      <div class="logo"><a href="MainPage.jsp">TURTLE BEACH</a></div>
      <input type="radio" name="slider" id="menu-btn"/>
      <input type="radio" name="slider" id="close-btn"/>
      <ul class="nav-links">
        <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
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
  
  <div style="position: absolute; top: 18px; left: 20px;">
    <label style="position: fixed; color: white; z-index: 200; font-size: 30px;">Welcome! <%=uname%></label>
  </div>
  
    <div
      style="width: 1710px;
       float:left; 
       height:778px; 
       background:#222127; 
       margin:128px 37px 50px 97px; 
       border:3.4px 
       solid #9CD4FF; 
       z-index:98;">
    </div>
  
    <label style="text-align: center; 
              color: white; 
              font-size: 35px; 
              position: absolute; 
              border-top: 4px solid #9CD4FF; 
              border-bottom: 4px solid #9CD4FF; 
              top: 183px; 
              left: 231px; 
              height: 63px;"
              >New Reservation</label>
  
    <div
      style="position: absolute;
       background: #9CD4FF; 
       border-radius: 5px; z-index:99;
       width: 5px;
       height:565px;
       top: 254px; 
       left: 650px;">
    </div>

    <div
      style="position: absolute;
       background: #9CD4FF; 
       border-radius: 5px; 
       z-index:99; 
       width: 5px; 
       height:565px; 
       top: 254px; 
       left: 1200px;">
    </div>
  
    <input type="hidden" name="type" value="<%=type%>"/> 
    <input type="hidden" name="resId" value="<%=resId%>"/> 

    <input required ID="cname"
      style="position: absolute; top: 350px; left: 200px; width: 353px; height: 35px;" name="name" value="<%=name%>"/> 
    <input required ID="phone_number"
      style="position: absolute; top: 470px; left: 200px; width: 353px; height: 35px;" name="phone"value="<%=phone%>"/> 
    <select ID="DropDownList1"
      style="position: absolute; top: 590px; left: 200px; width: 353px; height: 35px;" name="resType" value="<%=resType%>"> 
      <option value="Small">Small size room</option>
      <option value="Regular">Regular size room</option>
      <option value="Big">Big size room</option>
    </select>
  
  
    <input required ID="cust_room"
      style="position: absolute; top: 350px; left: 750px; width: 370px; height: 35px;" name="roomNum" value="<%=roomNum%>"/> 
    <input required ID="arrival" type='date'
      style="position: absolute; top: 470px; left: 750px; width: 353px; height: 35px;" name="arrival" value="<%=arrival%>"/> 
    <input required ID="departure" type='date'
      style="position: absolute; top: 590px; left: 750px; width: 353px; height: 35px;" name="departure" value="<%=departure%>"/> 
  
  
    <input required ID="num_people" type="text"
      style="position: absolute; top: 350px; left: 1300px; width: 353px; height: 35px;" name="peopleNum" value="<%=peopleNum%>"/> 
    <input required name="details" ID="detailsOfIncident"
      style="position: absolute; top: 470px; left: 1300px; width: 353px; height: 160px;"  
      TextMode="MultiLine" name="details"  value="<%=details%>" ></textarea>                                                    

    
    <label style="position: absolute; color: #9CD4FF; top: 320px; left: 202px; width: 300px;">Customer Full Name</label>
    <label style="position: absolute; color: #9CD4FF; top: 440px; left: 202px; width: 300px;">Phone Number</label>
    <label style="position: absolute; color: #9CD4FF; top: 560px; left: 202px; width: 300px;">Reservation Type</label>
  
  
    <label style="position: absolute; color: #9CD4FF; top: 320px; left: 752px; width: 300px;">Customer Room Number</label>
    <label style="position: absolute; color: #9CD4FF; top: 440px; left: 752px; width: 300px;">Arrival</label>
    <label style="position: absolute; color: #9CD4FF; top: 560px; left: 752px; width: 300px;">Departure</label>
  
  
    <label style="position: absolute; color: #9CD4FF; top: 320px; left: 1300px; width: 300px;">Number of People</label>
    <label style="position: absolute; color: #9CD4FF; top: 440px; left: 1300px; width: 300px;">Details</label>
  
    <div style="position:absolute; top: 678px; left: 1414px; height: 124px; width: 319px; z-index: 98;">
      <a class="btnSignIn" href="#">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <button ID="btn_save" 
          style="font-size:30px; background-color: transparent; border-color: transparent; color: #9CD4FF"
          OnClick="btn_save_Click">Save</button>
      </a>
    </div>
    <div
      style="position: absolute; background:#222127; top: 651px; left: 1392px; width: 214px; z-index: 100; height: 27px;">
    </div>
  
  </form>
</body>
</html>