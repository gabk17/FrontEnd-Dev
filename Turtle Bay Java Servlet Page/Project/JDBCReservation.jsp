<%@ page import="java.sql.*" %>

<%

String sql = "";
String resId= request.getParameter("resId");
String name = request.getParameter("name");
String phone = request.getParameter("phone");
String arrival = request.getParameter("arrival");
String departure = request.getParameter("departure");
String resType = request.getParameter("resType");
String roomNum = request.getParameter("roomNum");
String peopleNum = request.getParameter("peopleNum");
String details = request.getParameter("details");

PreparedStatement ps;
String type= request.getParameter("type");
String url = "jdbc:mysql://127.0.0.1:3306/project";
String username = "root";
String password = "toor";
Connection con;
try 
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection(url,username,password);	


if("delete".equals(type))
{
	
	try
		{
		
			sql = "delete from  tbl_reservations where res_id = ?";			
			ps = con.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(resId));
			ps.execute();
			
		}catch(Exception e)
		{
			System.out.println(""+e);
		}
}

if("insert".equals(type))
{
	try
	{
		   
		   sql = "insert into tbl_reservations(res_name,res_phone, res_arrival, res_departure, res_type, res_room, res_people, res_details)" +
					" values(?,?,?,?,?,?,?,?)";
			
			ps = con.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2,phone);
      ps.setString(3,arrival);
      ps.setString(4,departure);
      ps.setString(5,resType);
      ps.setString(6,roomNum);
      ps.setString(7,peopleNum);
      ps.setString(8,details);
			ps.execute();
	}catch(Exception e)
		{
			System.out.println(""+e);
		}
}

if("update".equals(type))
{
	try
	{	   
		   sql = "update tbl_reservations set res_name = ?,res_phone = ?,res_arrival = ?,res_departure = ? ,res_type = ? ,res_room = ? ,res_people = ? ,res_details = ?  where res_id = ?";
	
			ps = con.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2,phone);
            ps.setString(3,arrival);
            ps.setString(4,departure);
            ps.setString(5,resType);
            ps.setString(6,roomNum);
            ps.setString(7,peopleNum);
            ps.setString(8,details);
			ps.setInt(9,Integer.parseInt(resId));
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
}catch(Exception e)
{
	System.out.println(""+e);
}
String urlRedirect = "MainPage.jsp";
response.sendRedirect(urlRedirect);
%>