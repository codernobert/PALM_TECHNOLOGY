<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
     <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css">
     <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
     <link rel="stylesheet" href="resources/bootstrap/js/bootstrap.js">
     <link rel="stylesheet" href="resources/bootstrap/js/bootstrap.min.js">

<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
   <div class="jumbotron">
       <h1> ${greeting} </h1>
       <p> ${tagline} </p>
   </div>
</body>
</html>