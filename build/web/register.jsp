<%-- 
    Document   : register
    Created on : 12 Jul, 2020, 6:05:56 PM
    Author     : Aster
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="css" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <h3>Sign up</h3>
            <div>
                <form action="RegistryController" method="post">
                    <div>
                        <table>
                            <tr>
                                <td><input type="text" name="username" placeholder="Enter your Name" size="54"/></td>
                            </tr>
                        </table>
                    </div>
                    
                    <div>
                        <table>
                            <tr>
                                <td><input type="email" name="email" placeholder="Enter your Email" size="54"/></td>
                            </tr>
                        </table>
                    </div>
                    
                    <div>
                        <table>
                            <tr>
                                <td><input type="tel" name="contact" placeholder="Enter your Phone no." size="54"/></td>
                            </tr>
                        </table>
                    </div>
                    
                    <div>
                        <table>
                            <tr>
                                <td><textarea name="address" style="resize: none" rows="3" cols="57" placeholder="Enter your Address"></textarea></td>
                            </tr>
                        </table>
                    </div>
                    
                    <div>
                        <table>
                            <tr>
                                <td><input type="password" name="password" placeholder="Create your password" size="54"/></td>
                            </tr>
                        </table>
                    </div>
                    
                    <div>                       
                        <table>
                            <tr>
                                <td><a><input type="submit" value="Sign in" class="btn btn-primary"/></a>
                                    <a href="login.jsp"><input value="Log in" class="btn btn-success"/></a></td>
                            </tr>
                        </table>
                    </div>
                </form>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
