<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
   <head>
      <title>Home Food</title>
      <link href="resources/images/fav-icon.ico" rel="shortcut icon" type="image/x-icon" />
      
      <link href="resources/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
      <link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
      <link href="resources/css/theme.css" rel='stylesheet' type='text/css' />
      <link href="resources/css/custom.css" rel='stylesheet' type='text/css' />
	  <!----webfonts---->
 	  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
	  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	  <script type="text/javascript" src="resources/js/jquery.min.js"></script>
	  <script type="text/javascript" src="resources/js/bootstrap.js"></script>
	  <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	  <script src="resources/js/raterater.jquery.js"></script> 
      <script type="text/javascript" src="resources/js/items.js"></script>
	  <script type="text/javascript" src="resources/js/oauth.js"></script>
	  <script src="https://plus.google.com/js/client:plusone.js"></script>
	  <!-- star rating plugin -->
	  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
	  <link href="resources/css/raterater.css" rel="stylesheet"/>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      
      
   </head>
<body>
	<div class="header-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="logo">
						<h1 class="title" style="color: #FFFFFF">Personal Kitchen
						</h1>
					</div>
				</div>
				<div class="col-md-7">
					<c:if test="${empty user.email}">
						<div class="pull-right">
							<button class="g-signin" data-scope="email"
								data-clientid="14785241087-j8c8iipksvgknv5h61l7pg5abc4fmnmc.apps.googleusercontent.com"
								data-callback="onSignInCallback" data-theme="dark"
								data-cookiepolicy="single_host_origin">
							</button>
						</div>
					</c:if>
					<c:if test="${not empty user.email}">
						<div class="pull-right" style="color: #FFFFFF">
							Welcome <c:out value="${user.email}"></c:out>
							<br>
							<a href="logout" class="btn" style="padding:5px">Logout</a>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
