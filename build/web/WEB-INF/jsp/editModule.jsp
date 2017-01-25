<%-- 
    Document   : editModule
    Created on : Dec 26, 2016, 10:58:56 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Module</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />

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

    </head>
    <body>
        <h1>Edit Module</h1>
        <br>
        <br>
        <br>
         <div id="imHeaderBg"></div>

        <div id="imFooterBg"></div>

        <div id="imPage">

            <div id="imHeader">

                <h1 class="imHidden">Edit Module - LMS</h1>

                <div id="imHeaderObjects"></div>

            </div>

            <%@include file="jspx/header.jsp" %>

            <div id="imContentContainer">

                <div id="imContentGraphics"></div>

                <div id="imContent">

                    <a id="imGoToCont"></a>
                    <div id="imPgMnContainer"><div id="imPgMn">
                            <ul class="auto">
                                <li id="imPgMnNode37" class="imPgMnFirst ">
                                    <a href="${pageContext.servletContext.contextPath}/view/addModule">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Add Module</span>
                                        </span> 
                                    </a>
                                </li>
                                <li id="imPgMnNode38" class="imPgMnLast imPgMnCurrent">
                                    <a href="${pageContext.servletContext.contextPath}/view/editModule">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Edit Module</span>
                                        </span>
                                    </a>
                                </li>
                                <li class="imMnPageClear"></li>
                            </ul>
                        </div></div>
                    <div class="imContentDataContainer">
                        <h2 id="imPgTitle">Edit Module</h2>
                        <div id="imBreadcrumb">Courses &gt; Courses &gt; Module</div>
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
                                        <form id="imObjectForm_1" action="${pageContext.servletContext.contextPath}/course/moduleedit" method="post" enctype="multipart/form-data">
                                            <fieldset class="first">
                                                <div>
                                                    <div id="imObjectForm_1_1_container" class="imObjectFormFieldContainer"><label id="imObjectForm_1_1_label" for="imObjectForm_1_1">Course*</label><br /><div id="imObjectForm_1_1_field">
                                                            <select class="mandatory " id="imObjectForm_1_1" name="courseID">
                                                                <c:forEach items="${requestScope.$courses}" var="courses">
                                                                    <option value="${courses.courseId}">${courses.courseId}</option>
                                                                </c:forEach>
                                                            </select></div>
                                                    </div>
                                                    <div id="imObjectForm_1_2_container" class="imObjectFormFieldContainer"><label id="imObjectForm_1_2_label" for="imObjectForm_1_2">Module Name*</label><br /><div id="imObjectForm_1_2_field">
                                                            <input type="text" placeholder="Module name" required="true" name="moduleName" class="mandatory " id="imObjectForm_1_2" /></div>
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
            <%@include file="jspx/footer.jsp" %>                                
        </div>

        <span class="imHidden"><a href="#imGoToCont" title="Read this page again">Back to content</a> | <a href="#imGoToMenu" title="Remain on this page">Back to main menu</a></span>



        <noscript class="imNoScript"><div class="alert alert-red">To use this website you must enable JavaScript.</div></noscript>
   
        
    </body>
</html>
