<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ page import="java.util.*" %>
    <%@ page import="java.io.IOException" %>
     <%@ page import="java.sql.Connection" %>
      <%@ page import="java.sql.DriverManager" %>
       <%@ page import="java.sql.PreparedStatement" %>
       <%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MARKS</title>
</head>
<body>
<table>
   <tr>
        <th>SUB_CODE</th>
        <th>INTERNAL</th>
        <th>EXTERNAL</th>
        <th>GRADE</th>
        <th>POINT</th>
        <th>STATUS</th>
   </tr>
   <%!double sgpa=0;
   %>
<%
String url="jdbc:mysql://localhost:3306/srms";
String usrname="root";
String pwd="loseyourself";
String query="select* from result where usn=? and sem=?";
String querys="select* from student where usn=?";
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection(url,usrname,pwd);
  PreparedStatement st=con.prepareStatement(query);//result table
  PreparedStatement pst=con.prepareStatement(querys);//student table
  String usn=request.getParameter("usn");
  int sem=Integer.parseInt(request.getParameter("sem"));
  st.setString(1,usn);//result table
  st.setInt(2,sem);//result table
  pst.setString(1,usn);//student table
  ResultSet rs=st.executeQuery();//result
  ResultSet rse=pst.executeQuery();//student
  rse.next();
  if(sem==2)
  {   int sum0=0;
	  int sum4=0;
	  int sum2=0;
	  while(rs.next())
	  {   String scr=rs.getString(2);
		  if(scr.equals("15CIV28"))
		  {
			 sum0=sum0+(0*rs.getInt(7));
		  }
		  else if(scr.equals("15CHEL27")||scr.equals("15CPL26"))
		  {
			  sum2=sum2+(2*rs.getInt(7));
		  }
		  else
		  {
		  sum4=sum4+(4*(rs.getInt(7)));
		  }
	  }
	 sgpa=(sum0+sum4+sum2)/24.0;
	 rs.beforeFirst();
  } 
  else
  {
  int sum2=0;
  int sum4=0;
  while(rs.next())
  { String scr=rs.getString(2);
  if(scr.equals("15CPL26")||scr.equals("15CSL37")||scr.equals("15CSL38")||scr.equals("15CSL47")||scr.equals("15CSL48")||scr.equals("15EEL37")||scr.equals("15EEL38")||scr.equals("15EEL47")||scr.equals("15EEL48")||scr.equals("15ECL37")||scr.equals("15ECL38")||scr.equals("15ECL47")||scr.equals("15ECL48")||scr.equals("15EIL37")||scr.equals("15EIL38")||scr.equals("15EIL47")||scr.equals("15EIL48")||scr.equals("15MEA306")||scr.equals("15MEA307")||scr.equals("15MEA308")||scr.equals("15MEB406")||scr.equals("15MEB407")||scr.equals("15MEB408")||scr.equals("15CVL37")||scr.equals("15CVL47")||scr.equals("15CVL38")||scr.equals("15CVL48"))
  {
  sum2=sum2+(2*rs.getInt(7));
  }
  else
  {
	  sum4=sum4+(4*(rs.getInt(7)));
  }
  }
  sgpa=(sum2+sum4)/28.0;
  }
  rs.beforeFirst();
  %>
USN:<%=rse.getString(1) %>
<br>
<br>
NAME:<%=rse.getString(2)+" "+rse.getString(3) %>
 <br>
 <br>
COLLEGE:<%=rse.getString(4) %>
<br>
<br>
COURSE:<%=rse.getString(5) %>
<br>
<br>
SECTION:<%=rse.getString(6) %>
<br>
<br>
CONTACT:<%=rse.getString(7) %><br>
<br>
<br>
SGPA:<%out.println(sgpa); %>
<br>
<br>

  <% while(rs.next())
  {
	  
	  %>
<tr><td><%=rs.getString(2)%></td>
<td><%=rs.getInt(4)%></td>
<td><%=rs.getInt(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getInt(7)%></td>
<td><%=rs.getString(8)%></td></tr>
<%} %>
 
  </table>
 </body>
</html>