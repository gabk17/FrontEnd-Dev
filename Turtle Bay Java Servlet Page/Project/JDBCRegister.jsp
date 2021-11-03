<%@ page import="java.sql.*" %>

<%

String sql = "";
String userId= request.getParameter("userId");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String uname = request.getParameter("uname");
String email = request.getParameter("email");
String password = request.getParameter("password");
String priority = request.getParameter("priority");

PreparedStatement ps;
String type= request.getParameter("type");
String url = "jdbc:mysql://127.0.0.1:3306/project";
String username = "root";
String pass = "toor";
Connection con;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection(url,username,pass);	

if("delete".equals(type))
{
	
	try
		{
			sql = "delete from  tbl_user where user_id = ?";			
			ps = con.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(userId));
			ps.execute();
			
		}catch(Exception e)
		{
			System.out.println(""+e);
		}
}

if("insert".equals(type))
{
 
   sql = "insert into tbl_user (fname, lname, uname, email,pass,priority)" +
					" values(?,?,?,?,?,?)";
			
			ps = con.prepareStatement(sql);
			ps.setString(1,fname);
	  ps.setString(2,lname);
      ps.setString(3,uname);
      ps.setString(4,email);
      ps.setString(5,password);
      ps.setString(6,priority);
	  ps.execute();
	
}

if("update".equals(type))
{
	try
	{   
		   sql = "update tbl_user set fname = ?,lname = ?,uname = ?,email = ?,pass = ?,priority = ? where user_id = ? ";
			ps = con.prepareStatement(sql);
			ps.setString(1,fname);
			ps.setString(2,lname);
            ps.setString(3,uname);
            ps.setString(4,email);
            ps.setString(5,password);
            ps.setString(6,priority);
			ps.setInt(7,Integer.parseInt(userId));
			ps.execute();
	}catch(Exception e)
		{
			System.out.println(""+e);
		}
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
String urlRedirect = "MainPage.jsp";
response.sendRedirect(urlRedirect);
%>