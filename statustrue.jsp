	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>True</title>
<style>
h1{
color:black;
font-size: 69px;

}
a{
color:red;
 background-color: white; 
}
body,html {
   background-image: url("https://images.pexels.com/photos/50987/money-card-business-credit-card-50987.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260");
   background-repeat: none;
    background-position: center;
      height: 90%;
  margin: -20 px;
  background-repeat: no-repeat;
  background-size: cover;

}

</style>
</head>
<body>
<br><br><center>
<h1 >Details Verified Sucessfully!</h1>
</center>
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:xe" user="system"
		password="root" />

	<sql:update dataSource="${db}" var="rs">
update CCS_FORM set STATUS='Accepted' where UIDs='<%= request.getParameter("id") %>'

</sql:update>

<br><br><br>
<center><a href="index.html"><img src ="https://raw.githubusercontent.com/bhaveshtyagi/Cognizant-Project/master/Home_Project.jpeg"/></a></center>

</body>
</html>
