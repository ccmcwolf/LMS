<%-- 
    Document   : message
    Created on : 19-Dec-2016, 22:58:30
    Author     : Chamith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    <c:if test="${sessionScope.$LoggedInUserObj != null}">
        <ul>
            <li>User ID : <c:out value="${sessionScope.$LoggedInUserObj.userId}"/></li>
            <li>User name : <c:out value="${sessionScope.$LoggedInUserObj.userName}"/></li>
            <li>User role : <c:out value="${sessionScope.$LoggedInUserObj.userRole}"/></li>
            <li>Joined in : <c:out value="${sessionScope.$LoggedInUserObj.dateCreated}"/></li>
        </ul>
    </c:if> 



    <form action="${pageContext.servletContext.contextPath}/messege/send" method="POST">
        To user Id : <input type="text" placeholder="to user" required="true" name="toUserId"/><br>
        <input type="text" placeholder="Meesgage body" required="true" name="body"/><br>
        <input type="submit" value="Send Massege"/><br>
    </form>

</body>
</html>
