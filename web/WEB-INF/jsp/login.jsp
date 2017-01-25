<%-- 
    Document   : Login
    Created on : Dec 18, 2016, 1:48:20 PM
    Author     : Chathura madushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login | LMS</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/log_in.css" media="screen,print" />
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    </head>
    <body>
        
    <center>
        <c:if test="${requestScope.$error != null}">
            <div>
                <h3><c:out value="${$error}"/></h3>
            </div>
        </c:if>
        <c:if test="${requestScope.$userNotFound != null}" var="data">
            <div>
                <h3><c:out value="${$userNotFound}"/></h3>
            </div>
        </c:if>
        <!--<form action="${pageContext.servletContext.contextPath}/user/login" method="POST">
            Username: <br>
            Password <input type="password" placeholder="Password" name="pw" required="true"/><br>
            <input type="submit" value="Login" />
        </form>
        -->
        
        <div class="logo">Login to LMS</div>
        <form class="login-block" action="${pageContext.servletContext.contextPath}/user/login" method="POST">
            <h1>Login</h1>
            <input type="text" placeholder="Username" name="uname" required="true" id="username"/>            
            <input type="password" placeholder="Password" name="pw" required="true" id="password"/>            
            <button>Submit</button>
        </form>
    </center>
</body>
</html>
