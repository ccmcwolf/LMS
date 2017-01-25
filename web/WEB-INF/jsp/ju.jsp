<!DOCTYPE html><!-- HTML5 -->

<html prefix="og: http://ogp.me/ns#" lang="en-GB" dir="ltr">

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1" />



        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/reset.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/print.css?13-0-1-16" media="print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/style.css?13-0-1-16" media="screen,print" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/template.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/style/menu.css?13-0-1-16" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/pcss/add-student.css?13-0-1-16-636177445425450965" media="screen" />

        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/res/jquery.js?13-0-1-16"></script>
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/res/x5engine.js?13-0-1-16" data-files-version="13-0-1-16"></script>
    </head>

    <body>

        <div id="imContentContainer">

            <div id="imContentGraphics"></div>

            <div id="imContent">

                <a id="imGoToCont"></a>
                <div id="imPgMnContainer"><div id="imPgMn">
                        <ul class="auto">
                            <li id="imPgMnNode17" class="imPgMnFirst imPgMnCurrent">
                                <a href="add-student.html">
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
                            <li class="imMnPageClear"></li>
                        </ul>
                    </div></div>
                <div class="imContentDataContainer">
                    <h2 id="imPgTitle">Add Student</h2>
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
                            <div id="imCell_3" class="" > <div id="imCellStyleGraphics_3"></div><div id="imCellStyle_3"  data-responsive-sequence-number="1"><form id="imObjectForm_3" action="imemail/imEmailForm_35gfk545.php" method="post" enctype="multipart/form-data">
                                        <fieldset class="first">
                                            <div>
                                                <div id="imObjectForm_3_1_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_1_label" for="imObjectForm_3_1">Student Name*</label><br /><div id="imObjectForm_3_1_field">
                                                        <input type="text" class="mandatory " id="imObjectForm_3_1" name="imObjectForm_3_1" /></div>
                                                </div>
                                                <div id="imObjectForm_3_2_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_2_label" for="imObjectForm_3_2">Date of Birth*</label><br /><div id="imObjectForm_3_2_field">
                                                        <input type="text" data-showicon="true" data-format="[dd]/[mm]/[yyyy]" class="mandatory datepicker" id="imObjectForm_3_2" name="imObjectForm_3_2" /><img id="imObjectForm_3_2_icon" class="imDatePickerIcon" src="res/date.gif"></div>
                                                </div>
                                                <div id="imObjectForm_3_3_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_3_label" for="imObjectForm_3_3">Address*</label><br /><div id="imObjectForm_3_3_field">
                                                        <textarea class="mandatory " id="imObjectForm_3_3" name="imObjectForm_3_3" ></textarea></div>
                                                </div>
                                                <div id="imObjectForm_3_4_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_4_label" for="imObjectForm_3_4">Contact Number*</label><br /><div id="imObjectForm_3_4_field">
                                                        <input type="text" class="mandatory " id="imObjectForm_3_4" name="imObjectForm_3_4" /></div>
                                                </div>
                                                <div id="imObjectForm_3_5_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_5_label" for="imObjectForm_3_5">username*</label><br /><div id="imObjectForm_3_5_field">
                                                        <input type="text" class="mandatory " id="imObjectForm_3_5" name="imObjectForm_3_5" /></div>
                                                </div>
                                                <div id="imObjectForm_3_6_container" class="imObjectFormFieldContainer"><label id="imObjectForm_3_6_label" for="imObjectForm_3_6">password*</label><br /><div id="imObjectForm_3_6_field">
                                                        <input type="password" class="mandatory " id="imObjectForm_3_6" name="imObjectForm_3_6" /></div>
                                                    <label id="imObjectForm_3_6_chklabel" for="imObjectForm_3_6_chk">Repeat password*</label><br /><div id="imObjectForm_3_6_chkfield">
                                                        <input type="password" class="mandatory equalTo[imObjectForm_3_6]" id="imObjectForm_3_6_chk" name="imObjectForm_3_6_chk" /></div>
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
                                    <script>x5engine.boot.push('x5engine.imForm.initForm(\'#imObjectForm_3\', false, {type: \'tip\', showAll: true, classes: \'validator\', landingPage: \'index.html\', labelColor: \'#000000\', fieldColor: \'#000000\', selectedFieldColor: \'#000000\'})');</script>
                                </div></div>
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

        <div id="imFooter">

            <div id="imFooterObjects"></div>

        </div>

    </body>

</html>

