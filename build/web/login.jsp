<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="css" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<css:url value="/css/formcontainer.css"></css:url>" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <br>
        <div class="formcontainer">
            <h3>Log in</h3>
            <div>
                
                <form action="LoginController" method="post">
                    
                    <div>
                        <table>
                            <tr>
                                <td><input type="text" name="username" placeholder="Enter your name" size="54"/></td>
                            </tr>
                        </table>
                    </div>
                    
                    <div>
                        <table>
                            <tr>
                                <td><input type="password" name="password" placeholder="Enter your password" size="54"/></td>
                            </tr>
                        </table>
                    </div>
                    
                    <div>
                        <table>
                            <tr>
                                <td><input type="submit" value="Log in" class="btn btn-primary"/></a>
                                    <a href="register.jsp"><input value="Create" class="btn btn-success"/></a></td>
                            </tr>
                        </table>
                    </div>
                    
                </form>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
