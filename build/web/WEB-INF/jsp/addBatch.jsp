<%-- 
    Document   : addBatch
    Created on : Dec 18, 2016, 6:44:41 PM
    Author     : Chathura madushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Batch</title>

        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/reset.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/print.css?13-0-1-16" media="print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/style.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/template.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/menu.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/pcss/add-batch.css?13-0-1-16-636177445426411652" media="screen" />

        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/res/jquery.js?13-0-1-16"></script>
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/res/x5engine.js?13-0-1-16" data-files-version="13-0-1-16"></script>
        <script type="text/javascript">
            window.onload = function () {
                checkBrowserCompatibility('Your browser does not support the features necessary to display this website.', 'Your browser may not support the features necessary to display this website.', '[1]Update your browser[/1] or [2]continue without updating[/2].', 'http://outdatedbrowser.com/');
            };
        </script>

        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>
        <link rel="icon" href="favicon.png?13-0-1-16-636177445426361616" type="image/png" />

    </head>
    <body>
        <!--<h1>Add Batch</h1>

        <br>
        <br>
        <br>
        <form action="${pageContext.servletContext.contextPath}/batch/add" method="POST">
            Batch name : <input type="text" placeholder="Batch name" required="true" name="batchName"/><br>
            Course ID : 
            <select name="cid">
        <c:forEach items="${requestScope.$courses}" var="courses">
            <option value="${courses.courseId}">${courses.courseId}</option>
        </c:forEach>
    </select>
    <input type="date" placeholder="Start date" required="true" name="startDate"/><br>
    <input type="submit" value="Add Batch"/><br>
</form>
        -->
        <h1>Add Batch</h1>
        <br>
        <br>
        <br>
        <div id="imHeaderBg"></div>

        <div id="imFooterBg"></div>

        <div id="imPage">

            <div id="imHeader">

                <h1 class="imHidden">Add Batch - LMS</h1>

                <div id="imHeaderObjects"></div>

            </div>

            <%@include file="jspx/header.jsp" %>

            <div id="imContentContainer">

                <div id="imContentGraphics"></div>

                <div id="imContent">

                    <a id="imGoToCont"></a>
                    <div id="imPgMnContainer"><div id="imPgMn">
                            <ul class="auto">
                                <li id="imPgMnNode44" class="imPgMnFirst imPgMnCurrent">
                                     <a href="${pageContext.servletContext.contextPath}/view/addBatch">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Add Batch</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode46" class="imPgMnLast">
                                     <a href="${pageContext.servletContext.contextPath}/view/editBatch">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Edit Batch</span>
                                        </span>
                                    </a>
                                </li>
                                <li class="imMnPageClear"></li>
                            </ul>
                        </div></div>
                    <div class="imContentDataContainer">
                        <h2 id="imPgTitle">Add Batch</h2>
                        <div id="imBreadcrumb">Courses &gt; Courses &gt; Batch</div>
                    </div>
                    <div id="imGroup_1" class="imVGroup">
                        <div id="imPageRow_1" class="imPageRow">

                            <div id="imPageRowContent_1" class="imContentDataContainer">
                                <div id="imGroup_2" class="imEGroup"></div>
                            </div>
                        </div>
                        <div id="imPageRow_2" class="imPageRow">

                            <div id="imPageRowContent_2" class="imContentDataContainer">
                                <div id="imCell_1" class="" > 
                                    <div id="imCellStyleGraphics_1"></div>
                                    <div id="imCellStyle_1"  data-responsive-sequence-number="1">
                                        <form id="imObjectForm_1" action="${pageContext.servletContext.contextPath}/batch/add" method="POST" enctype="multipart/form-data">
                                            <fieldset class="first">
                                                <div>
                                                    <div id="imObjectForm_1_1_container" class="imObjectFormFieldContainer"><label id="imObjectForm_1_1_label" for="imObjectForm_1_1">Batch Name*</label><br /><div id="imObjectForm_1_1_field">
                                                            <input type="text" placeholder="Batch name" required="true" name="batchName" class="mandatory " id="imObjectForm_1_1" /></div>
                                                    </div>
                                                    <div id="imObjectForm_1_2_container" class="imObjectFormFieldContainer"><label id="imObjectForm_1_2_label" for="imObjectForm_1_2">Course *</label><br /><div id="imObjectForm_1_2_field">
                                                            <select class="mandatory " id="imObjectForm_1_2" name="cid">
                                                                <c:forEach items="${requestScope.$courses}" var="courses">
                                                                    <option value="${courses.courseId}">${courses.courseId}</option>
                                                                </c:forEach>
                                                            </select></div>
                                                    </div>
                                                    <div id="imObjectForm_1_3_container" class="imObjectFormFieldContainer"><label id="imObjectForm_1_3_label" for="imObjectForm_1_3">Start*</label><br /><div id="imObjectForm_1_3_field">
                                                            <input type="date" placeholder="[dd]/[mm]/[yyyy]" required="true" name="startDate" data-showicon="true" data-format="[dd]/[mm]/[yyyy]" class="mandatory datepicker" id="datepicker" /></div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset>
                                                <input type="text" id="imObjectForm_1_prot" name="imSpProt" />
                                            </fieldset>
                                            <div id="imObjectForm_1_buttonswrap">
                                                <input type="submit" value="Send" />
                                                <input type="reset" value="Reset" />
                                            </div>
                                        </form>
                                        <script>x5engine.boot.push('x5engine.imForm.initForm(\'#imObjectForm_1\', false, {type: \'tip\', showAll: true, classes: \'validator\', landingPage: \'index.html\', labelColor: \'#000000\', fieldColor: \'#000000\', selectedFieldColor: \'#000000\'})');</script>
                                    </div></div></div>
                        </div>

                    </div>
                    <div id="imFooPad"></div><div id="imBtMnContainer" class="imContentDataContainer"><div id="imBtMn"><a href="index.html">Home Page</a> | <a href="register-student.html">Courses</a> | <a href="my-profile.html">My Profile</a> | <a href="inbox.html">Messages</a> | <a href="sign-up.html">Sign Up</a> | <a href="add-student.html">Student</a> | <a href="add-lecturer.html">Lecturer</a> | <a href="imsitemap.html">General Site Map</a></div></div>

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