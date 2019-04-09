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
color:yellow;
 background-color: #765af1; 
}

body,html {
   background-image: url("https://images.pexels.com/photos/509922/pexels-photo-509922.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260");
   background-repeat: none;
    background-position: center;
      height: 100%;
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
   #btn{
   border-radius:5px;
 color:#2d6d9c;
 background-color: #83de3b;
 padding:5px 5px 5px 5px;
 }
 #btn:hover{
   border-radius:5px;
 color:#13060f;
 background-color: #deaa3b;
 padding:5px 5px 5px 5px;
 }
</style>
</head>
<body>
<center><div >
<form action="status.jsp" method="post" name="search" onsubmit="return checkfield()"><br><br>
UID : <input type="text" name="uid"><br><br>
<input type="submit" value="search" id="btn">
</form></div>
</center>
<br><br><br>
<center><a href="index.html">Home</a></center>
</body>
</html>
