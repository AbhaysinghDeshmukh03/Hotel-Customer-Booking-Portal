<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Page</title>

<style>
    body {
        background-image: url('images/bg1.jpg'); /* Correctly reference your image */
        background-size: cover;
        background-position: center;
        color: white;
        font-family: Arial, sans-serif;
    }

    .table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background for the table */
        color: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        overflow: hidden;
    }

    .table th, .table td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
         color: white; 
    }

    .table th {
        background-color: #333; /* Darker background for the header */
        color: #fff;
    }

    .table tr:hover {
        background-color: rgba(255, 255, 255, 0.1); /* Highlight rows on hover */
    }

    .thead-dark th {
        background-color: #444;
    }

    .btn-success, .btn-danger {
        padding: 5px 10px;
        border: none;
        border-radius: 4px;
        color: white;
        text-decoration: none;
        cursor: pointer;
    }

    .btn-success {
        background-color: #28a745;
    }

    .btn-danger {
        background-color: #dc3545;
    }

    .btn-success:hover {
        background-color: #218838;
    }

    .btn-danger:hover {
        background-color: #c82333;
    }
</style>


</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">No of People</th>
      <th scope="col">Room Type</th>
      <th scope="col">Check In</th>
      <th scope="col">Check Out</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
    <c:forEach var="c" items="${customer}">
      <td scope="row">${c.cid}</td>
      <td>${c.name}</td>
      <td>${c.noofpeople}</td>
      <td>${c.roomtype}</td>
      <td>${c.checkin}</td>
      <td>${c.checkout}</td>
      <td><a href="get-to-update-customer?cid=${c.cid}" class="btn btn-success">UPDATE</a> &nbsp;
      <a href="delete-customer?cid=${c.cid}" class="btn btn-danger">DELETE</a></td>
   
    </tr>
     </c:forEach>
    
  </tbody>
</table>
</body>
</html>