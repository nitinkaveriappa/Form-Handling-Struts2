<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!--Nitin Kaveriappa Udiyanda Muthanna G01000006 -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="description" content="Homework 1">
	<meta name="author" content="Nitin Kaveriappa Udiyanda Muthanna">
	<title>SWE642 HW4</title>
	<link href="css/hw.css" rel="stylesheet" type="text/css">
	<link href="css/jquery-ui.css" rel="stylesheet">
	<script src="js/script.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script>
	$( function() {
			 $( "#tooltip" ).tooltip();
		 } );
	</script>
</head>
<body>
	<div class="container">
	<header>
	<h1>SWE-642 Assignment</h1>
	<h1>Computer Science Department Survery</h1>
	</header>
	<hr>
	<a href="index.html">Main Page</a>
	&nbsp;
	<a href="home.html">CS Dept. Homepage</a>
	<div style="color:blue;text-decoration:underline;display:inline;cursor:pointer;float:right" onclick="callRenewSet()">Change User</div>
	<hr>
	<div class="main">
		<div class="form">
	
		<table>
		<tr>
		<td>Student ID:</td></tr><tr>
		<td>><s:property value="sData.student_id"/></td>
		</tr><tr>
		<td>Name:</td></tr><tr>
		<td><s:property value="sData.student_name"/></td>
		</tr><tr>
		<td>Street Address:</td></tr><tr>
		<td><s:property value="sData.student_address"/></td>
		</tr><tr>
		<td>City:</td></tr><tr>
		<td><s:property value="sData.student_city"/></td>
		</tr><tr>
		<td>State:</td></tr><tr>
		<td><s:property value="sData.student_state"/></td>
		</tr><tr>
		<td>Zip:</td></tr><tr>
		<td><s:property value="sData.student_zipcode"/></td>
		</tr><tr>
		<td>Telephone Number:</td></tr><tr>
		<td><s:property value="sData.student_phone"/></td>
		</tr><tr>
		<td>E-mail:</td></tr><tr>
		<td><s:property value="sData.student_email"/></td>
		</tr><tr>
		<td>URL:</td></tr><tr>
		<td><s:property value="sData.student_url"/></td>
		</tr><tr>
		<td>Date of Survey:</td></tr><tr>
		<td><s:property value="sData.student_date"/></td>
		</tr>
		<tr>
		<td>What did you like most about the campus?<br><i>(Check one or more)</i></td></tr><tr>
		<td><s:property value="sData.student_likes"/></td>
		</tr>
		<tr>
		<td>How did you become interested in the university?<br><i>(Check one)</i></td></tr><tr>
		<td><s:property value="sData.student_interest"/></td>
		</tr>
		<tr>
		<td>Additional Comments:</td></tr><tr>
		<td><s:property value="sData.student_comments"/></td>
		</tr>
		<tr>
		<td>High-school graduation month:<br></td></tr><tr>
		<td>Month: <s:property value="sData.student_months"/> Year: <s:property value="sData.student_years"/></td>
		</tr>
		<tr>
		<td>How likely are you going to recommend this<br>school to other prospective students?</td></tr><tr>
		<td><s:property value="sData.student_recommend"/></td>
		</tr>
		
		</table>
		</div>
	</div>
	<div class="err" style="display:none"></div>
	<hr>
	<footer>&copy; 2017 Nitin Kaveriappa</footer>
	</div>
</body>
<div class="logo" id="tooltip">
  	<a href="https://www2.gmu.edu/" title="Please visit http://www.gmu.edu for more information." target="_blank"><img src="images/logo.jpg" alt="Mason Logo" style="width:250px;height:175px;"></a>
</div>
</html>
