<%@page import="java.sql.Connection" %>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<%! String first_name,last_name,email_id,login_password,username,mobile_number ;%> 
<% first_name = request.getParameter("first_name"); 

 last_name = request.getParameter("last_name"); 

 email_id = request.getParameter("email_id"); 

 login_password = request.getParameter("password"); 

 username = request.getParameter("username"); 

 mobile_number = request.getParameter("mobile_number");
 
 Class.forName("com.mysql.jdbc.Driver");
 
 String dburl = "jdbc:mysql://localhost/parking";
 
 String user= "root";
 
 String password="";
 
 Connection conn = DriverManager.getConnection(dburl,user,password);
 
 Statement st = conn.createStatement();
 
 String sql = "INSERT INTO users(first_name,last_name,email_id,mobile_number,username,password) VALUES('"+first_name+"','"+last_name+"','"+email_id+"','"+mobile_number+"','"+username+"','"+login_password+"')";
 
 st.execute(sql);

 
 %>


<p><%= first_name %></p>
<p><%= last_name %></p>
<p><%= email_id %></p>
<p><%= login_password %></p>
<p><%= username %></p>
<p><%= mobile_number %></p>


</body>
</html>