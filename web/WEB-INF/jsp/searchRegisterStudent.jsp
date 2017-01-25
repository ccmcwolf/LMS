<%-- 
    Document   : searchRegisterStudent
    Created on : Dec 26, 2016, 4:33:45 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/reset.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/print.css?13-0-1-16" media="print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/style.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/template.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/menu.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/pcss/add-module.css?13-0-1-16-636177445426051387" media="screen" />

        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/res/jquery.js?13-0-1-16"></script>
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/res/x5engine.js?13-0-1-16" data-files-version="13-0-1-16"></script>

        <script type="text/javascript">
            window.onload = function () {
                checkBrowserCompatibility('Your browser does not support the features necessary to display this website.', 'Your browser may not support the features necessary to display this website.', '[1]Update your browser[/1] or [2]continue without updating[/2].', 'http://outdatedbrowser.com/');
            };
        </script>

        <link rel="icon" href="favicon.png?13-0-1-16-636177445425991349" type="image/png" />
        <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Search Register Student </h1>
        <br>
        <br>
        <br>

        <div id="imHeaderBg"></div>

        <div id="imFooterBg"></div>

        <div id="imPage">

            <div id="imHeader">

                <h1 class="imHidden">Search Register Student - LMS</h1>

                <div id="imHeaderObjects"></div>

            </div>

            <%@include file="jspx/header.jsp" %>

            <div id="imContentContainer">

                <div id="imContentGraphics"></div>

                <div id="imContent">

                    <a id="imGoToCont"></a>
                    <div id="imPgMnContainer"><div id="imPgMn">
                            <ul class="auto">
                                <li id="imPgMnNode17" class="imPgMnFirst">
                                    <a href="${pageContext.servletContext.contextPath}/view/register">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Register Student</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode18">
                                   <a href="${pageContext.servletContext.contextPath}/view/registerLecturer">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Register Lecturer</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode49">
                                    <a href="${pageContext.servletContext.contextPath}/view/searchregisterstudent">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Search Register Student</span>
                                        </span>
                                    </a>
                                </li>
                                <li class="imMnPageClear"></li>
                            </ul>
                        </div></div>
                    <div class="imContentDataContainer">
                        <h2 id="imPgTitle">Search Register Student</h2>
                        <div id="imBreadcrumb">Student</div>
                    </div>
                    <div id="imGroup_1" class="imVGroup">
                        <div id="imPageRow_1" class="imPageRow">

                            <div id="imPageRowContent_1" class="imContentDataContainer">
                                <div id="imGroup_2" class="imHGroup">
                                    <div id="imGroup_3" class="imEGroup"></div>
                                    <div id="imCell_2" class="" > 
                                        <div id="imCellStyleGraphics_2"></div>
                                        <div id="imCellStyle_2"  data-responsive-sequence-number="1">

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div id="imPageRow_2" class="imPageRow">

                            <div id="imPageRowContent_2" class="imContentDataContainer">
                                <div id="imCell_1" class="" > <div id="imCellStyleGraphics_1"></div><div id="imCellStyle_1"  data-responsive-sequence-number="2"><div id="imTableObject_49_01">
                                            <div class="text-tab-content"  id="imTableObject_49_01_tab0" style="">
                                                <div class="text-inner">
                                                    <!--
                                                    <form action="${pageContext.servletContext.contextPath}/student/register/search" method="post">
                                                        <input type="text" name="dt" id="demo-3" > <input type="button" value="Select" id="demo-3-button">
                                                        <input type="submit" style="font-family: monospace" value="Search">
                                                    </form>
                                                    -->
                                                    <form action="${pageContext.servletContext.contextPath}/student/register/search" method="post">
                                                        <select class="mandatory" name="id" id="bth">
                                                            <c:forEach items="${requestScope.$batches}" var="batches">
                                                                <option value="${batches.batchId}">${batches.batchName}</option>
                                                            </c:forEach>
                                                        </select>                                                    
                                                        <button id="searchBtn" >Search</button>
                                                    </form>
                                                    <table data-minrequestedwidth="620" data-computedwidth="620" style="width: 620px;">
                                                        <tbody>
                                                            <tr>
                                                                <td style="text-align: center; width: 83px; height: 37px; margin-top: 0px; margin-left: 0px;" class="imVc">Student Id</td>
                                                                <td style="width: 212px; height: 37px; margin-top: 0px; margin-left: 0px;" class="imVc"><div style="text-align: center;"><span class="fs11">Batch ID </span></div></td>
                                                                <td colspan="2" rowspan="1" style="text-align: center; width: 113px; height: 37px; margin-top: 0px; margin-left: 0px;" class="imVc">Batch name</td>
                                                                <td colspan="2" rowspan="1" style="text-align: center; width: 183px; height: 37px; margin-top: 0px; margin-left: 0px;" class="imVc">Course name</td>
                                                            </tr>                                                            
                                                            <c:forEach items="${requestScope.rgt}" var="reg">
                                                                <tr>
                                                                    <td style="height: 21px; width: 83px;" colspan="1" class="imVc"><br>${reg.registrationId}</td>
                                                                    <td style="height: 21px; width: 212px; margin-top: 0px; margin-left: 0px;" colspan="1" class="imVc"><br>${reg.batch.batchName}</td>
                                                                    <td colspan="2" style="width: 113px; height: 21px;" class="imVt"><br>${reg.batch.batchId}</td>
                                                                    <td colspan="2" style="width: 183px; height: 21px;" class="imVt"><br>${reg.course.courseName}</td>
                                                                </tr>
                                                            </c:forEach>                                                        
                                                        </tbody>
                                                    </table>    


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

        <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
        <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/themes/smoothness/jquery-ui.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.mtz.monthpicker.js"></script>
        <script>
            $('#demo-1').monthpicker();
            $('#demo-2').monthpicker({pattern: 'yyyy-mm',
                selectedYear: 2015,
                startYear: 1900,
                finalYear: 2212, });
            var options = {
                selectedYear: 2015,
                startYear: 2008,
                finalYear: 2018,
                openOnFocus: false // Let's now use a button to show the widget
            };

            $('#demo-3').monthpicker(options);

            $('#demo-3').monthpicker().bind('monthpicker-change-year', function (e, year) {
                $('#demo-3').monthpicker('disableMonths', []); // (re)enables all
                if (year === '2015') {
                    $('#demo-3').monthpicker('disableMonths', [1, 2, 3, 4]);
                }
                if (year === '2014') {
                    $('#demo-3').monthpicker('disableMonths', [9, 10, 11, 12]);
                }
            });

            $('#demo-3-button').bind('click', function () {
                $('#demo-3').monthpicker('show');
            });
        </script>
        <script type="text/javascript">

            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-36251023-1']);
            _gaq.push(['_setDomainName', 'jqueryscript.net']);
            _gaq.push(['_trackPageview']);

            (function () {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

        </script>

        <script>
            $('#searchBtn').click(function () {
                var a = $("#bth option:selected").text();
                //alert(a);

            });
        </script>

        <span class="imHidden"><a href="#imGoToCont" title="Read this page again">Back to content</a> | <a href="#imGoToMenu" title="Remain on this page">Back to main menu</a></span>

        <noscript class="imNoScript"><div class="alert alert-red">To use this website you must enable JavaScript.</div></noscript>

    </body>
</html>
