<%-- 
    Document   : submitAssignment
    Created on : Dec 26, 2016, 11:48:32 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submit Assignment</title>

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

        <link rel="icon" href="favicon.png?13-0-1-16-636177445426361616" type="image/png" />

    </head>

    <body>

        <h1>Submit Assignment</h1>
        <br>
        <br>
        <br>

        <div id="imHeaderBg"></div>

        <div id="imFooterBg"></div>

        <div id="imPage">

            <div id="imHeader">

                <h1 class="imHidden">Submit Assignment - LMS</h1>

                <div id="imHeaderObjects"></div>

            </div>

            <%@include file="jspx/header.jsp" %>

            <div id="imContentContainer">

                <div id="imContentGraphics"></div>

                <div id="imContent">

                    <a id="imGoToCont"></a>
                    <div id="imPgMnContainer"><div id="imPgMn">
                            <ul class="auto">
                                <li id="imPgMnNode12" >
                                    <a href="${pageContext.servletContext.contextPath}/view/addAssignment">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Add Assignment</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode13" >
                                    <a href="${pageContext.servletContext.contextPath}/view/editAssignment">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Edit Assignment</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode32" class="imPgMnFirst imPgMnCurrent">
                                    <a href="${pageContext.servletContext.contextPath}/view/submitAssignment">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Submit Assignment</span>
                                        </span>
                                    </a>
                                </li>


                                <li class="imMnPageClear"></li>
                            </ul>
                        </div></div>
                    <div class="imContentDataContainer">
                        <h2 id="imPgTitle">Submit Assignment</h2>
                        <div id="imBreadcrumb">Assignment</div>
                    </div>
                    <div id="imGroup_1" class="imVGroup">
                        <div id="imPageRow_1" class="imPageRow">

                            <div id="imPageRowContent_1" class="imContentDataContainer">
                                <div id="imGroup_2" class="imEGroup"></div>
                            </div>
                        </div>
                        <div id="imPageRow_2" class="imPageRow">

                            <div id="imPageRowContent_2" class="imContentDataContainer">
                                <div id="imGroup_3" class="imHGroup">
                                    <div id="imCell_1" class="" > 
                                        <div id="imCellStyleGraphics_1"></div>
                                        <div id="imCellStyle_1"  data-responsive-sequence-number="1">
                                            <form:form id="imObjectForm_1" action="${pageContext.servletContext.contextPath}/assignment/submit" method="post" model="emp" enctype="multipart/form-data">
                                                <fieldset class="first">
                                                    <div>
                                                        <div id="imObjectForm_1_1_container" class="imObjectFormFieldContainer">
                                                            <label id="imObjectForm_1_1_label" for="imObjectForm_1_1">Assignment *</label><br /><div id="imObjectForm_1_1_field">
                                                                <select class="mandatory " id="imObjectForm_1_1" name="aid">
                                                                    <c:forEach items="${requestScope.lst}" var="as">
                                                                        <option value="${as.assignmentId}">${as.assignmentName}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <br>
                                                        <br>
                                                        <br>
                                                        <div id="imObjectForm_1_2_container" class="imObjectFormFieldContainer"><label id="imObjectForm_1_2_label" for="imObjectForm_1_2">Upload Attachment*</label><br /><div id="imObjectForm_1_2_field">
                                                                <input type="file" class="mandatory " data-extensions="pdf,ppt,doc,docx,xlsx,xls,pptx,jpg" id="imObjectForm_1_2" name="imObjectForm_1_2" /></div>
                                                        </div>
                                                        <br>
                                                        <br>
                                                        <br>
                                                    </div>
                                                </fieldset>
                                                <fieldset>
                                                    <input type="text" id="imObjectForm_1_prot" name="imSpProt" />
                                                </fieldset>
                                                <div id="imObjectForm_1_buttonswrap">
                                                    <input type="submit" value="Send" />
                                                    <input type="reset" value="Reset" />
                                                </div>
                                            </form:form>
                                            <script>x5engine.boot.push('x5engine.imForm.initForm(\'#imObjectForm_1\', false, {type: \'tip\', showAll: true, classes: \'validator\', landingPage: \'index.html\', labelColor: \'#000000\', fieldColor: \'#000000\', selectedFieldColor: \'#000000\'})');</script>
                                        </div></div>
                                    <script type="text/javascript">
                                        x5engine.boot.push(function () {
                                            x5engine.utils.onElementInViewPort($('#imCell_1').get(0), function () {
                                                x5engine.utils.revealObject($("#imCell_1"))
                                            }, 100);
                                        });
                                    </script>
                                    <div id="imGroup_4" class="imVGroup">
                                        <div id="imGroup_5" class="imEGroup"></div>
                                        <div id="imGroup_6" class="imEGroup"></div>
                                    </div>
                                </div></div>
                        </div>
                        <div id="imPageRow_3" class="imPageRow">

                            <div id="imPageRowContent_3" class="imContentDataContainer">
                                <div id="imGroup_7" class="imEGroup"></div>
                            </div>
                        </div>

                    </div>
                    <div id="imFooPad"></div><div id="imBtMnContainer" class="imContentDataContainer"><div id="imBtMn"><a href="index.html">Home Page</a> | <a href="my-courses.html">Courses</a> | <a href="my-profile.html">My Profile</a> | <a href="page-9.html">Messages</a> | <a href="sign-up.html">Sign Up</a> | <a href="imsitemap.html">General Site Map</a></div></div>

                    <div class="imClear"></div>

                </div>

            </div>

            <%@include file="jspx/footer.jsp" %>

        </div>

        <span class="imHidden"><a href="#imGoToCont" title="Read this page again">Back to content</a> | <a href="#imGoToMenu" title="Remain on this page">Back to main menu</a></span>



        <noscript class="imNoScript"><div class="alert alert-red">To use this website you must enable JavaScript.</div></noscript>     

    </body>
</html>
