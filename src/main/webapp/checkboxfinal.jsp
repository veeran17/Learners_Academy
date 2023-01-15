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
String chooseSubjects="";
String classes=request.getParameter("class");
String Subjects[]=request.getParameterValues("Subjects");
for(int i=0;i<Subjects.length;i++){
	chooseSubjects+=Subjects[i]+" ";
}
       
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Academy","root","adminroot");
String sel="insert into checkboxclass values(?,?);";
PreparedStatement pst=con.prepareStatement(sel);
pst.setString(1, chooseSubjects);
pst.setString(2, classes);
int RS=pst.executeUpdate();
if (RS>0)
    out.println("Submitted");
else 
	out.println("Not Submitted");

%>

</body>
</html>