<%-- 
    Document   : addAssignment
    Created on : Dec 26, 2016, 11:31:58 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" lang="en-GB" dir="ltr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Assignment</title>

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
        <h1>Add Assignment</h1>
        <br>
        <br>
        <br>

        <div id="imHeaderBg"></div>

        <div id="imFooterBg"></div>

        <div id="imPage">

            <div id="imHeader">

                <h1 class="imHidden">Add Assignment - LMS</h1>

                <div id="imHeaderObjects"></div>

            </div>

            <%@include file="jspx/header.jsp" %>

            <div id="imContentContainer">

                <div id="imContentGraphics"></div>

                <div id="imContent">

                    <a id="imGoToCont"></a>
                    <div id="imPgMnContainer"><div id="imPgMn">
                            <ul class="auto">

                                <li id="imPgMnNode12" class="imPgMnFirst imPgMnCurrent">
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
                                <li id="imPgMnNode32" >
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
                        <h2 id="imPgTitle">Add Assignment</h2>
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
                                <div id="imCell_4" class="" > 
                                    <div id="imCellStyleGraphics_4"></div>
                                    <div id="imCellStyle_4"  data-responsive-sequence-number="1">
                                        <form id="imObjectForm_4" action="${pageContext.servletContext.contextPath}/assignment/add" method="POST" enctype="multipart/form-data">
                                            <fieldset class="first">
                                                <div>
                                                    <div id="imObjectForm_4_1_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_1_label" for="imObjectForm_4_1">Assignment ID</label><br /><div id="imObjectForm_4_1_field">
                                                            <input type="text" name="assignmentId" required="true" class="mandatory" id="imObjectForm_4_1"/></div>
                                                    </div>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <div id="imObjectForm_4_2_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_2_label" for="imObjectForm_4_2">Course ID*</label><br /><div id="imObjectForm_4_2_field">
                                                            <select required="true" class="mandatory" id="imObjectForm_4_2" name="courseId">
                                                                <c:forEach items="${requestScope.crs}" var="course">
                                                                    <option value="${course.courseId}">${course.courseName}</option>
                                                                </c:forEach>
                                                            </select>

                                                        </div>
                                                    </div>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <div id="imObjectForm_4_3_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_3_label" for="imObjectForm_4_3">Assignment Name*</label><br /><div id="imObjectForm_4_3_field">
                                                            <input type="text" required="true" class="mandatory" id="imObjectForm_4_3" name="assignmentName" /></div>
                                                    </div>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <div id="imObjectForm_4_4_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_4_label" for="imObjectForm_4_4">Submission Closing Date*</label><br /><div id="imObjectForm_4_4_field">
                                                            <input type="text" data-showicon="true" data-format="[dd]/[mm]/[yyyy]" placeholder="[dd]/[mm]/[yyyy]" class="mandatory datepicker" id="imObjectForm_4_4" name="closingDate" /><img id="imObjectForm_2_4_icon" class="imDatePickerIcon" src="res/date.gif"></div>
                                                    </div>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <div id="imObjectForm_4_5_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_5_label" for="imObjectForm_4_5">Reference Materials*</label><br /><div id="imObjectForm_4_5_field">
                                                            <input type="file" class="mandatory " data-extensions="pdf,jpg,jpeg,png,zip,docx,doc,xls,xlsx,ppt,pptx" id="imObjectForm_4_5" name="refmaterials" /></div>
                                                    </div>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <div id="imObjectForm_4_6_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_2_label" for="imObjectForm_4_2">Module*</label><br /><div id="imObjectForm_4_2_field">
                                                            <select class="mandatory " id="imObjectForm_4_2" name="module">
                                                                <c:forEach items="${requestScope.mdl}" var="m">
                                                                    <option value="${m.moduleId}">${m.moduleName}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <div id="imObjectForm_4_2_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_2_label" for="imObjectForm_4_2">Batch*</label><br /><div id="imObjectForm_4_2_field">
                                                            <select class="mandatory " id="imObjectForm_4_2" name="batch">
                                                                <c:forEach items="${requestScope.btc}" var="bt">
                                                                    <option value="${bt.batchId}">${bt.batchName}</option>
                                                                </c:forEach>
                                                            </select></div>
                                                    </div>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <div id="imObjectForm_4_2_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_2_label" for="imObjectForm_4_2">Lecture</label><br /><div id="imObjectForm_4_2_field">
                                                            <select class="mandatory " id="imObjectForm_4_2" name="lecture">
                                                                <c:forEach items="${requestScope.lc}" var="lec">
                                                                    <option value="${lec.lecturerId}">${lec.lecturerName}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <br>
                                                    <br>
                                                </div>
                                            </fieldset>
                                            <fieldset>
                                                <input type="text" id="imObjectForm_4_prot" name="imSpProt" />
                                            </fieldset>
                                            <div id="imObjectForm_4_buttonswrap">
                                                <input type="submit" value="Send" />
                                                <input type="reset" value="Reset" />
                                            </div>
                                        </form>
                                        <script>x5engine.boot.push('x5engine.imForm.initForm(\'#imObjectForm_4\', false, {type: \'tip\', showAll: true, classes: \'validator\', landingPage: \'index.html\', labelColor: \'#000000\', fieldColor: \'#000000\', selectedFieldColor: \'#000000\'})');</script>
                                    </div></div>
                                <script type="text/javascript">
                                    x5engine.boot.push(function () {
                                        x5engine.utils.onElementInViewPort($('#imCell_4').get(0), function () {
                                            x5engine.utils.revealObject($("#imCell_4"))
                                        }, 100);
                                    });
                                </script>
                            </div>




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
