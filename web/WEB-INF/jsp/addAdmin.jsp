<%-- 
    Document   : addAdmin
    Created on : Dec 18, 2016, 6:10:42 PM
    Author     : Chathura madushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Admin  | LMS</title>

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
        <h1>Add admin</h1>

        <br>
        <br>
        <br>


        <div id="imHeaderBg"></div>

        <div id="imFooterBg"></div>

        <div id="imPage">

            <div id="imHeader">

                <h1 class="imHidden">Add Admin - LMS</h1>

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
                                    <a href="${pageContext.servletContext.contextPath}/view/addadmin">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Add Admin</span>
                                        </span>
                                    </a>
                                </li>
                                <li id="imPgMnNode17" >
                                    <a href="${pageContext.servletContext.contextPath}/view/searchadmin">
                                        <span class="imPgMnBorder">
                                            <span class="imPgMnImg"></span><span class="imPgMnTxt">Search Admin</span>
                                        </span>
                                    </a>
                                </li>

                                <li class="imMnPageClear"></li>
                            </ul>
                        </div>
                    </div>
                    <div class="imContentDataContainer">
                        <h2 id="imPgTitle">Add Admin</h2>
                        <div id="imBreadcrumb">Admin</div>
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
                                        <form id="imObjectForm_3" action="${pageContext.servletContext.contextPath}/admin/add" method="POST" enctype="multipart/form-data">
                                            <fieldset class="first">

                                                <div id="imObjectForm_3_1_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_1_label" for="imObjectForm_3_1">User Name*</label><br /><div id="imObjectForm_3_1_field">
                                                        <input type="text" placeholder="User name" required="true" name="username" class="mandatory " id="imObjectForm_3_1" /></div>
                                                </div>
                                                <div id="imObjectForm_3_2_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_2_label" for="imObjectForm_3_2">Password*</label><br /><div id="imObjectForm_3_2_field">
                                                        <input type="password" class="mandatory " id="imObjectForm_3_6" name="imObjectForm_3_6" /> </div>
                                                </div>
                                                <div id="imObjectForm_3_3_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_3_label" for="imObjectForm_3_3">Admin Name*</label><br /><div id="imObjectForm_3_3_field">
                                                        <input type="text" placeholder="Admin name" required="true" name="adminName" class="mandatory " id="imObjectForm_3_1" /></div>
                                                </div>
                                                <div id="imObjectForm_3_4_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_4_label" for="imObjectForm_3_4">Date of Birth*</label><br /><div id="imObjectForm_3_4_field">
                                                        <input type="date" placeholder="[dd]/[mm]/[yyyy]" required="true" name="dob" data-showicon="true" data-format="[dd]/[mm]/[yyyy]"  id="datepicker" /></div>
                                                </div>
                                                <div id="imObjectForm_3_5_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_5_label" for="imObjectForm_3_5">Contact Number*</label><br /><div id="imObjectForm_3_5_field">
                                                        <input type="text" placeholder="Contact Number" required="true" name="contactNo" class="mandatory " id="imObjectForm_3_5" /></div>
                                                </div>
                                                <div id="imObjectForm_3_5_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_5_label" for="imObjectForm_3_5">Position*</label><br /><div id="imObjectForm_3_5_field">
                                                        <input type="text" placeholder="Position" required="true" name="position" class="mandatory " id="imObjectForm_3_5"/></div>
                                                </div>
                                                <div id="imObjectForm_3_5_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_5_label" for="imObjectForm_3_5">NIC*</label><br /><div id="imObjectForm_3_5_field">
                                                        <input type="text" placeholder="NIC" required="true" name="nic" class="mandatory " id="imObjectForm_3_5"/></div>
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
