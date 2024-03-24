<!DOCTYPE html>
<html ng-app="mathApp">
<head>
 <title>Factorial and Square Calculator</title>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>
<body>
 <div ng-controller="MathController">
 <h2>Factorial and Square Calculator</h2>
 <label>Number:</label>
 <input type="number" ng-model="number"><br>
 <button ng-click="calculateFactorial()">Calculate Factorial</button>
 <button ng-click="calculateSquare()">Calculate Square</button><br>
 <p ng-if="factorial !== null">Factorial: {{factorial}}</p>
 <p ng-if="square !== null">Square: {{square}}</p>
 </div>
 <script>
 var app = angular.module('mathApp', []);
 app.controller('MathController', function($scope) {
 // Initialize variables
 $scope.number = 0;
 $scope.factorial = null;
 $scope.square = null;
 // Function to calculate factorial
 $scope.calculateFactorial = function() {
 if ($scope.number < 0) {
 $scope.factorial = "Invalid input";
 return;
 }
 var result = 1;
 for (var i = 2; i <= $scope.number; i++) {
 result *= i;
 }
 $scope.factorial = result;
 };
 // Function to calculate square
 $scope.calculateSquare = function() {
 $scope.square = $scope.number * $scope.number;
 };
 });
 </script>
</body>
</html>
