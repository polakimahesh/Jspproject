<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 	
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","Alexander@123");
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("select * from profile where rollno=101");
	rs.next();
	%>
  Rollno:  <%=rs.getInt(1) %> <br>
  Name  :  <%=rs.getString(2) %> <br>
  Marks :  <%=rs.getInt(3) %>

</body>
</html>