<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Academy","root","adminroot");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from students");  
while(rs.next())  
out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+"<br>"); 
%>

</body>
</html>