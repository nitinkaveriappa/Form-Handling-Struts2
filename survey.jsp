<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!--Nitin Kaveriappa Udiyanda Muthanna G01000006 -->
<!DOCTYPE html>
<html lang="en">
<s:head/>
<head>
	<meta charset="utf-8">
	<meta name="description" content="Homework 1">
	<meta name="author" content="Nitin Kaveriappa Udiyanda Muthanna">
	<title>SWE642 HW2</title>
	<link href="css/hw.css" rel="stylesheet" type="text/css">
	<link href="css/jquery-ui.css" rel="stylesheet">
	<script src="js/script.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script>
	window.onload = usrGreet();
	$( function() {
			 $( "#tooltip" ).tooltip();
		 } );
	</script>
</head>
<body>
	<div class="container">
	<header>
	<h1>SWE-642 Assignment</h1>
	<h1>Computer Science Department Survey</h1>
	</header>
	<hr>
	<a href="index.html">Main Page</a>
	&nbsp;
	<a href="home.html">CS Dept. Homepage</a>
	<div style="color:blue;text-decoration:underline;display:inline;cursor:pointer;float:right" onclick="callRenewSet()">Change User</div>
	<hr>
	<div class="main">
	<div class="form">
 		<s:form theme="css_xhtml" action="submitSurvey" namespace="/" method="POST" autocomplete="on" focusElement="studentid">		
 		<table>
		<tr>
		<td>Student ID:</td></tr><tr>
		<td><s:textfield name="studentid" size="30" /></td>
		</tr><tr>
		<td>Name:</td></tr><tr>
		<td><s:textfield name="name" size="30"/></td>
		</tr><tr>
		<td>Street Address:</td></tr><tr>
		<td><s:textfield name="streetaddress" size="30" /></td>
		</tr><tr>
		<td>City:</td></tr><tr>
		<td><s:textfield name="city" id="city" size="30" /></td>
		</tr><tr>
		<td>State:</td></tr><tr>
		<td><s:textfield name="state" id="state" size="15" /></td>
		</tr><tr>
		<td>Zip:</td></tr><tr>
		<td><s:textfield name="zip" size="10" onBlur="checkZip(this.value)" /></td>
		</tr><tr>
		<td>Telephone Number:</td></tr><tr>
		<td><s:textfield name="telephonenumber" size="30"/></td>
		</tr><tr>
		<td>E-mail:</td></tr><tr>
		<td><s:textfield name="email" size="30" /></td>
		</tr><tr>
		<td>URL:</td></tr><tr>
		<td><s:textfield name="url" size="30" /></td>
		</tr><tr>
		<td>Date of Survey:</td></tr><tr>
		<td><s:textfield name="dateofsurvey" size="30" /></td>
		</tr>
		<tr>
		<td>What did you like most about the campus?<br><i>(Check one or more)</i></td></tr><tr>
		<td><s:checkboxlist name="like" list="{'Students','Location','Campus','Atmosphere','Dorm Rooms','Sports'}"/>
		</td>
		</tr>
		<tr>
		<td>How did you become interested in the university?<br><i>(Check one)</i></td></tr><tr>
		<td>
		<s:radio name="interest" list="{'TV','Friends','Internet','Other'}"/>
		</td>
		</tr>
		<tr>
		<td>Additional Comments:</td></tr><tr>
		<td><s:textarea name="comments" rows="5" cols="30"/></td>
		</tr>
		<tr>
		<td>High-school graduation month:<br></td></tr><tr>
		<td>
		<s:select name="month" list="{'JANUARY','FEBRUARY','MARCH','APRIL','MAY','JUNE','JULY','AUGUST','SEPTEMBER','OCTOBER','NOVEMBER','DECEMBER'}"  />
        <s:textfield name="year" />
        </td>
		</tr>
		<tr>
		<td>How likely are you going to recommend this<br>school to other prospective students?</td></tr><tr>
		<td><s:select name="recommend" list="{'Very Likely','Likely','Unlikely'}"/></td>
		</tr>
		<tr>
			<td>Data:</td></tr><tr>
			<td><s:textfield name="data" id='data' /></td>
		</tr>
		<tr>
		<td>
			<s:reset name="reset" value="RESET"/>
			<s:submit name="submit" value="Submit" onClick="return formValidate();"/>
		</td>
		</tr>
		</table>
		</s:form>
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
