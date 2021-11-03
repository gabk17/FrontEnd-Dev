<%@ page import="java.sql.*" %>
<%
String html = "";
String url = "jdbc:mysql://127.0.0.1:3306/project";
String username = "root";
String password = "toor";
String search = request.getParameter("search") != null ? request.getParameter("search") : "";


String user ="";
if(request.getSession().getAttribute("uname") != null )
{
user = (String) request.getSession().getAttribute("uname");
}else
{
response.sendRedirect("logout.jsp");
}

Connection con;
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection(url,username,password);	
String sql = "select * from  tbl_user where priority = 'Regular User' ";

if(!search.equals(""))
{
sql += " and uname = '" + search + "' ";
}
PreparedStatement ps = con.prepareStatement(sql);

ResultSet rs=ps.executeQuery();
html+="<table border='1' style='width:100%; color:white; width: 1698px; margin-top: 4px;'><tr><td><input type='button'/></td><td>ID</td><td>First Name</td><td>Last Name</td><td>UserName</td><td>Email</td><td>Priority</td></tr>";
while(rs.next())
 { 
			
			int id = rs.getInt(1);
			String fname = rs.getString(2);
			String lname = rs.getString(3);
			String uname = rs.getString(4);
			String email = rs.getString(5);
			String priority = rs.getString(6);

			
			   html+="<tr><td><input type='button' value='delete' onClick='deleteRow("+id+")' /></td><td>"+id+"</td><td>"+fname+"</td><td>"+lname+"</td><td>"+uname+"</td><td>"+email+"</td><td>"+priority+"</td></tr>";
			
}
		html+="</table>";
		
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


}catch(Exception e)
{
System.out.println(""+e);
}

%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>List of Users</title>

  <link rel="stylesheet" href="Navbar.css"/>
    <link rel="stylesheet" href="Photos.css"/> 
    <link rel="stylesheet" href="Title.css"/> 
    <link rel="stylesheet" href="Footer.css"/> 
    <link rel="stylesheet" href="Slider.css"/> 
    <link rel="stylesheet" href="/Css/css/all.min.css">

<script>
function deleteRow(id)
{
window.location.href = "JDBCRegister.jsp?userId="+id+"&type=delete";
}

function callInsert()
{
window.location.href = "Register.jsp?type=insert";
}

function updateRow(id)
{
window.location.href = "Register.jsp?type=update&userId="+id;
}

function search()
{
var s = document.getElementById("search").value;
window.location.href = "ListUser.jsp?search="+s;
}

</script>

</head>
 <body style="background-image: url('WhiteWood.jpg');">
  <form id="form1">
    <div style="background:#0061ab; width:2000px; position:fixed; top: -12px; left: -1px; height: 69px; z-index:104;"></div>
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
    <label style="position: fixed; color: white; z-index: 200; font-size: 30px;">Welcome! <%=user%></label>
  </div>

        <input type="button" ID="btn_Add" style="position: absolute; top: 91px; left: 650px; width:200px; height:40px; font-size: 20px; cursor: pointer;" onclick='callInsert()' value='New User'/>

        <input style="position: absolute; top: 91px; left: 870px; width:210px; height:40px;" type="text" placeholder="Enter Name to search" name="search" id="search"/>

        <input style="position: absolute; top: 91px; left: 1100px; width:150px; height:40px; font-size: 20px; cursor: pointer;" type="button" value="Search" onclick="search()"/>


    <div style="background:#222127; margin:150px 37px 50px 100px; border:3.4px solid #9CD4FF; width: 1714px; padding: 5px;">
         <%=html%>
    </div>
    
    </form>
</body>
</html>