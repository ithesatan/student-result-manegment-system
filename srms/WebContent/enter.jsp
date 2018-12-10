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
<title>enter student</title>
</head>
<body>
Success,Student Inserted
<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("admlogin.jsp");
}
String url="jdbc:mysql://localhost:3306/srms";
String usrname="root";
String pwd="loseyourself";
String query="insert into student values(?,?,?,?,?,?,?)";
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection(url,usrname,pwd);
	String usn=request.getParameter("usn");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String college=request.getParameter("college");
    String course_id=request.getParameter("course_id");
    String section=request.getParameter("section");
    String contact=request.getParameter("contact");
    PreparedStatement st=con.prepareStatement(query);
        st.setString(1,usn.toUpperCase());
		st.setString(2,fname);
		st.setString(3,lname);
		st.setString(4,college);
		st.setString(5,course_id.toLowerCase());
		st.setString(6,section);
		st.setString(7,contact);
		int count =st.executeUpdate();
		session.setAttribute("usn1",usn);
		session.setAttribute("course_id1",course_id);
		st.close();
		con.close();
		%>
		<a href="http://localhost:8080/srms/enter1.html">CLICK HERE</a>to enter marks
		
		<form action="logout" method="get">
		<input type="submit" value="logout">
		</form>
</body>
</html>