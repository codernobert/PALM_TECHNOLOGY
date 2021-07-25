<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
     <meta charset="ISO-8859-1">
     <script src="webjars/angularjs/1.7.0/angular.min.js"></script>    
     <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
       <link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">   
     <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.1/angular.min.js"></script>

<title>Products</title>
</head>
<body>

     <section>
           <div class="jumbotron">
                <div class="container">
                     <h1>Products</h1>
                </div>
           </div>
     </section>
      
    <section class="container" ng-app="cartApp" ng-controller="cartCtrl">
 
      <div class="row">
      
        <div class="col-md-5">
             <img src="<c:url value="/img/${product.productId}.jpg">
             </c:url>" alt="image" style = "width:100%"/>
        </div>
        
           <div class="col-md-5">
               <h3>${product.name}</h3>
               <p>${product.description}</p>
               <p>
                  <strong>Item Code : </strong>
                     <span class="label label warning">
                         ${product.productId}
                     </span>
               </p>
               
               <p>
                  <strong>manufacturer</strong> : 
                      ${product.manufacturer}
               </p>
 
               <p>
                  <strong>category</strong> :
                     ${product.category}
               </p>
 
               <p>
                  <strong>Available units in stock </strong> : 
                      ${product.unitsInStock}
               </p>
 
               <h4>${product.unitPrice} USD</h4>
               
               <h4>
                  <a href="/PALM_TECHNOLOGY/pdf/${product.productId}.pdf">
                      Product Manual
                  </a>
               </h4>
               
               <p >
                   <a href="<spring:url value="/products" />" class="btn btn-primary">
                      <span class="glyphicon-hand-left glyphicon"></span> Back
                   </a>
                   
                   <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')">
                      <span class="glyphicon-shopping-cart glyphicon"> </span> Order Now
                   </a>
                       
                   <a href="<spring:url value="/cart" />" class="btn btn-default">
                      <span class="glyphicon-hand-right glyphicon"></span> View Cart
                   </a>
               </p>
           </div>
     </div>
     
   </section>
   
  <script>
  
  var cartApp = angular.module('cartApp', []);
  cartApp.controller('cartCtrl', function($scope,
  $http) {
  $scope.refreshCart = function(cartId) {
  $http.get('/PALM_TECHNOLOGY/rest/cart/' + $scope.cartId)
  .success(function(data) {
  $scope.cart = data;
  });
  };
  $scope.clearCart = function() {
  $http.delete('/PALM_TECHNOLOGY/rest/cart/' + $scope.cartId)
  .success(function(data) {
  $scope.refreshCart($scope.cartId);
  });
  };
  $scope.initCartId = function(cartId) {
  $scope.cartId = cartId;
  $scope.refreshCart($scope.cartId);
  };
  $scope.addToCart = function(productId) {
  $http.put('/PALM_TECHNOLOGY/rest/cart/add/' + productId)
  .success(function(data) {
  alert("Product Successfully added to the Cart!");
  });
  };
  $scope.removeFromCart = function(productId) {
  $http.put('/PALM_TECHNOLOGY/rest/cart/remove/' + productId)
  .success(function(data) {
  $scope.refreshCart($scope.cartId);
  });
  };
  });
  
  </script>   

</body>
</html>

