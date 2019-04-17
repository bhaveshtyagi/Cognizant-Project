<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User</title>
<link href="css\main.css" type="text/css" rel="stylesheet">

<style>
.container {
  width: 100%;
}

.progressbar {
  counter-reset: step;
}
.progressbar li {
  list-style: none;
  display: inline-block;
  width: 30.33%;
  position: relative;
  text-align: center;
  cursor: pointer;
}
.progressbar li:before {
  content: counter(step);
  counter-increment: step;
  width: 30px;
  height: 30px;
  line-height : 30px;
  border: 1px solid #ddd;
  border-radius: 100%;
  display: block;
  text-align: center;
  margin: 0 auto 10px auto;
  background-color: #fff;
}
.progressbar li:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 1px;
  background-color: #ddd;
  top: 15px;
  left: -50%;
  z-index : -1;
}
.progressbar li:first-child:after {
  content: none;
}
.progressbar li.not {
    color: red;
}
.progressbar li.active {
  color: green;
}
.progressbar li.active:before {
  border-color: green;
} 
.progressbar li.active + li:after {
  background-color: green;
}
h1{
color:yellow;
 background-color: #765af1; 
}
a{
color:blue;
 background-color: white; 
}
 body{
 background-color: #5bc0de; 
  }
  #head{
  color:green;
 background-color: white; 
  }
  #data{
  color:red;
 background-color: white; 
  }
</style>
</head>
<body>



<a href="index.html"><button id="button1" type="button">Logout</button></a>
<div class="fram">
<div class="LeftFrame BkColr">
<center>
<div>
<img src="images/user.png" height="150" width="150px">
</div></center>
<div><center>
<br><br>

</center>
</div>

</div>
<div class="LeftFrame">

<div>
<!-- Change in Page Start Here -->


<table  width="100%" >
		<tr id="head">
			
			<th>First Name</th>
			<th>Last Name</th>
			<th>Application Status</th>
			<th>Dispatch Status</th>
		</tr>
		
			<tr id="data">
				
				<td><center>chandan</center></td>
				<td><center>jha</center></td>
				<td><center>Approved</center></td>
				<td><center id="this">In Process</center></td>
				
			</tr>
		
	</table>
<!-- Change in Page End Here -->
 <div class="container">
      <ul class="progressbar">
        <li id="one" class="">In Process</li>
        <li id="two">Dispatched</li>
        <li id="three">Delivered</li>
      </ul>
    </div>

</div>
<script type="text/javascript">
var i = document.getElementById('this');
var y= i.innerHTML;
if(y=="unavailable"){
	var a = document.getElementById('one');
	a.classList.add("not");
}
else if(y=="In Process"){
	var a = document.getElementById('one');
	a.classList.add("active");
}
else if(y=="Dispatched"){
	var a = document.getElementById('one');
	a.classList.add("active");
	var b = document.getElementById('two');
	b.classList.add("active");
	
}
else if(y=="Delivered"){
	var a = document.getElementById('one');
	a.classList.add("active");
	var b = document.getElementById('two');
	b.classList.add("active");
	var c = document.getElementById('three');
	c.classList.add("active");
}

</script>
</body>
</html>