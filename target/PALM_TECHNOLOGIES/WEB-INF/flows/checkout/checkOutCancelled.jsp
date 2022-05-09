<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.1/angular.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"><title>Invalid cart</title>
</head>
<body>

      <section>
           <div class="jumbotron">
               <div class="container">
                  <h1 class="alert alert-danger">check out cancelled</h1>
                       <p>Your Check out process cancelled! you may continue shopping..</p>
               </div>
           </div>
      </section>
      
      <section>
          <div class="container">
             <p>
                  <a href="<spring:url value="/products" />" class="btn btn-primary">
                     <span class="glyphicon-hand-left glyphicon"></span> products
                  </a>
             </p>
          </div>
      </section>
      
</body>
</html>