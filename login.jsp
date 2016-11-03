
<%@page import="java.sql.Connection" %>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login check</title>
</head>
<body>
	<%! String username,login_password; %>
	<%	username=request.getParameter("username");
		login_password=request.getParameter("password");
		
		//connecting to database to check 
		
	Class.forName("com.mysql.jdbc.Driver");
 
 String dburl = "jdbc:mysql://localhost/parking";
 
 String user= "root";
 
 String password="";
 
 Connection conn = DriverManager.getConnection(dburl,user,password);
 
 Statement st = conn.createStatement();
 
 String sql = "SELECT * FROM users";
 
 ResultSet result = st.executeQuery(sql);
 
 System.out.println(username);
 System.out.println(login_password);
 
 while(result.next()){
	 if(username.equals(result.getString("username")) && login_password.equals(result.getString("password"))){
		 System.out.println("matched");
		 RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		 rd.forward(request, response); 
	 }
	 else{
		 System.out.println("not found");
	 }
	 }
 
	%>
</body>
</html>