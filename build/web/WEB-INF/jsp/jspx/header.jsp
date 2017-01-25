<a class="imHidden" href="#imGoToCont" title="Skip the main menu">Go to content</a>

<a id="imGoToMenu"></a><p class="imHidden">Main menu:</p>

<div id="imMnMnContainer">

    <div id="imMnMnGraphics"></div>

    <div id="imMnMn" class="auto main-menu">

        <div class="hamburger-site-background menu-mobile-hidden"></div><div class="hamburger-button"><div><div><div class="hamburger-bar"></div><div class="hamburger-bar"></div><div class="hamburger-bar"></div></div></div></div><div class="hamburger-menu-background-container"><div class="hamburger-menu-background menu-mobile-hidden"><div class="hamburger-menu-close-button"><span>&times;</span></div></div></div>

        <ul class="auto menu-mobile-hidden">
            <li id="imMnMnNode0" class="imPage imMnMnCurrent">
                <a href="${pageContext.servletContext.contextPath}/home">
                    <span class="imMnMnFirstBg">
                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Home Page</span></span>
                    </span>
                </a>
            </li><li id="imMnMnNode6" class=" imLevel">
                <span class="imMnMnFirstBg">
                    <span class="imMnMnLevelImg"></span><span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Courses</span></span>
                </span>
                <ul class="auto">
                    <li id="imMnMnNode22" class="imMnMnFirst imLevel">
                        <span class="imMnMnBorder">
                            <span class="imMnMnLevelImg"></span><span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Register</span></span>
                        </span>
                        <ul class="auto">
                            <li id="imMnMnNode23" class="imMnMnFirst imPage">
                                <a href="${pageContext.servletContext.contextPath}/view/register">
                                    <span class="imMnMnBorder">
                                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Register Student</span></span>
                                    </span>
                                </a>
                            </li>
                            <li id="imMnMnNode24" class="imMnMnLast imPage">
                                <a href="${pageContext.servletContext.contextPath}/view/registerLecturer">
                                    <span class="imMnMnBorder">
                                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Register Lecturer </span></span>
                                    </span>
                                </a>
                            </li>
                            <li id="imMnMnNode25" class="imMnMnFirst imPage">
                                <a href="${pageContext.servletContext.contextPath}/view/searchregisterstudent">
                                    <span class="imMnMnBorder">
                                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Search Register Student</span></span>
                                    </span>
                                </a>
                            </li>
                        </ul></li>
                    <li id="imMnMnNode31" class="imMnMnMiddle imLevel">
                        <span class="imMnMnBorder">
                            <span class="imMnMnLevelImg"></span><span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Courses</span></span>
                        </span>
                        <ul class="auto">
                            <li id="imMnMnNode3" class="imMnMnFirst imPage">
                                <a href="${pageContext.servletContext.contextPath}/view/myCourse">
                                    <span class="imMnMnBorder">
                                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">My Courses</span></span>
                                    </span>
                                </a>
                            </li><li id="imMnMnNode9" class="imMnMnMiddle imPage">
                                <a href="${pageContext.servletContext.contextPath}/view/addCourse">
                                    <span class="imMnMnBorder">
                                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Add Course</span></span>
                                    </span>
                                </a>
                            </li><li id="imMnMnNode10" class="imMnMnMiddle imPage">
                                <a href="${pageContext.servletContext.contextPath}/view/modifyCourse">
                                    <span class="imMnMnBorder">
                                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Modify Course</span></span>
                                    </span>
                                </a>
                            </li>
                            <li id="imMnMnNode36" class="imMnMnMiddle imLevel">
                                <span class="imMnMnBorder">
                                    <span class="imMnMnLevelImg"></span><span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Module</span></span>
                                </span>
                                <ul class="auto">
                                    <c:if test="${sessionScope.$LoggedInUserObj.userRole == 'LECTURER'}">
                                        <li id="imMnMnNode37" class="imMnMnFirst imPage">

                                            <a href="${pageContext.servletContext.contextPath}/view/addModule">
                                                <span class="imMnMnBorder">
                                                    <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Add Module</span></span>
                                                </span>
                                            </a>
                                        </li>

                                        <li id="imMnMnNode38" class="imMnMnLast imPage">
                                            <a href="${pageContext.servletContext.contextPath}/view/editModule">
                                                <span class="imMnMnBorder">
                                                    <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Edit Module</span></span>
                                                </span>
                                            </a>
                                        </li>
                                    </c:if></ul></li>
                            <li id="imMnMnNode39" class="imMnMnMiddle imLevel">
                                <span class="imMnMnBorder">
                                    <span class="imMnMnLevelImg"></span><span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Content</span></span>
                                </span>
                                <ul class="auto">
                                    <li id="imMnMnNode40" class="imMnMnFirst imPage">
                                        <a href="${pageContext.servletContext.contextPath}/view/addContent">
                                            <span class="imMnMnBorder">
                                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Add Content</span></span>
                                            </span> 
                                        </a>
                                    </li>
                                    <li id="imMnMnNode41" class="imMnMnLast imPage">
                                        <a href="${pageContext.servletContext.contextPath}/view/editContent">
                                            <span class="imMnMnBorder">
                                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Edit Content</span></span>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li id="imMnMnNode43" class="imMnMnLast imLevel">
                                <span class="imMnMnBorder">
                                    <span class="imMnMnLevelImg"></span><span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Batch</span></span>
                                </span>
                                <ul class="auto">
                                    <li id="imMnMnNode44" class="imMnMnFirst imPage">
                                        <a href="${pageContext.servletContext.contextPath}/view/addBatch">
                                            <span class="imMnMnBorder">
                                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Add Batch</span></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li id="imMnMnNode46" class="imMnMnLast imPage">
                                        <a href="${pageContext.servletContext.contextPath}/view/editBatch">
                                            <span class="imMnMnBorder">
                                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Edit Batch</span></span>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul></li>
                    <li id="imMnMnNode31" class="imMnMnMiddle imLevel">
                        <span class="imMnMnBorder">
                            <span class="imMnMnLevelImg"></span><span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Assignment</span></span>
                        </span>
                        <ul class="auto">
                            <li id="imMnMnNode20" class="imMnMnFirst imPage">
                                <a href="${pageContext.servletContext.contextPath}/view/addAssignment">
                                    <span class="imMnMnBorder">
                                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Add Assignment</span></span>
                                    </span>
                                </a>
                            </li>
                            <li id="imMnMnNode21" class="imMnMnMiddle imPage">
                                <a href="${pageContext.servletContext.contextPath}/view/editAssignment">
                                    <span class="imMnMnBorder">
                                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Edit Assignment</span></span>
                                    </span>
                                </a>
                            </li>
                            <c:if test="${sessionScope.$LoggedInUserObj.userRole == 'STUDENT'}">
                                <li id="imMnMnNode22" class="imMnMnLast imPage">
                                    <a href="${pageContext.servletContext.contextPath}/view/submitAssignment/${sessionScope.$LoggedInStudentObj.studentId}">
                                        <span class="imMnMnBorder">
                                            <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Submit Assignment</span></span>
                                        </span>
                                    </a>
                                </li>
                            </c:if>
                        </ul>
                    </li>
                    <li id="imMnMnNode26" class="imMnMnLast imLevel">
                        <span class="imMnMnBorder">
                            <span class="imMnMnLevelImg"></span><span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Exams</span></span>
                        </span>
                        <ul class="auto">
                            <li id="imMnMnNode27" class="imMnMnFirst imPage">
                                <a href="${pageContext.servletContext.contextPath}/view/addExam">
                                    <span class="imMnMnBorder">
                                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Add Exam</span></span>
                                    </span>
                                </a>
                            </li><li id="imMnMnNode28" class="imMnMnMiddle imPage">
                                <a href="${pageContext.servletContext.contextPath}/view/editExam">
                                    <span class="imMnMnBorder">
                                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Edit Exam</span></span>
                                    </span>
                                </a>
                            </li><li id="imMnMnNode33" class="imMnMnMiddle imPage">
                                <a href="${pageContext.servletContext.contextPath}/view/doExam">
                                    <span class="imMnMnBorder">
                                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Do Exam</span></span>
                                    </span>
                                </a>
                            </li><li id="imMnMnNode42" class="imMnMnLast imPage">
                                <a href="${pageContext.servletContext.contextPath}/view/examAnswer">
                                    <span class="imMnMnBorder">
                                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Exam Answer</span></span>
                                    </span>
                                </a>
                            </li></ul></li>
                </ul></li>
            <li id="imMnMnNode8" class=" imPage">
                <a href="${pageContext.servletContext.contextPath}/view/myProfile">
                    <span class="imMnMnFirstBg">
                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">My Profile</span></span>
                    </span>
                </a>
            </li><li id="imMnMnNode7" class=" imLevel">
                <span class="imMnMnFirstBg">
                    <span class="imMnMnLevelImg"></span><span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Messages</span></span>
                </span>
                <ul class="auto">
                    <li id="imMnMnNode14" class="imMnMnFirst imPage">
                        <a href="${pageContext.servletContext.contextPath}/view/inbox">
                            <span class="imMnMnBorder">
                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Inbox</span></span>
                            </span>
                        </a>
                    </li><li id="imMnMnNode30" class="imMnMnLast imPage">
                        <a href="${pageContext.servletContext.contextPath}/view/sendMessage">
                            <span class="imMnMnBorder">
                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Send Message</span></span>
                            </span>
                        </a>
                    </li></ul></li>
            <li id="imMnMnNode15" class=" imPage">
                <a href="${pageContext.servletContext.contextPath}/view/signUp">
                    <span class="imMnMnFirstBg">
                        <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Sign Up</span></span>
                    </span>
                </a>
            </li><li id="imMnMnNode16" class=" imLevel">
                <span class="imMnMnFirstBg">
                    <span class="imMnMnLevelImg"></span><span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Student</span></span>
                </span>
                <ul class="auto">
                    <li id="imMnMnNode17" class="imMnMnFirst imPage">
                        <a href="${pageContext.servletContext.contextPath}/view/addstudent">
                            <span class="imMnMnBorder">
                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Add Student</span></span>
                            </span>
                        </a>
                    </li>
                    <li id="imMnMnNode18" class="imMnMnLast imPage">
                        <a href="${pageContext.servletContext.contextPath}/view/editstudent">
                            <span class="imMnMnBorder">
                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Edit Student</span></span>
                            </span>
                        </a>
                    </li>
                    <li id="imMnMnNode18" class="imMnMnLast imPage">
                        <a href="${pageContext.servletContext.contextPath}/view/viewstudents">
                            <span class="imMnMnBorder">
                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">View Students</span></span>
                            </span>
                        </a>
                    </li>
                    <li id="imMnMnNode18" class="imMnMnLast imPage">
                        <a href="${pageContext.servletContext.contextPath}/view/searchstudent">
                            <span class="imMnMnBorder">
                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Search Student</span></span>
                            </span>
                        </a>
                    </li>
                </ul></li>
            <li id="imMnMnNode19" class=" imLevel">
                <span class="imMnMnFirstBg">
                    <span class="imMnMnLevelImg"></span><span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Lecturer</span></span>
                </span>
                <ul class="auto">
                    <li id="imMnMnNode20" class="imMnMnFirst imPage">
                        <a href="${pageContext.servletContext.contextPath}/view/addlecturer">
                            <span class="imMnMnBorder">
                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Add Lecturer</span></span>
                            </span>
                        </a>
                    </li>
                    <li id="imMnMnNode21" class="imMnMnLast imPage">
                        <a href="${pageContext.servletContext.contextPath}/view/editlecturer">
                            <span class="imMnMnBorder">
                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Edit Lecturer</span></span>
                            </span>
                        </a>
                    </li>
                    <li id="imMnMnNode22" class="imMnMnLast imPage">
                        <a href="${pageContext.servletContext.contextPath}/view/searchlecturer">
                            <span class="imMnMnBorder">
                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Search Lecturer</span></span>
                            </span>
                        </a>
                    </li>
                </ul>
            </li>

            <li id="imMnMnNode19" class=" imLevel">
                <span class="imMnMnFirstBg">
                    <span class="imMnMnLevelImg"></span><span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Admin</span></span>
                </span>
                <ul class="auto">
                    <li id="imMnMnNode20" class="imMnMnFirst imPage">
                        <a href="${pageContext.servletContext.contextPath}/view/addadmin">
                            <span class="imMnMnBorder">
                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Add Admin</span></span>
                            </span>
                        </a>
                    </li>
                    <li id="imMnMnNode20" class="imMnMnFirst imPage">
                        <a href="${pageContext.servletContext.contextPath}/view/searchadmin">
                            <span class="imMnMnBorder">
                                <span class="imMnMnTxt"><span class="imMnMnImg"></span><span class="imMnMnTextLabel">Search Admin</span></span>
                            </span>
                        </a>
                    </li>
            </ul></li>
        </ul>

    </div>

</div>