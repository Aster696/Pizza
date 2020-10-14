<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="css" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<css:url value="/css/pizza.css"></css:url>" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" 
                           url="jdbc:derby://localhost:1527/pizza404"
                           user="boot"
                           password="boot"
                           var="mydatasource"/>
        
        <sql:query dataSource="${mydatasource}" var="data">
            select * from pizza where stock='A'
            
        </sql:query>
        
    <div class="container">
    <h3 class="h3">Dominos</h3>
    <div class="row">
        
        <c:forEach items="${data.rows}" var="pi" >
            
        <div class="col-md-3 col-sm-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="displaypizza.jsp?pizza_id=${pi.pizza_id}">
                        <img class="pic-1" src="${pi.imglink}">
                    </a>  
                </div>
               
                <div class="product-content">
                    <input type="hidden" value="${pi.pizza_id}"/>
                    <h3 class="title"><a href="#">Name: ${pi.pizza_name}</a></h3>
                    <div class=""><a title="${pi.description}">Description:</a> </div>
                    <div class="price">Price: Rs. ${pi.price} </div>
                    <a class="btn btn-warning" href="${pi.link}">+ Order</a>
                
                    <a href="EditController?pizza_id=${pi.pizza_id}" class="btn btn-info">Edit</a>
                    <a class="btn btn-danger" href="DeleteController?pizza_id=${pi.pizza_id}">Delete</a>
                 
                </div>
                     
            </div>
        </div>
       
        </c:forEach>
        
        </div>
    </div>
</div>
<hr>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
