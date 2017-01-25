<%-- 
    Document   : home
    Created on : Dec 18, 2016, 4:59:36 PM
    Author     : Chathura madushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Page</title>
        <%@include file="jspx/styleDir.jsp" %>
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/reset.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/print.css?13-0-1-16" media="print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/style.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/template.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/menu.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/pcss/index.css?13-0-1-16-636177445423989926" media="screen" />
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/res/jquery.js?13-0-1-16"></script>
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/res/x5engine.js?13-0-1-16" data-files-version="13-0-1-16"></script>
        <script type="text/javascript">
            window.onload = function () {
                checkBrowserCompatibility('Your browser does not support the features necessary to display this website.', 'Your browser may not support the features necessary to display this website.', '[1]Update your browser[/1] or [2]continue without updating[/2].', 'http://outdatedbrowser.com/');
            };
        </script>
        <link rel="icon" href="favicon.png?13-0-1-16-636177445423959904" type="image/png" />
    </head>
    <body>
        <h1>Welcome to LMS !</h1>
        <div>
            <!--
            <h3>Profile</h3>
            <a href="${pageContext.servletContext.contextPath}/logout">Sign out</a>
            <c:if test="${sessionScope.$LoggedInUserObj != null}">
                <ul>
                    <li>User ID : <c:out value="${sessionScope.$LoggedInUserObj.userId}"/></li>
                    <li>User name : <c:out value="${sessionScope.$LoggedInUserObj.userName}"/></li>
                    <li>User role : <c:out value="${sessionScope.$LoggedInUserObj.userRole}"/></li>
                    <li>Joined in : <c:out value="${sessionScope.$LoggedInUserObj.dateCreated}"/></li>
                </ul>
            </c:if>
            <c:if test="${sessionScope.$LoggedInAdminObj != null}">
                <ul>
                    <li>Admin ID : <c:out value="${sessionScope.$LoggedInAdminObj.adminId}"/></li>
                    <li>Admin name : <c:out value="${sessionScope.$LoggedInAdminObj.adminName}"/></li>
                    <li>DOB : <c:out value="${sessionScope.$LoggedInAdminObj.dob}"/></li>
                    <li>Contact number : <c:out value="${sessionScope.$LoggedInAdminObj.contactNumber}"/></li>
                    <li>Position : <c:out value="${sessionScope.$LoggedInAdminObj.position}"/></li>
                    <li>NIC : <c:out value="${sessionScope.$LoggedInAdminObj.nic}"/></li>
                </ul>
            </c:if>
            <c:if test="${sessionScope.$LoggedInStudentObj != null}">
                <ul>
                    <li>Student ID : <c:out value="${sessionScope.$LoggedInStudentObj.studentId}"/></li>
                    <li>Student name : <c:out value="${sessionScope.$LoggedInStudentObj.name}"/></li>
                    <li>DOB : <c:out value="${sessionScope.$LoggedInStudentObj.dob}"/></li>
                    <li>Address : <c:out value="${sessionScope.$LoggedInStudentObj.address}"/></li>
                </ul>
            </c:if>
            <c:if test="${sessionScope.$LoggedInLecturerObj != null}">
                <ul>
                    <li>Lect ID : <c:out value="${sessionScope.$LoggedInLecturerObj.lecturerId}"/></li>
                    <li>Lect name : <c:out value="${sessionScope.$LoggedInStudentObj.lecturerName}"/></li>
                    <li>DOB : <c:out value="${sessionScope.$LoggedInLecturerObj.dob}"/></li>
                    <li>Address : <c:out value="${sessionScope.$LoggedInLecturerObj.address}"/></li>
                </ul>
            </c:if>
            <hr>
            -->

            <h1>Welcome to LMS !</h1>

            <div id="imHeaderBg"></div>

            <div id="imFooterBg"></div>

            <div id="imPage">

                <div id="imHeader">

                    <h1 class="imHidden">LMS</h1>

                    <div id="imHeaderObjects"></div>

                </div>

                <%@include file="jspx/header.jsp" %>


                <div id="imContentContainer">

                    <div id="imContentGraphics"></div>

                    <div id="imContent">

                        <a id="imGoToCont"></a>

                        <div id="imFooPad"></div><div id="imBtMnContainer" class="imContentDataContainer"><div id="imBtMn"><a href="index.html">Home Page</a> | <a href="register-student.html">Courses</a> | <a href="my-profile.html">My Profile</a> | <a href="inbox.html">Messages</a> | <a href="sign-up.html">Sign Up</a> | <a href="add-student.html">Student</a> | <a href="add-lecturer.html">Lecturer</a> | <a href="imsitemap.html">General Site Map</a></div></div>

                        <div class="imClear"></div>

                    </div>

                </div>

                <%@include file="jspx/footer.jsp" %>

            </div>

            <span class="imHidden"><a href="#imGoToCont" title="Read this page again">Back to content</a> | <a href="#imGoToMenu" title="Remain on this page">Back to main menu</a></span>



            <noscript class="imNoScript"><div class="alert alert-red">To use this website you must enable JavaScript.</div></noscript> 
        </div>
    </body>
</html>
