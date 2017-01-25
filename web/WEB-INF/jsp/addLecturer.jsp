<%-- 
    Document   : addLecturer
    Created on : Dec 18, 2016, 6:37:22 PM
    Author     : Chathura madushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Lecturer</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/reset.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/print.css?13-0-1-16" media="print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/style.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/template.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/menu.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/pcss/add-lecturer.css?13-0-1-16-636177445425230817" media="screen" />

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


        <link rel="icon" href="favicon.png?13-0-1-16-636177445425160758" type="image/png" />
    </head>
    <body>
        <!--
        <h1>Add Lecturer</h1>

        <br>
        <br>
        <br>
        <form action="${pageContext.servletContext.contextPath}/lecturer/add" method="POST">
            <input type="text" placeholder="Username" required="true" name="username"/><br>
            <input type="password" placeholder="Password" required="true" name="password"/><br>
            <input type="text" placeholder="Lecturer name" required="true" name="lectName"/><br>
            <input type="date" placeholder="DOB" required="true" name="dob"/><br>
            <input type="text" placeholder="Address" required="true" name="address"/><br>
            <input type="submit" value="Add Lecturer"/><br>
        </form>
        -->


        <div id="imHeaderBg"></div>

        <div id="imFooterBg"></div>

        <div id="imPage">

            <div id="imHeader">

                <h1 class="imHidden">Add Lecturer - LMS</h1>

                <div id="imHeaderObjects"></div>

            </div>

            <%@include file="jspx/header.jsp" %>

            <div id="imContentContainer">

                <div id="imContentGraphics"></div>

                <div id="imContent">

                    <a id="imGoToCont"></a>
                    <div id="imPgMnContainer"><div id="imPgMn">
                            <ul class="auto">
                                <li id="imPgMnNode20" class="imPgMnFirst imPgMnCurrent">
                                    <a href="${pageContext.servletContext.contextPath}/view/addlecturer">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Add Lecturer</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode21" class="imPgMnLast">
                                    <a href="edit-lecturer.html">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Edit Lecturer</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode21" class="imPgMnLast">
                                    <a href="${pageContext.servletContext.contextPath}/view/searchlecturer">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Search Lecturer</span>
                                        </span>
                                    </a>
                                </li>
                                <li class="imMnPageClear"></li>
                            </ul>
                        </div></div>
                    <div class="imContentDataContainer">
                        <h2 id="imPgTitle">Add Lecturer</h2>
                        <div id="imBreadcrumb">Lecturer</div>
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
                                        <form id="imObjectForm_4" action="${pageContext.servletContext.contextPath}/lecturer/add" method="POST" enctype="multipart/form-data">
                                            <fieldset class="first">
                                                <div>
                                                    <div id="imObjectForm_4_1_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_1_label" for="imObjectForm_4_1">Lecturer Name*</label><br /><div id="imObjectForm_4_1_field">
                                                            <input type="text" placeholder="Lecturer name" required="true" name="lectName" class="mandatory " id="imObjectForm_4_1"  /></div>
                                                    </div>
                                                    <div id="imObjectForm_4_2_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_2_label" for="imObjectForm_4_2">NIC</label><br /><div id="imObjectForm_4_2_field">
                                                            <input type="text" maxlength="10" class="valMaxLength[10]" id="imObjectForm_4_2" name="imObjectForm_4_2" /></div>
                                                    </div>
                                                    <div id="imObjectForm_4_3_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_3_label" for="imObjectForm_4_3">Date of Birth*</label><br />
                                                        <input type="date" id="datepicker" placeholder="[dd]/[mm]/[yyyy]"/>
                                                    </div>
                                                    <div id="imObjectForm_4_4_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_4_label" for="imObjectForm_4_4">Address*</label><br /><div id="imObjectForm_4_4_field">
                                                            <textarea placeholder="Address" required="true" name="address" class="mandatory " id="imObjectForm_4_4" ></textarea></div>
                                                    </div>
                                                    <div id="imObjectForm_4_5_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_5_label" for="imObjectForm_4_5">Contact Number*</label><br /><div id="imObjectForm_4_5_field">
                                                            <input type="text" class="mandatory " id="imObjectForm_4_5" name="imObjectForm_4_5" /></div>
                                                    </div>
                                                    <div id="imObjectForm_4_6_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_6_label" for="imObjectForm_4_6">User Name*</label><br /><div id="imObjectForm_4_6_field">
                                                            <input type="text" placeholder="Username" required="true" name="username" class="mandatory " id="imObjectForm_4_6" /></div>
                                                    </div>
                                                    <div id="imObjectForm_4_7_container" class="imObjectFormFieldContainer"><label id="imObjectForm_4_7_label" for="imObjectForm_4_7">Password*</label><br /><div id="imObjectForm_4_7_field">
                                                            <input type="password" class="mandatory " id="imObjectForm_4_7" name="imObjectForm_4_7" /></div>
                                                        <label id="imObjectForm_4_7_chklabel" for="imObjectForm_4_7_chk">Repeat password*</label><br /><div id="imObjectForm_4_7_chkfield">
                                                            <input type="password" placeholder="Password" required="true" name="password" class="mandatory equalTo[imObjectForm_4_7]" id="imObjectForm_4_7_chk" /></div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset>
                                                <input type="text" id="imObjectForm_4_prot" name="imSpProt" />
                                            </fieldset>
                                            <div id="imObjectForm_4_buttonswrap">
                                                <input type="submit" value="Save" />
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