<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Portal</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
    background-image: url('images/bg1.jpg'); /* Correctly reference your image */
    background-size: cover;
    background-position: center;
    color: white;
}
        
        .jumbotron {
            background: rgba(0, 0, 0, 0.6);
            border-radius: 10px;
            padding: 30px;
        }
        
        .btn-custom {
            background-color: #ff5722;
            border: none;
        }
        .btn-custom:hover {
            background-color: #e64a19;
        }
    </style>
    
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<div class="container text-center mt-5" style="background:tranparent; color: white; border: solid; border-radius: 20px; padding: 100px;backdrop-filter: blur(2px); ">
    <div class="">
        <h1 class="display-4">Welcome To Hotel Customer Booking Portal</h1>
        <p class="lead">Experience luxury and comfort with the best hotel booking platform. Discover amazing deals and seamless booking processes.</p>
        <hr class="my-4" style="border-color: #ff5722;">
        <p>Explore our range of services, exclusive offers, and travel tips to make your stay memorable.</p>
        <a class="btn btn-custom btn-lg" href="#services" role="button">Explore Services</a>
        <a class="btn btn-light btn-lg ml-2" href="#contact" role="button">Contact Us</a>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
