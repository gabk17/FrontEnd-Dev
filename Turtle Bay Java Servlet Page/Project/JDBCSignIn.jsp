<%@ page import="java.sql.*" %>

<%
String url = "jdbc:mysql://127.0.0.1:3306/project";
String username = "root";
String pass = "toor";
Connection con;
String uname = request.getParameter("uname");
String password = request.getParameter("password");
String priority = request.getParameter("priority");


Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection(url,username,pass);	
String sql = "select count(*) from  tbl_user where uname= ? AND pass= ? AND priority = ? ";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,uname);
ps.setString(2,password);
ps.setString(3, priority);

int count = 0;
ResultSet rs=ps.executeQuery();

while(rs.next())
{
count = rs.getInt(1);
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

if(count == 1 && priority.equals("Admin"))
{
request.getSession().setAttribute("uname",uname);
response.sendRedirect("MainPage.jsp");
}
else if(count == 1 && priority.equals("Regular User"))
{
request.getSession().setAttribute("uname",uname);
response.sendRedirect("MainPageUser.jsp");
}else
{
response.sendRedirect("SignInPage.jsp?msg=Failed");
}
	
%>