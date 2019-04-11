<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fill Form</title>
<script type="text/javascript">


	function checkfield() {
		
		if (document.forminput.fname.value == "") {
			alert("Enter your First Name");
			var field=document.forminput.fname;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.forminput.fname.focus();
			return false;
		}
		if (document.forminput.lname.value == "") {
			alert("Enter your Last Name");
			var field=document.forminput.lname;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.forminput.lname.focus();
			return false;
		}
		if (document.forminput.age.value == "") {
			alert("Enter your Age");
			var field=document.forminput.age;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.forminput.age.focus();
			return false;
		}
		if (document.forminput.gender.value == "none") {
			alert("Select Your Gender");
			var field=document.forminput.gender;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			return false;
		}
		if (document.forminput.contact.value == "") {
			alert("Enter your Contact");
			var field=document.forminput.contact;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.forminput.contact.focus();
			return false;
		}
		if (document.forminput.uid.value == "") {
			alert("Enter your UID");
			var field=document.forminput.uid;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.forminput.uid.focus();
			return false;
		}
		if (document.forminput.pass.value == "") {
			alert("Enter your Password");
			var field=document.forminput.pass;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.forminput.pass.focus();
			return false;
		}
	}
</script>
<style>
h1{
color:white;
 background-color: #0000ff; 
   width:50%;
height:100%;
font-size: 40pt;
}
a{
color:red;
 background-color: white; 
}
body,html {
   background-image: url("https://images.pexels.com/photos/317356/pexels-photo-317356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260");
   background-repeat: none;
    background-position: center;
      height: 90%;
  margin: -20 px;
  background-repeat: no-repeat;
  background-size: cover;

}
  
  #form{
  padding-left:25%;
  padding-right:25%;
  width:50%;
 height:100%;
   font-size: 25px;
  }
  #form input{
    background: transparent;
      border-bottom: 2px solid black;
  }
  
  
 #btn{
 border-radius:8px;
 font-size: 18px;
 color:#000000;
 background-color: #660033;
 margin-right:39px;
 padding:5px 5px 5px 5px ;
 }
  #btn:hover{
   border-radius:8px;
 color:#13060f;
  font-size: 18px;
 background-color: #deaa3b;
 padding:5px 5px 5px 5px;
 }
 #size{
   font-size: large;
 }
 #round{
 border-radius:20px;
 }
</style>
</head>
<body >
<div id="form"><center>
<h1>Fill Details</h1>
<form action="FormServlet" method="post" name="forminput" onsubmit="return checkfield()"><br><br>
<b>First Name :</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="fname" id="round"><br><br>
<b>Last Name : </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="lname" id="round"><br><br>
<b>Age : </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="age" id="round"><br><br>

<b>Gender : </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;

<select  name="gender" id="round"  style="width: 180px;">
<option value="none">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
<option value="other">Other</option>
</select><br><br>

<b>Contact Number : </b><input type="text" name="contact" id="round"><br><br>
<b>UID Number : </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="uid" id="round"><br><br>
<b>Password : </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pass" id="round"><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="Submit"id="btn">
<br>
</form></center>

<br><br>
<center><a href="index.html"><img src ="https://raw.githubusercontent.com/bhaveshtyagi/Cognizant-Project/master/Home_Project.jpeg"/></a></center>
</div>
</body>
</html>
