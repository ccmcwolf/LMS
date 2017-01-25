<%-- 
    Document   : editStudent
    Created on : Dec 26, 2016, 1:53:14 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Student</title>

        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/reset.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/print.css?13-0-1-16" media="print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/style.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/template.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/menu.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/pcss/add-student.css?13-0-1-16-636177445425450965" media="screen" />

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

        <link rel="icon" href="favicon.png?13-0-1-16-636177445425370903" type="image/png" />


    </head>
    <body>
        <h1>Edit Student</h1>
        <br>
        <br>
        <br>

        <div id="imFooterBg"></div>

        <div id="imPage">

            <div id="imHeader">

                <h1 class="imHidden">Edit Student - LMS</h1>

                <div id="imHeaderObjects"></div>

            </div>

            <%@include file="jspx/header.jsp" %>

            <div id="imContentContainer">

                <div id="imContentGraphics"></div>

                <div id="imContent">

                    <a id="imGoToCont"></a>
                    <div id="imPgMnContainer">
                        <div id="imPgMn">
                            <ul class="auto">
                                <li id="imPgMnNode17" class="imPgMnFirst imPgMnCurrent">
                                    <a href="${pageContext.servletContext.contextPath}/view/addstudent">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Add Student</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode18" class="imPgMnLast">
                                    <a href="edit-student.html">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Edit Student</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode49">
                                    <a href="${pageContext.servletContext.contextPath}/view/viewstudents">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">View Students</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode50">
                                    <a href="${pageContext.servletContext.contextPath}/view/searchstudent">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Search Student</span>
                                        </span>
                                    </a>
                                </li>
                                <li class="imMnPageClear"></li>
                            </ul>
                        </div>
                    </div>
                    <div class="imContentDataContainer">
                        <h2 id="imPgTitle">Edit Student</h2>
                        <div id="imBreadcrumb">Student</div>
                    </div>
                    <div id="imGroup_1" class="imVGroup">
                        <div id="imPageRow_1" class="imPageRow">

                            <div id="imPageRowContent_1" class="imContentDataContainer">
                                <div id="imGroup_2" class="imEGroup"></div>
                            </div>
                        </div>
                        <div id="imPageRow_2" class="imPageRow">

                            <div id="imPageRowContent_2" class="imContentDataContainer">
                                <div id="imCell_3" class="" > 
                                    <div id="imCellStyleGraphics_3"></div>
                                    <div id="imCellStyle_3"  data-responsive-sequence-number="1">

                                        <form action="${pageContext.servletContext.contextPath}/student/edit/search" method="post">

                                            <label>Student ID*</label><br />

                                            <input type="text" class="mandatory " name="stid" />
                                            <input type="submit" value="Search">


                                        </form>

                                        <c:if test="${requestScope.stndt != null}">
                                            <c:if test="${requestScope.stndt.name == 'no_student'}">
                                                <div>Not found student</div>
                                            </c:if>
                                            <c:if test="${requestScope.stndt.name != 'no_student'}">
                                                <form id="imObjectForm_3" action="${pageContext.servletContext.contextPath}/student/edit" method="POST" enctype="multipart/form-data">
                                                    <fieldset class="first">
                                                        <div>
                                                            <input type="hidden" value="${requestScope.stndt.studentId}" name="id">
                                                            <div id="imObjectForm_5_1_container" class="imObjectFormFieldContainer"><label id="imObjectForm_5_1_label" for="imObjectForm_5_1">Student Name*</label><br /><div id="imObjectForm_5_1_field">
                                                                    <input type="text" class="mandatory " id="imObjectForm_5_1" name="name" value="${requestScope.stndt.name}"/></div>
                                                            </div>
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <div id="imObjectForm_5_2_container" class="imObjectFormFieldContainer"><label id="imObjectForm_5_2_label" for="imObjectForm_5_2">Date of Birth*</label><br /><div id="imObjectForm_5_2_field">
                                                                    <input type="text" data-showicon="true"  data-format="[yyyy]-[mm]-[dd]" class="mandatory datepicker" id="datepicker" name="bdate" value="${requestScope.stndt.dob}" /></div>
                                                            </div>
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <div id="imObjectForm_5_3_container" class="imObjectFormFieldContainer"><label id="imObjectForm_5_3_label" for="imObjectForm_5_3">Address*</label><br /><div id="imObjectForm_5_3_field">
                                                                    <textarea class="mandatory " id="imObjectForm_5_3" name="address">${requestScope.stndt.address}</textarea></div>
                                                            </div>
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <input type="hidden" value="${requestScope.stndt.user.userId}" name="urid">
                                                            <div id="imObjectForm_5_5_container" class="imObjectFormFieldContainer"><label id="imObjectForm_5_5_label" for="imObjectForm_5_5">User Name*</label><br /><div id="imObjectForm_5_5_field">
                                                                    <input type="text" class="" id="imObjectForm_5_5" name="uname" value="${requestScope.stndt.user.userName}" /></div>
                                                            </div>
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <div id="imObjectForm_5_6_container" class="imObjectFormFieldContainer"><label id="imObjectForm_5_6_label" for="imObjectForm_5_6">Password*</label><br /><div id="imObjectForm_5_6_field">
                                                                    <input type="password" class="" id="imObjectForm_5_6" name="imObjectForm_5_6" /></div>
                                                                <label id="imObjectForm_5_6_chklabel" for="imObjectForm_5_6_chk">Repeat password</label><br /><div id="imObjectForm_5_6_chkfield">
                                                                    <input type="password" class="equalTo[imObjectForm_5_6]" id="imObjectForm_5_6_chk" name="pswrd" /></div>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                    <fieldset>
                                                        <input type="text" id="imObjectForm_3_prot" name="imSpProt" />
                                                    </fieldset>
                                                    <div id="imObjectForm_3_buttonswrap">
                                                        <input type="submit" value="Send" />
                                                        <input type="reset" value="Reset" />
                                                    </div>
                                                </form>
                                            </c:if>
                                        </c:if>                        







                                        <script>x5engine.boot.push('x5engine.imForm.initForm(\'#imObjectForm_3\', false, {type: \'tip\', showAll: true, classes: \'validator\', landingPage: \'index.html\', labelColor: \'#000000\', fieldColor: \'#000000\', selectedFieldColor: \'#000000\'})');</script>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    x5engine.boot.push(function () {
                                        x5engine.utils.onElementInViewPort($('#imCell_3').get(0), function () {
                                            x5engine.utils.revealObject($("#imCell_3"))
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

            <%@include file="jspx/footer.jsp" %>

        </div>

        <span class="imHidden"><a href="#imGoToCont" title="Read this page again">Back to content</a> | <a href="#imGoToMenu" title="Remain on this page">Back to main menu</a></span>

    </body>
</html>
