<%@page import="java.io.PrintWriter"%>
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
        <link href="<css:url value="/css/formcontainer.css"></css:url>" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
   
        <%
//           if( session.getAttribute("user")==null){
//                out.println("<script>" + "alert('Login to add data');" + "window.location='login.jsp';" + "</script>");
//                
//                //response.sendRedirect("login.jsp");
//            }
        %>
        <br>
        <div class="formcontainer">
            <h3>Add Pizza Details</h3>
            <div>
            
            <c:if test="${pi==null}">
                <form action="AddPizzaController" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
            </c:if>
            
            <c:if test="${pi!=null}">
                <form action="UpdateController" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div>
                        <input type="text" name="pizza_id" value="${pi.pizza_id}" readonly=""/>
                    </div>
            </c:if>
                    <div>
                        <table>
                            <tr>
                                <td><input type="text" name="pizza_name" value="${pi.pizza_name}" placeholder="Enter Pizza Name" size="54"/></td>
                            </tr>
                        </table>
                    </div>
                    
                     <div>
                         <table>
                            <tr>
                                <td><textarea name="description" value="${pi.description}" style="resize: none" placeholder="Enter the Description of pizza or information" rows="3" cols="57"></textarea></td>
                            </tr>
                        </table>
                    </div>
                    <!--
                    <div>
                        <input type="file" name="image" placeholder="Enter your Pizza Image"/>
                    </div>
                    -->
                    
                    <div>
                        <table>
                            <tr>
                                <td><input type="text" name="link" value="${pi.link}" placeholder="Enter the link of the pizza website " size="54"/></td>
                            </tr>
                        </table>
                    </div>
                    
                    <div>
                        <table>
                            <tr>
                                <td><input type="text" name="imglink" value="${pi.imglink}" placeholder="Enter your Pizza Image link" size="54"/></td>
                            </tr>
                        </table>
                    </div>
                    
                    <div>
                        <table>
                            <tr>
                                <td><input type="tel" name="quantity" value="${pi.quantity}" placeholder="Enter your pizza quantity" size="54"/></td>
                            </tr>
                        </table>
                    </div>
                    
                    <div>
                        <table>
                            <tr>
                                <td><input type="number" name="price" value="${pi.price}" placeholder="Enter your Pizza price" size="54"/></td>
                            </tr>
                        </table>
                    </div>
                    
                    <div>                       
                        <table>
                            <tr>
                                <td>
                                <c:if test="${pi==null}">
                                    <input type="submit" value="Add+" class="btn btn-primary"/>
                                </c:if>
                                <c:if test="${pi!=null}">
                                    <input type="submit" value="Update" class="btn btn-primary"/>
                                </c:if>
                                    <input type="reset" value="Reset" class="btn btn-danger"/></td>
                            </tr>
                        </table>
                    </div>
                </form>
            </div>
   
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
