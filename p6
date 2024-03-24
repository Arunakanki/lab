<!DOCTYPE html>
<html ng-app="todoApp">
<head>
 <title>To-Do List</title>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>
<body>
 <div ng-controller="TodoController">
 <h2>To-Do List</h2>
 <label>Add Task:</label>
 <input type="text" ng-model="newTask">
 <button ng-click="addTask()">Add</button><br>
 <ul>
 <li ng-repeat="task in tasks">
 <span>{{task}}</span>
 <button ng-click="editTask($index)">Edit</button>
 <button ng-click="deleteTask($index)">Delete</button>
 </li>
 </ul>
 </div>
 <script>
 var app = angular.module('todoApp', []);
 app.controller('TodoController', function($scope) {
 // Default tasks
 $scope.tasks = ["Task 1", "Task 2", "Task 3"];
 // Function to add a task
 $scope.addTask = function() {
 if ($scope.newTask) {
 $scope.tasks.push($scope.newTask);
 $scope.newTask = ""; // Clear the input field
 }
 };
 // Function to edit a task
 $scope.editTask = function(index) {
 var editedTask = prompt("Edit Task", $scope.tasks[index]);
 if (editedTask !== null) {
 $scope.tasks[index] = editedTask;
 }
 };
 // Function to delete a task
 $scope.deleteTask = function(index) {
 $scope.tasks.splice(index, 1);
 };
 });
 </script>
</body>
</html>
