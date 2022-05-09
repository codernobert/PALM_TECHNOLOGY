<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"   uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
     <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css">
     <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
     <link rel="stylesheet" href="resources/bootstrap/js/bootstrap.js">
     <link rel="stylesheet" href="resources/bootstrap/js/bootstrap.min.js">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <title>Welcome</title>
</head>
<body>
   <div class="jumbotron">
       <h1> ${greeting} </h1>
       <p> ${tagline} </p>
   </div>
   
   <section class="container">
     <form:form  class="form-horizontal">
        <fieldset>
        <legend>View Product</legend>
           <div class="form-group">
           

               
               <div class="col-lg-offset-2 col-lg-10">
                   <a href="<c:url value="/products" />">
                      <button type="button" class="btn btn-warning">
                             <b>View Products</b>
                      </button>
                   </a>   
               </div> 
                              
           </div>
        </fieldset>
     </form:form>
</section>
   
</body>
</html>