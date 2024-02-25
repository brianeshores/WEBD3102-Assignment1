<%--
  Created by IntelliJ IDEA.
  User: brian
  Date: 2024-02-24
  Time: 11:20 a.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
  <title>To-do App</title>
  <link rel="stylesheet" type="text/css" href="./style.css">
</head>

<style>
  th, tr, td {
    padding: 20px;
  }
</style>

<body>
<div class="row">
  <div class="container">
    <h3 class="text-center">To-dos</h3>
    <hr>
    <div class="container text-left">

      <a href="<%=request.getContextPath()%>/new"
         class="btn btn-success" style="text-decoration: none"><button class="action-button">Add</button></a>
    </div>
    <br>
    <table id="todo-list-table" class="table">
      <thead>
      <tr>
        <th>Title</th>
        <th>Due Date</th>
        <th>Status</th>
        <th>Actions</th>
      </tr>
      </thead>
      <tbody>
      <p></p>
      <c:forEach var="todo" items="${listTodo}">

        <tr>
          <td><c:out value="${todo.title}" /></td>
          <td><c:out value="${todo.targetDate}" /></td>
          <td><c:out value="${todo.status}" /></td>

          <td>
            <a href="edit?id=<c:out value='${todo.id}'/>"><button class="action-button">Edit</button></a>
          &nbsp;&nbsp;<a href="delete?id=<c:out value='${todo.id}' />"><button class="action-button">Delete</button></a>
          </td>
        </tr>
      </c:forEach>
      <!-- } -->
      </tbody>

    </table>
  </div>
</div>
</body>
</html>
