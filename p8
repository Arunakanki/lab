<!DOCTYPE html>
<html ng-app="loginApp">
<head>
 <title>Login Form</title>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>
<body>
 <div ng-controller="LoginController">
 <h2>Login Form</h2>
 <form name="loginForm" ng-submit="submitForm()">
 <label>Username:</label>
 <input type="text" ng-model="username" required><br>
 <div ng-show="loginForm.username.$dirty && loginForm.username.$invalid">
 <span ng-show="loginForm.username.$error.required">Username is required.</span>
 </div>
 <label>Password:</label>
 <input type="password" ng-model="password" required><br>
 <div ng-show="loginForm.password.$dirty && loginForm.password.$invalid">
 <span ng-show="loginForm.password.$error.required">Password is required.</span>
 </div>
 <button type="submit" ng-disabled="loginForm.$invalid">Login</button>
 </form>
 </div>
 <script>
 var app = angular.module('loginApp', []);
 app.controller('LoginController', function($scope) {
 $scope.submitForm = function() {
 // Implement your login logic here
 console.log('Username:', $scope.username);
 console.log('Password:', $scope.password);
 };
 });
 </script>
</body>
</html>
