<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="css" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<!-------------------------------------------------------------------------------------------------------------------------------------------- -->
        <link href="<css:url value="/css/header.css"></css:url>" rel="stylesheet" type="text/css"/>
        <script type="text/javascript">
            function openbar(){
                document.getElementById("slidebar").style.width = "250px";
            }
            function closebar(){
                document.getElementById("slidebar").style.width = "0";
            }
            
        </script>
    </head>
    <body>
        <header>
            <nav class="mycontainer">
                <div id="slidebar" class="slidebarCss">
                <br><a href="javascript:void(0)" class="closebtn" onclick="closebar()">&#9776;</a>
                <br>
                <a href="register.jsp">Sign in</a>
                <a href="login.jsp">Login</a>
                <a href="addpizza.jsp">Add Pizza</a>
                </div>
                <div class="main">
                    <span style="font-size:30px;cursor:pointer" onclick="openbar()" class="openbtn">&#9776;</span>
                    <a href="index.jsp">Home</a>
                    <a href="pizza.jsp">Pizza</a>
                    <input type="search" placeholder="Search" size="105"/><a href="#">Search</a>
                    <a href="login.jsp">Login</a>            
                    
                </div>
            </nav>
        </header>
        <br>
        
    </body>
</html>
