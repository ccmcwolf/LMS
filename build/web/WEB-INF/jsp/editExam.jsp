<%-- 
    Document   : editExam
    Created on : Dec 26, 2016, 1:19:59 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Exam</title>

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
        <h1>Edit Exam</h1>
        <br>
        <br>
        <br>
        
         <div id="imHeaderBg"></div>

        <div id="imFooterBg"></div>

        <div id="imPage">

            <div id="imHeader">

                <h1 class="imHidden">Edit Exam - LMS</h1>

                <div id="imHeaderObjects"></div>

            </div>

            <%@include file="jspx/header.jsp" %>

            <div id="imContentContainer">

                <div id="imContentGraphics"></div>

                <div id="imContent">

                    <a id="imGoToCont"></a>
                    <div id="imPgMnContainer"><div id="imPgMn">
                            <ul class="auto">
                                <li id="imPgMnNode27" >
                                    <a href="${pageContext.servletContext.contextPath}/view/addExam">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Add Exam</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode28" class="imPgMnFirst imPgMnCurrent">
                                    <a href="${pageContext.servletContext.contextPath}/view/editExam">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Edit Exam</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode33">
                                    <a href="${pageContext.servletContext.contextPath}/view/doExam">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Do Exam</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode42" >
                                    <a href="${pageContext.servletContext.contextPath}/view/examAnswer">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Exam Answer</span>
                                        </span>
                                    </a>
                                </li>
                                <li class="imMnPageClear"></li>
                            </ul>
                        </div></div>
                    <div class="imContentDataContainer">
                        <h2 id="imPgTitle">Edit Exam</h2>
                        <div id="imBreadcrumb">Courses &gt; Exams</div>
                    </div>
                    <div id="imGroup_1" class="imVGroup">
                        <div id="imPageRow_1" class="imPageRow">

                            <div id="imPageRowContent_1" class="imContentDataContainer">
                                <div id="imCell_1" class="" > <div id="imCellStyleGraphics_1"></div><div id="imCellStyle_1"  data-responsive-sequence-number="1"><form id="imObjectForm_1" action="imemail/imEmailForm_111165t9.php" method="post" enctype="multipart/form-data">
                                            <fieldset class="first">
                                                <div>
                                                    <div id="imObjectForm_1_1_container" class="imObjectFormFieldContainer"><label id="imObjectForm_1_1_label" for="imObjectForm_1_1">Exam ID*</label><br /><div id="imObjectForm_1_1_field">
                                                            <input type="text" class="mandatory " id="imObjectForm_1_1" name="imObjectForm_1_1" /></div>
                                                    </div>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    
                                                    <div id="imObjectForm_1_2_container" class="imObjectFormFieldContainer"><label id="imObjectForm_1_2_label" for="imObjectForm_1_2">Exam Name*</label><br /><div id="imObjectForm_1_2_field">
                                                            <input type="text" class="mandatory " id="imObjectForm_1_2" name="imObjectForm_1_2" /></div>
                                                    </div>
                                                     <br>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <div id="imObjectForm_1_3_container" class="imObjectFormFieldContainer"><label id="imObjectForm_1_3_label" for="imObjectForm_1_3">Module ID*</label><br /><div id="imObjectForm_1_3_field">
                                                            <input type="text" class="mandatory " id="imObjectForm_1_3" name="imObjectForm_1_3" /></div>
                                                    </div>
                                                     <br>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <div id="imObjectForm_1_4_container" class="imObjectFormFieldContainer"><label id="imObjectForm_1_4_label" for="imObjectForm_1_4">Duration in hours*</label><br /><div id="imObjectForm_1_4_field">
                                                            <input type="text" class="mandatory valNumber" id="imObjectForm_1_4" name="imObjectForm_1_4" /></div>
                                                    </div>
                                                     <br>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <div id="imObjectForm_1_5_container" class="imObjectFormFieldContainer"><label id="imObjectForm_1_5_label" for="imObjectForm_1_5">Number of Questions*</label><br /><div id="imObjectForm_1_5_field">
                                                            <input type="text" class="mandatory valNumber" id="imObjectForm_1_5" name="imObjectForm_1_5" /></div>
                                                    </div>
                                                     <br>
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
                                        </form>
                                        <script>x5engine.boot.push('x5engine.imForm.initForm(\'#imObjectForm_1\', false, {type: \'tip\', showAll: true, classes: \'validator\', landingPage: \'index.html\', labelColor: \'#000000\', fieldColor: \'#000000\', selectedFieldColor: \'#000000\'})');</script>
                                    </div></div><div id="imCell_2" class="" > <div id="imCellStyleGraphics_2"></div><div id="imCellStyle_2"  data-responsive-sequence-number="2"><div id="imTableObject_27_02">
                                            <div class="text-tab-content"  id="imTableObject_27_02_tab0" style="">
                                                <div class="text-inner">
                                                    <table data-minrequestedwidth="625" data-computedwidth="625" style="width: 625px;"><tbody><tr><td colspan="2" style="width: 617px; height: 66px; margin-top: 0px; margin-left: 0px;" class="imVt"><div><span class="fs11">Questuion</span></div></td></tr><tr><td colspan="2" style="width: 617px; height: 66px; margin-top: 0px; margin-left: 0px;" class="imVt"><br></td></tr><tr></tr><tr></tr><tr></tr><tr></tr></tbody></table>
                                                </div>
                                            </div>

                                        </div>
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
