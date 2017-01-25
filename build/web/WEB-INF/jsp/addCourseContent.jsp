<%-- 
    Document   : addCourseContent
    Created on : Dec 18, 2016, 10:04:46 PM
    Author     : Chathura madushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course content</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />



        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/reset.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/print.css?13-0-1-16" media="print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/style.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/template.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/menu.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/pcss/add-content-1.css?13-0-1-16-636177445426521730" media="screen" />

        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/res/jquery.js?13-0-1-16"></script>
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/res/x5engine.js?13-0-1-16" data-files-version="13-0-1-16"></script>

        <script type="text/javascript">
            window.onload = function () {
                checkBrowserCompatibility('Your browser does not support the features necessary to display this website.', 'Your browser may not support the features necessary to display this website.', '[1]Update your browser[/1] or [2]continue without updating[/2].', 'http://outdatedbrowser.com/');
            };
        </script>

        <link rel="icon" href="favicon.png?13-0-1-16-636177445426441669" type="image/png" />
    </head>
    <body>
        <!--
        <h1>Course content</h1>
        <form:form action="${pageContext.servletContext.contextPath}/course/add/content" method="POST" modelAttribute="flupld" enctype="multipart/form-data">
            Name: <form:input type="text" placeholder="Name" name="name" path="name"/><br>
            Heading: <form:input type="text" placeholder="Heading:" name="heading" path="heading"/><br>
            Sub-Heading: <form:input type="text" placeholder="Sub-Heading" name="sheading" path="sheading"/><br>
            Content Body: <form:input type="text" placeholder="Content Body" name="conentBody" path="conentBody"/><br>
            File: <form:input type="file" name="file" path="dataFile"/>
            Batch ID : 
            <form:select name="bid" path="bid">
                <c:forEach items="${requestScope.$batches}" var="batches">
                <option value="${batches.batchId}">${batches.batchId}</option>
            </c:forEach>
        </form:select><br>
        Module ID : 
        <form:select name="mid" path="mid">
            <c:forEach items="${requestScope.$batches}" var="batches">
                <option value="${batches.batchId}">${batches.batchId}</option>
            </c:forEach>
        </form:select><br>
        <input type="submit" value="Add Course Content"/>
    </form:form>
        -->
    <div id="imHeaderBg"></div>

    <div id="imFooterBg"></div>

    <div id="imPage">

        <div id="imHeader">

            <h1 class="imHidden">Add Content - LMS</h1>

            <div id="imHeaderObjects"></div>

        </div>

        <%@include file="jspx/header.jsp" %>

        <div id="imContentContainer">

            <div id="imContentGraphics"></div>

            <div id="imContent">

                <a id="imGoToCont"></a>
                <div id="imPgMnContainer"><div id="imPgMn">
                        <ul class="auto">
                            <li id="imPgMnNode40" class="imPgMnFirst imPgMnCurrent">
                                <a href="add-content-1.html">
                                    <span class="imPgMnBorder">
                                        <span class="imPgMnImg"></span><span class="imPgMnTxt">Add Content</span>
                                    </span>
                                </a>
                            </li>
                            <li id="imPgMnNode41" class="imPgMnLast">
                                <a href="edit-content.html">
                                    <span class="imPgMnBorder">
                                        <span class="imPgMnImg"></span><span class="imPgMnTxt">Edit Content</span>
                                    </span>
                                </a>
                            </li>
                            <li class="imMnPageClear"></li>
                        </ul>
                    </div></div>
                <div class="imContentDataContainer">
                    <h2 id="imPgTitle">Add Content</h2>
                    <div id="imBreadcrumb">Courses &gt; Courses &gt; Content</div>
                </div>
                <div id="imGroup_1" class="imVGroup">
                    <div id="imPageRow_1" class="imPageRow">

                        <div id="imPageRowContent_1" class="imContentDataContainer">
                            <div id="imGroup_2" class="imHGroup">
                                <div id="imCell_1"></div><div id="imGroup_3" class="imEGroup"></div>

                            </div></div>
                    </div>
                    <div id="imPageRow_2" class="imPageRow">

                        <div id="imPageRowContent_2" class="imContentDataContainer">
                            <div id="imCell_2" class="" > 
                                <div id="imCellStyleGraphics_2"></div>
                                <div id="imCellStyle_2"  data-responsive-sequence-number="2">
                                    <form:form id="imObjectForm_2" action="${pageContext.servletContext.contextPath}/course/add/content" method="POST" modelAttribute="flupld" enctype="multipart/form-data">
                                        <fieldset class="first">
                                            <div>
                                                <div id="imObjectForm_2_1_container" class="imObjectFormFieldContainer"><label id="imObjectForm_2_1_label" for="imObjectForm_2_1">Content ID</label><br /><div id="imObjectForm_2_1_field">
                                                        <input type="text" class="" id="imObjectForm_2_1" name="imObjectForm_2_1" /></div>
                                                </div>
                                                <div id="imObjectForm_2_2_container" class="imObjectFormFieldContainer"><label id="imObjectForm_2_2_label" for="imObjectForm_2_2">Module ID*</label><br /><div id="imObjectForm_2_2_field">
                                                        <input type="text" class="mandatory " id="imObjectForm_2_2" name="imObjectForm_2_2" /></div>
                                                </div>
                                                <div id="imObjectForm_2_3_container" class="imObjectFormFieldContainer"><label id="imObjectForm_2_3_label" for="imObjectForm_2_3">Heading*</label><br /><div id="imObjectForm_2_3_field">
                                                        <input type="text" placeholder="Name" name="name" path="name" class="mandatory " id="imObjectForm_2_3" /></div>
                                                </div>
                                                <div id="imObjectForm_2_4_container" class="imObjectFormFieldContainer"><label id="imObjectForm_2_4_label" for="imObjectForm_2_4">Sub Heading*</label><br /><div id="imObjectForm_2_4_field">
                                                        <input type="text" class="mandatory " id="imObjectForm_2_4" name="imObjectForm_2_4" /></div>
                                                </div>
                                                <div id="imObjectForm_2_5_container" class="imObjectFormFieldContainer"><label id="imObjectForm_2_5_label" for="imObjectForm_2_5">Descriptions*</label><br /><div id="imObjectForm_2_5_field">
                                                        <textarea class="mandatory valMaxLength[10000]" id="imObjectForm_2_5" name="imObjectForm_2_5" ></textarea></div>
                                                </div>
                                                <div id="imObjectForm_2_6_container" class="imObjectFormFieldContainer"><label id="imObjectForm_2_6_label" for="imObjectForm_2_6">Attach Content*</label><br /><div id="imObjectForm_2_6_field">
                                                        <input type="file" class="mandatory " data-extensions="jpg" id="imObjectForm_2_6" name="imObjectForm_2_6" /></div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset>
                                            <input type="text" id="imObjectForm_2_prot" name="imSpProt" />
                                        </fieldset>
                                        <div id="imObjectForm_2_buttonswrap">
                                            <input type="submit" value="Send" />
                                            <input type="reset" value="Reset" />
                                        </div>
                                    </form:form>
                                    <script>x5engine.boot.push('x5engine.imForm.initForm(\'#imObjectForm_2\', false, {type: \'tip\', showAll: true, classes: \'validator\', landingPage: \'index.html\', labelColor: \'#000000\', fieldColor: \'#000000\', selectedFieldColor: \'#000000\'})');</script>
                                </div></div></div>
                    </div>

                </div>
                <div id="imFooPad"></div><div id="imBtMnContainer" class="imContentDataContainer"><div id="imBtMn"><a href="index.html">Home Page</a> | <a href="register-student.html">Courses</a> | <a href="my-profile.html">My Profile</a> | <a href="inbox.html">Messages</a> | <a href="sign-up.html">Sign Up</a> | <a href="add-student.html">Student</a> | <a href="add-lecturer.html">Lecturer</a> | <a href="imsitemap.html">General Site Map</a></div></div>

                <div class="imClear"></div>

            </div>

        </div>

        <%@include file="jspx/footer.jsp" %>

    </div>

    <span class="imHidden"><a href="#imGoToCont" title="Read this page again">Back to content</a> | <a href="#imGoToMenu" title="Remain on this page">Back to main menu</a></span>



    <noscript class="imNoScript"><div class="alert alert-red">To use this website you must enable JavaScript.</div></noscript>


</body>
</html>
