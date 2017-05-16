<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
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
	<h1>Computer Science Department Survey</h1>
	</header>
	<hr>
	<a href="index.html">Main Page</a>
	&nbsp;
	<a href="home.html">CS Dept. Homepage</a>
	<div style="color:blue;text-decoration:underline;display:inline;cursor:pointer;float:right" onclick="callRenewSet()">Change User</div>
	<hr>
	<div class="main">
		<div>
	    <p>Thank You for your feedback!<br/>
    		Your data has been saved. <br/>
    		Mean = <s:property value="cData.mean"/> <br/>
    		Standard Deviation = <s:property value="cData.deviation"/>
   		</p>

	    <ol>
	    <s:iterator status="stat" value="list">
        
    	<li><a href="getDetails?studentid=<s:property/>"><s:property/></a></li>
    	</s:iterator>
	    </ol>
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
