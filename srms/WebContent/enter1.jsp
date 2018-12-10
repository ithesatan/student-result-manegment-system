<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="java.util.*" %>
    <%@ page import="java.io.IOException" %>
     <%@ page import="java.sql.Connection" %>
      <%@ page import="java.sql.DriverManager" %>
       <%@ page import="java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>enter marks</title>
</head>
<body>
Success,Marks Inserted
<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("admlogin.jsp");
}
String url="jdbc:mysql://localhost:3306/srms";
String usrname="root";
String pwd="loseyourself";
String query="insert into marks values(?,?,?,?,?,?,?,?,?)";
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection(url,usrname,pwd);
	String usn=(String)session.getAttribute("usn1");
	String course_id=(String)session.getAttribute("course_id1");
	int sem=Integer.parseInt(request.getParameter("sem"));
	
	
	
    String sub_code1=request.getParameter("sub_code1");
    String sub_code2=request.getParameter("sub_code2");
    String sub_code3=request.getParameter("sub_code3");
    String sub_code4=request.getParameter("sub_code4");
    String sub_code5=request.getParameter("sub_code5");
    String sub_code6=request.getParameter("sub_code6");
    String sub_code7=request.getParameter("sub_code7");
    String sub_code8=request.getParameter("sub_code8");
    
    
    int internal1=Integer.parseInt(request.getParameter("internal1"));
    int internal2=Integer.parseInt(request.getParameter("internal2"));
    int internal3=Integer.parseInt(request.getParameter("internal3"));
    int internal4=Integer.parseInt(request.getParameter("internal4"));
    int internal5=Integer.parseInt(request.getParameter("internal5"));
    int internal6=Integer.parseInt(request.getParameter("internal6"));
    int internal7=Integer.parseInt(request.getParameter("internal7"));
    int internal8=Integer.parseInt(request.getParameter("internal8"));
    
    
    int external1=Integer.parseInt(request.getParameter("external1"));
    int external2=Integer.parseInt(request.getParameter("external2"));
    int external3=Integer.parseInt(request.getParameter("external3"));
    int external4=Integer.parseInt(request.getParameter("external4"));
    int external5=Integer.parseInt(request.getParameter("external5"));
    int external6=Integer.parseInt(request.getParameter("external6"));
    int external7=Integer.parseInt(request.getParameter("external7"));
    int external8=Integer.parseInt(request.getParameter("external8"));
    
    
    String grade1=request.getParameter("grade1");
    String grade2=request.getParameter("grade2");
    String grade3=request.getParameter("grade3");
    String grade4=request.getParameter("grade4");
    String grade5=request.getParameter("grade5");
    String grade6=request.getParameter("grade6");
    String grade7=request.getParameter("grade7");
    String grade8=request.getParameter("grade8");
    
    
    int point1=Integer.parseInt(request.getParameter("point1"));
    int point2=Integer.parseInt(request.getParameter("point2"));
    int point3=Integer.parseInt(request.getParameter("point3"));
    int point4=Integer.parseInt(request.getParameter("point4"));
    int point5=Integer.parseInt(request.getParameter("point5"));
    int point6=Integer.parseInt(request.getParameter("point6"));
    int point7=Integer.parseInt(request.getParameter("point7"));
    int point8=Integer.parseInt(request.getParameter("point8"));
    
    
    String status1=request.getParameter("status1");
    String status2=request.getParameter("status2");
    String status3=request.getParameter("status3");
    String status4=request.getParameter("status4");
    String status5=request.getParameter("status5");
    String status6=request.getParameter("status6");
    String status7=request.getParameter("status7");
    String status8=request.getParameter("status8");
    
    
    String query1="insert into result values(?,?,?,?,?,?,?,?,?)";
    String query2="insert into result values(?,?,?,?,?,?,?,?,?)";
    String query3="insert into result values(?,?,?,?,?,?,?,?,?)";
    String query4="insert into result values(?,?,?,?,?,?,?,?,?)";
    String query5="insert into result values(?,?,?,?,?,?,?,?,?)";
    String query6="insert into result values(?,?,?,?,?,?,?,?,?)";
    String query7="insert into result values(?,?,?,?,?,?,?,?,?)";
    String query8="insert into result values(?,?,?,?,?,?,?,?,?)";
   PreparedStatement st1=con.prepareStatement(query1);
   PreparedStatement st2=con.prepareStatement(query2);
   PreparedStatement st3=con.prepareStatement(query3);
   PreparedStatement st4=con.prepareStatement(query4);
   PreparedStatement st5=con.prepareStatement(query5);
   PreparedStatement st6=con.prepareStatement(query6);
   PreparedStatement st7=con.prepareStatement(query7);
   PreparedStatement st8=con.prepareStatement(query8);
   st1.setString(1,usn.toUpperCase());
   st1.setString(2,sub_code1.toUpperCase());
   st1.setString(3,course_id.toLowerCase());
   st1.setInt(4,internal1);
   st1.setInt(5,external1);
   st1.setString(6,grade1.toUpperCase());
   st1.setInt(7,point1);
   st1.setString(8,status1.toUpperCase());
   st1.setInt(9,sem);
   
   st2.setString(1,usn.toUpperCase());
   st2.setString(2,sub_code2.toUpperCase());
   st2.setString(3,course_id.toLowerCase());
   st2.setInt(4,internal2);
   st2.setInt(5,external2);
   st2.setString(6,grade2.toUpperCase());
   st2.setInt(7,point2);
   st2.setString(8,status2.toUpperCase());
   st2.setInt(9,sem);
   
   st3.setString(1,usn.toUpperCase());
   st3.setString(2,sub_code3.toUpperCase());
   st3.setString(3,course_id.toLowerCase());
   st3.setInt(4,internal3);
   st3.setInt(5,external3);
   st3.setString(6,grade3.toUpperCase());
   st3.setInt(7,point3);
   st3.setString(8,status3.toUpperCase());
   st3.setInt(9,sem);
   
   st4.setString(1,usn.toUpperCase());
   st4.setString(2,sub_code4.toUpperCase());
   st4.setString(3,course_id.toLowerCase());
   st4.setInt(4,internal4);
   st4.setInt(5,external4);
   st4.setString(6,grade4.toUpperCase());
   st4.setInt(7,point4);
   st4.setString(8,status4.toUpperCase());
   st4.setInt(9,sem);
   
   st5.setString(1,usn.toUpperCase());
   st5.setString(2,sub_code5.toUpperCase());
   st5.setString(3,course_id.toLowerCase());
   st5.setInt(4,internal5);
   st5.setInt(5,external5);
   st5.setString(6,grade5.toUpperCase());
   st5.setInt(7,point5);
   st5.setString(8,status5.toUpperCase());
   st5.setInt(9,sem);
   
   st6.setString(1,usn.toUpperCase());
   st6.setString(2,sub_code6.toUpperCase());
   st6.setString(3,course_id.toLowerCase());
   st6.setInt(4,internal6);
   st6.setInt(5,external6);
   st6.setString(6,grade6.toUpperCase());
   st6.setInt(7,point6);
   st6.setString(8,status6.toUpperCase());
   st6.setInt(9,sem);
   
   st7.setString(1,usn.toUpperCase());
   st7.setString(2,sub_code7.toUpperCase());
   st7.setString(3,course_id.toLowerCase());
   st7.setInt(4,internal7);
   st7.setInt(5,external7);
   st7.setString(6,grade7.toUpperCase());
   st7.setInt(7,point7);
   st7.setString(8,status7.toUpperCase());
   st7.setInt(9,sem);
   
   st8.setString(1,usn.toUpperCase());
   st8.setString(2,sub_code8.toUpperCase());
   st8.setString(3,course_id.toLowerCase());
   st8.setInt(4,internal8);
   st8.setInt(5,external8);
   st8.setString(6,grade8.toUpperCase());
   st8.setInt(7,point8);
   st8.setString(8,status8.toUpperCase());
   st8.setInt(9,sem);
   
   
   int count1=st1.executeUpdate();
   int count2=st2.executeUpdate();
   int count3=st3.executeUpdate();
   int count4=st4.executeUpdate();
   int count5=st5.executeUpdate();
   int count6=st6.executeUpdate();
   int count7=st7.executeUpdate();
   int count8=st8.executeUpdate();
   st1.close();
   st2.close();
   st3.close();
   st4.close();
   st5.close();
   st6.close();
   st7.close();
   st8.close();
  con.close();%>
  <form action="logout" method="get">
		<input type="submit" value="logout">
		</form>

</body>
</html>