<%-- 
    Document   : searchAdmin
    Created on : Dec 26, 2016, 3:07:26 PM
    Author     : yosha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Admin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/reset.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/print.css?13-0-1-16" media="print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/style.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/template.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/menu.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/pcss/search-student.css?13-0-1-16-636180071795212218" media="screen" />

        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/res/jquery.js?13-0-1-16"></script>
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/res/x5engine.js?13-0-1-16" data-files-version="13-0-1-16"></script>

        <script type="text/javascript">
            window.onload = function () {
                checkBrowserCompatibility('Your browser does not support the features necessary to display this website.', 'Your browser may not support the features necessary to display this website.', '[1]Update your browser[/1] or [2]continue without updating[/2].', 'http://outdatedbrowser.com/');
            };
        </script>

        <link rel="icon" href="favicon.png?13-0-1-16-636180071795132161" type="image/png" />
    </head>
    <body>

        <div id="imHeaderBg"></div>

        <div id="imFooterBg"></div>

        <div id="imPage">

            <div id="imHeader">

                <h1 class="imHidden">Search Admin  LMS</h1>

                <div id="imHeaderObjects"></div>

            </div>

            <%@include file="jspx/header.jsp" %>

            <div id="imContentContainer">

                <div id="imContentGraphics"></div>

                <div id="imContent">

                    <a id="imGoToCont"></a>
                    <div id="imPgMnContainer"><div id="imPgMn">
                            <ul class="auto">
                                <li id="imPgMnNode17">
                                    <a href="${pageContext.servletContext.contextPath}/view/addadmin">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Add Admin</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode17" class="imPgMnFirst imPgMnCurrent">
                                    <a href="${pageContext.servletContext.contextPath}/view/searchadmin">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Search Admin</span>
                                        </span>
                                    </a>
                                </li>
                                <li class="imMnPageClear"></li>
                            </ul>
                        </div></div>
                    <div class="imContentDataContainer">
                        <h2 id="imPgTitle">Search Admin</h2>
                        <div id="imBreadcrumb">Admin</div>
                    </div>
                    <div id="imGroup_1" class="imVGroup">
                        <div id="imPageRow_1" class="imPageRow">

                            <div id="imPageRowContent_1" class="imContentDataContainer">
                                <div id="imGroup_2" class="imHGroup">
                                    <div id="imGroup_3" class="imEGroup"></div>
                                    <div id="imCell_2" class="" > 
                                        <div id="imCellStyleGraphics_2"></div>
                                        <div id="imCellStyle_2"  data-responsive-sequence-number="1">
                                            <div id="imObjectSearch_49_02">
                                                <form id="imObjectSearch_49_02_form" action="${pageContext.servletContext.contextPath}/admin/search" method="post">
                                                    <fieldset>
                                                        <input type="text" id="imObjectSearch_49_02_field" name="aid" value="" />
                                                        <br>
                                                        <br>
                                                        <button id="imObjectSearch_49_02_button">Search</button>
                                                    </fieldset>
                                                </form>
                                                <script>
                                                    $('#imObjectSearch_49_02_button').click(function () {
                                                        $('#imObjectSearch_49_02_form').submit();
                                                        return false;
                                                    });
                                                </script>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <c:if test="${requestScope.admin != null}">
                                    <c:if test="${requestScope.admin.adminName == 'no_admin'}">
                                        <div>Not found student</div>
                                    </c:if>
                                    <c:if test="${requestScope.admin.adminName != 'no_admin'}">
                                        <ul>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <table style="padding: 50px">
                                                <tr>
                                                    <th style="padding: 20px"> Admin : </th>
                                                    <td style="padding: 20px"> <c:out value="${requestScope.admin.adminName}"/> </td>
                                                </tr>
                                                <tr>
                                                    <th style="padding: 20px"> DOB     : </th>
                                                    <td style="padding: 20px"> <c:out value="${requestScope.admin.dob}"/> </td>
                                                </tr>
                                                <tr>
                                                    <th style="padding: 20px"> Address : </th>
                                                    <td style="padding: 20px"> <c:out value="${requestScope.admin.contactNumber}"/> </td>
                                                </tr> 
                                            </table>                                                                                      
                                        </ul>
                                    </c:if>
                                </c:if>                    
                            </div>
                        </div>
                        <div id="imPageRow_2" class="imPageRow">

                            <div id="imPageRowContent_2" class="imContentDataContainer">
                                <div id="imCell_1" class="" > <div id="imCellStyleGraphics_1"></div><div id="imCellStyle_1"  data-responsive-sequence-number="2"><div id="imTableObject_49_01">
                                            <div class="text-tab-content"  id="imTableObject_49_01_tab0" style="">
                                                <div class="text-inner">

                                                </div>
                                            </div>

                                        </div>
                                    </div></div></div>
                        </div>

                    </div>
                    <div id="imFooPad"></div><div id="imBtMnContainer" class="imContentDataContainer"><div id="imBtMn"><a href="index.html">Home Page</a> | <a href="register-student.html">Courses</a> | <a href="my-profile.html">My Profile</a> | <a href="inbox.html">Messages</a> | <a href="sign-up.html">Sign Up</a> | <a href="add-student.html">Student</a> | <a href="add-lecturer.html">Lecturer</a> | <a href="add-admin.html">Admin</a> | <a href="imsitemap.html">General Site Map</a></div></div>

                    <div class="imClear"></div>

                </div>

            </div>

            <div id="imFooter">

                <div id="imFooterObjects"></div>

            </div>

        </div>

        <span class="imHidden"><a href="#imGoToCont" title="Read this page again">Back to content</a> | <a href="#imGoToMenu" title="Remain on this page">Back to main menu</a></span>

        <noscript class="imNoScript"><div class="alert alert-red">To use this website you must enable JavaScript.</div></noscript>

    </body>
</html>
