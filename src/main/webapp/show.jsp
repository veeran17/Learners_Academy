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
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Academy","root","adminroot");
	String sel="insert into inserting values(?,?,?);";
	PreparedStatement pst=con.prepareStatement(sel);
	pst.setString(1, request.getParameter("Subjects").toString());
	pst.setString(2, request.getParameter("Class").toString());
	pst.setString(3, request.getParameter("Teacher").toString());
	int RS=pst.executeUpdate();
	if (RS>0)
	    out.println("Submitted");
	else 
		out.println("Not Submitted");
%>

</body>
</html>