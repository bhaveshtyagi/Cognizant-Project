<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
<script type="text/javascript">
	function checkfield() {
		
		if (document.search.uid.value == "") {
			alert("Enter UID");
			var field=document.search.uid;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.search.uid.focus();
			return false;
		}
	}
	</script>
	<style>
	h1{
color:black;
font-size: 55px;
font-family:cursive;
padding-top: 69px;

}

body,html {
   background-image: url("https://images.pexels.com/photos/509922/pexels-photo-509922.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260");
   background-repeat: none;
    background-position: center;
      height: 90%;
  margin: -20 px;
  background-repeat: no-repeat;
  background-size: cover;

}

a{
color:red;
 background-color: white; 
}
 body{
 background-color: #5bc0de; 
  }
  a{
color:red;
 background-color: white; 
}

  #form{
  padding-left:25%;
  padding-right:25%;

  width:50%;
 height:100%;
   font-size: 25px;
  }
  
   #btn{
 border-radius:8px;
 font-size: 18px;
 color:#000000;
margin-left:5px;
 padding:5px 5px 5px 5px ;
 }
 
 #round{
 border-radius:20px;
     background: transparent;
      border-bottom: 2px solid black;
      margin-right:20px;
 }
 #btn:hover{
   border-radius:8px;
 color:#13060f;
  font-size: 18px;
 background-color: #deaa3b;
 padding:5px 5px 5px 5px;
 }
</style>
</head>
<body>
<center><div >
<center><h1>Login</h1></center>
<form action="status.jsp" method="post" name="search" onsubmit="return checkfield()" id="form"><br><br>
<b>UID : </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="uid" id = "round"><br><br>

<b>Password : </b>
<input type="password" name="pass" id = "round"><br><br>
<input type="submit" value="Login" id="btn">
</form></div>
</center>
<br><br><br>
<center><a href="index.html"><img src ="https://raw.githubusercontent.com/bhaveshtyagi/Cognizant-Project/master/Home_Project.jpeg"/></a></center>
</body>
</html>
