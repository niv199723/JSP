<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>
<body>
<script>
function mailValidation()
{
var x=document.getElementById("eid").value;
var pattern="^[A-Za-z0-9]+[@]{1}[a-z]+(.com|.co.in.|.in)$";
if(x==null||x==""){
	document.getElementById("errormail").style.color="red";
document.getElementById("errormail").innerHTML="plz enter email";
return false;
}
else if(!x.match(pattern)){
document.getElementById("errormail").innerHTML="write in correct format";
return false;
}
else{
document.getElementById("errormail").innerHTML="";
return true;
}
}
function pwdValidation()
{
	var Value=document.getElementById("pid").value;
	var pwdPattern="^[A-Za-z0-9@!#$&*]{8,}$";
	if(Value==null||Value==""){
		document.getElementById("errorpwd").style.color="red";
document.getElementById("errorpwd").innerHTML="plz enter password";
return false;
}
	else if(!Value.match(pwdPattern)){
		document.getElementById("errorpwd").innerHTML="password should contain atleast 8 characters"
return false;
}
	else{
document.getElementById("errorpwd").innerHTML="";
return true;
}
}
function confirmpwdValidation()
{
	var password=document.getElementById("pid").value;
	var confirmpwd=document.getElementById("pid1").value;
	if(confirmpwd==null||confirmpwd==""){
		document.getElementById("errorpwd1").style.color="red";
document.getElementById("errorpwd1").innerHTML="plz enter password";
return false;
}
	else if(!password.match(confirmpwd)){
	document.getElementById("errorpwd1").innerHTML="plz match the password";
return false;
}
else{
	document.getElementById("errorpwd1").innerHTML="";
return true;
}
}
function userValidation()
{
	var userValue=document.getElementById("txtname").value;
	var namePattern="^[A-Za-z]+$";
	if(userValue==null||userValue==""){
		document.getElementById("errorname").style.color="red";
document.getElementById("errorname").innerHTML="plz enter name";
return false;
}
	else if(!userValue.match(namePattern)){
		document.getElementById("errorname").innerHTML="name should be alphabets";
return false;
}
	else{
		document.getElementById("errorname").innerHTML="";
return true;
}
}
function numValidation()
{
var x=document.getElementById("num").value;
var pattern="^[6-9]{1}[0-9]{9}$";
if(x==0||x==""){
	document.getElementById("errorNum").style.color="red";
document.getElementById("errorNum").innerHTML="plz enter phno";
return false;
}
else if(!x.match(pattern)){
document.getElementById("errorNum").innerHTML="plz enter valid phno";
return false;
}
else{
document.getElementById("errorNum").innerHTML="";
return true;
}
}
function dropDownValidation()
	{
	var elem=document.getElementsByClassName("spec");
	var count=0;
	for(var i=0;i<elem.length;i++)
	{
		if(elem[i].selected)
			count++;
	}
	if(count==0)
	{
document.getElementById("errorDropDown").style.color="red";
document.getElementById("errorDropDown").innerHTML="select a Qualification";
		return false;
	}
	else{
		document.getElementById("errorDropDown").innerHTML="";
		return true;
	}	
}
function formValidation()
{
a=mailValidation();
b=userValidation();
c=pwdValidation();
d=confirmpwdValidation();
e=numValidation();
f=dropDownValidation();
if(a&&b&&c&&d&&e&&f)
return true;
else
return false;
}
</script>
<div class="container"> 
<div class="row" >
<div class="col-lg-12" style="background-color:black ;font-size:50px;color:white;"> DELOITTE DESIGNATION
<img src="../image/d3.jpg" align="right" height="100px" width="100px"></div>  
</div>   
<form class="form-horizontal" onsubmit="return formValidation()"> 
<div class="row">
<div class="col-lg-12">
<h3>NEW TRAINER</h3>
</div>
</div>
<div class="row"> 
<div class="col-lg-4"><label>Email Id</label></div>
<div class="col-lg-4">          
<input type="email" onchange="mailValidation()" id="eid" placeholder="Enter email">
</div>
<span id="errormail"></span>	 
</div>
<div class="row"> 
<div class="col-lg-4"><label>Name</label>
</div>
<div class="col-lg-4">          
<input id="txtname" onchange="userValidation()" type="text" placeholder="Enter name">
    </div>
<span id="errorname"></span>	
</div>

<div class="row"> 
<div class="col-lg-4"><label>password</label></div>
<div class="col-lg-4">          
<input type="password" onchange="pwdValidation()" id="pid" placeholder="Enter Password">
</div>
<span id="errorpwd"></span>	 
</div>
<div class="row"> 
<div class="col-lg-4"><label>confirm password</label></div>
<div class="col-lg-4">          
<input type="password" id="pid1" onchange="confirmpwdValidation()">
</div>
<span id="errorpwd1"></span>	 
</div>
<div class="row">
<div class="col-lg-4"><label>Phone Number</label></div>
<div class="col-lg-4">
<input type="text" id="num" onchange="numValidation()" placeholder="enter phone number"></div>
<span id="errorNum"></span>
</div>
<div class ="row">
<div class ="col-lg-4">
<label>Specialization</label>
</div>
<div class ="col-lg-4">
<select>
<option value ="opt">Choose Specialization</option>
<option class="spec" value="java">java specialist</option>
<option class="spec" value="python">python specialist</option>
</select></div>
<span id ="errorDropDown"></span>
</div>
<div class="row">
<div class="col-lg-4">
<input type="submit" value="submit"></div>
</div>
</form>
</div>                
</body>
</html>