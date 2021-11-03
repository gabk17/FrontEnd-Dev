<%@ page import="java.sql.*" %>
<%
String type = request.getParameter("type");
String userId = "";
String fname = "";
String lname = "";
String uname = "";
String email = "";
String password = "";
String priority = "";


if("update".equals(type))
{
  userId = request.getParameter("userId");
 String url = "jdbc:mysql://127.0.0.1:3306/project";
String username = "root";
String pass = "toor";
  Connection con;
  try
  {

    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection(url,username,pass);	
    String sql = "select * from  tbl_user where user_id = ?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setInt(1,Integer.parseInt(userId));
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
	    fname = rs.getString(2);
	    lname = rs.getString(3);
      uname = rs.getString(4);
	    email = rs.getString(5);
      password = rs.getString(6);
      priority = rs.getString(7);
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
%>



<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
   <link rel="stylesheet" href="Navbar.css"/>
    <link rel="stylesheet" href="Photos.css"/> 
    <link rel="stylesheet" href="Footer.css"/> 
    <link rel="stylesheet" href="/Css/css/all.min.css"/>
    <link rel="stylesheet" href="ButtonStyle.css"/>
    <link rel='stylesheet' href="Loader.css">

    <script>
    function Validate() {
        var password = document.getElementById("pass").value;
        var confirmPassword = document.getElementById("conf_pass").value;
        if (password != confirmPassword || password == "" || confirmPassword == "") {
            alert("Passwords do not match.");
            return false;
        }

    }
    </script>

</head>
 <body style="background-image: url('WhiteWood.jpg');">
  <div style="background:#0061ab; width:2000px; position:fixed; top: -12px; left: -1px; height: 69px; z-index:104;"></div>
   <nav>
    <div class="wrapper">
      <div class="logo"><a href="#">TURTLE BEACH</a></div>
    </div>
  </nav>

 <div style="width: 1500px; float:left; height:840px; background:#222127; margin:100px 37px 50px 200px; border:3.4px solid #9CD4FF; "></div>

    <label style="text-align: center; color: white; font-size: 35px; position: absolute; border-top: 4px solid #9CD4FF; border-bottom: 4px solid #9CD4FF; top: 136px; left: 985px; height: 63px; width: 500px; margin-top: 0px;">Welcome To The Team!</label>
        
   <form id="form1" action="JDBCRegister.jsp" method="POST">

    <input type="hidden" name="type" value="<%=type%>"/> 
    <input type="hidden" name="userId" value="<%=type%>"/> 

    <input required ID="fname" style="position: absolute; top: 255px; left: 1010px; width: 453px; height: 35px;" name="fname" value="<%=fname%>"/>
    <input required ID="lname" style="position: absolute; top: 355px; left: 1010px; width: 453px; height: 35px;" name="lname" value="<%=lname%>"/>
    <input required ID="uname" style="position: absolute; top: 455px; left: 1010px; width: 453px; height: 35px;" name="uname" value="<%=uname%>"/>
    <input required ID="email" style="position: absolute; top: 555px; left: 1010px; width: 453px; height: 35px;" type="Email" name="email" value="<%=email%>"/> 
    <input required ID="pass" style="position: absolute; top: 655px; left: 1010px; width: 453px; height: 35px;" type="Password" name="password" value="<%=password%>"/> 
    <input required ID="conf_pass" style="position: absolute; top: 755px; left: 1010px; width: 200px; height: 35px;" type="Password" value="<%=password%>"/>
    <select ID="DropDownList1"
      style="position: absolute; top: 755px; left: 1265px; width: 200px; height: 35px;" name="priority" value="<%=priority%>"> 
      <option value="Regular User">Regular User</option>
      <option value="Admin">Admin</option>
    </select>


    <label style="position: absolute; color: #9CD4FF; top: 225px; left: 1010px; height: 18px; width: 300px;">First Name</label>
    <label style="position: absolute; color: #9CD4FF; top: 325px; left: 1010px; width: 300px;">Last Name</label>
    <label style="position: absolute; color: #9CD4FF; top: 425px; left: 1010px; width: 300px;">User Name</label>
    <label style="position: absolute; color: #9CD4FF; top: 525px; left: 1010px; width: 300px;">Email</label>
    <label style="position: absolute; color: #9CD4FF; top: 625px; left: 1010px; width: 300px;">Password</label>
    <label style="position: absolute; color: #9CD4FF; top: 725px; left: 1010px; width: 300px;">Confirm Password</label>
    <label style="position: absolute; color: #9CD4FF; top: 725px; left: 1265px; width: 300px;">Priority</label>



     <div style="position:absolute; top: 816px; left: 1149px; height: 124px; width: 319px; z-index: 98;">
                <a class="btnSignIn" href="#">
                 <span></span>
                 <span></span>
                 <span></span>
                 <span></span>
                    <button ID="btn_save" style="font-size:30px; background-color: transparent; border-color: transparent; color: #9CD4FF" 
                    onclick="Validate()">Save</button>
                 </a>
            </div>
    <div style="position: absolute; background:#222127; top: 802px; left: 1132px; width: 214px; z-index: 100; height: 14px;"></div>

    <label style="text-align: center; color: white; font-size: 35px; position: absolute; top: 258px; left: 388px; height: 63px; margin-top: 0px; border-top: 4px solid #9CD4FF; letter-spacing: 3px; line-height: 1.6">
        We are glad to have you <br /> Let's get you <br />Set up </label>
    <label style="text-align: center; color: white; font-size: 20px; position: absolute; top: 513px; left: 412px; height: 115px; margin-top: 0px; border-bottom: 4px solid #9CD4FF; letter-spacing: 3px; line-height: 1.6;">
        It should take a couple of minutes <br /> to create your account
    </label>
    

<svg width="100" height="100" viewBox="0 0 100 100">
  <polyline class="line-cornered stroke-still" points="0,0 100,0 100,100" stroke-width="10" fill="none"></polyline>
  <polyline class="line-cornered stroke-still" points="0,0 0,100 100,100" stroke-width="10" fill="none"></polyline>
  <polyline class="line-cornered stroke-animation" points="0,0 100,0 100,100" stroke-width="10" fill="none"></polyline>
  <polyline class="line-cornered stroke-animation" points="0,0 0,100 100,100" stroke-width="10" fill="none"></polyline>
</svg>
</body>
</html>