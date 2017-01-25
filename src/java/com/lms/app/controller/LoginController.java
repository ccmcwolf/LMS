/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.beans.Admin;
import com.lms.app.beans.Lecturer;
import com.lms.app.beans.Student;
import com.lms.app.beans.User;
import com.lms.app.config.core.AuthType;
import com.lms.app.sec.SHA_256;
import com.lms.app.service.AdminService;
import com.lms.app.service.LecturerService;
import com.lms.app.service.LoginService;
import com.lms.app.service.StudentService;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author User
 */
@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;

    @Autowired
    private AdminService adminService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private LecturerService lecturerService;

    /**
     *
     * @param request
     * @param response
     * @param session
     * @return
     */
    @RequestMapping(value = "/user/login", method = RequestMethod.POST)
    public ModelAndView login(
            HttpServletRequest request,
            HttpServletResponse response,
            HttpSession session) {
        session.invalidate();

        String uname = request.getParameter("uname");
        String pw = request.getParameter("pw");

        if (((uname == null) || (pw == null)) || (uname.isEmpty() || pw.isEmpty())) {
            request.setAttribute("$error", "Please fill required fields !");
            return new ModelAndView("login");
        } else {
            try {
                System.out.println("U " + uname);
                System.out.println("P " + pw + "\tEnc : " + SHA_256.getSHA256(pw));
                User user = new User();
                user.setPassword(SHA_256.getSHA256(pw));
                user.setUserName(uname);
                User loggedInUser = loginService.loginUser(user);
                if (!loggedInUser.getUserName().equals("404")) {
                    session = request.getSession();
                    session.setAttribute("$LoggedInUserObj", loggedInUser);
                    if (loggedInUser.getUserRole().trim().equalsIgnoreCase(AuthType.ADMIN)) {
                        Admin adminData = adminService.getAdminData(loggedInUser);
                        if (adminData != null) {
                            session.setAttribute("$LoggedInAdminObj", adminData);
                        }
                    } else if (loggedInUser.getUserRole().trim().equalsIgnoreCase(AuthType.STUDENT)) {
                        Student studentData = studentService.getStudentData(loggedInUser);
                        if (studentData != null) {
                            session.setAttribute("$LoggedInStudentObj", studentData);
                            return new ModelAndView("home_student");
                        }

                    } else if (loggedInUser.getUserRole().trim().equalsIgnoreCase(AuthType.LECTURER)) {
                        Lecturer lecturerData = lecturerService.getLecturerData(loggedInUser);
                        if (lecturerData != null) {
                            session.setAttribute("$LoggedInLecturerObj", lecturerData);
                            System.out.println("LNAME : " + ((Lecturer) session.getAttribute("$LoggedInLecturerObj")).getLecturerName());
                            return new ModelAndView("home_lecturer");
                        }
                    }
                } else {
                    request.setAttribute("$userNotFound", "Please check your username and password.");
                    return new ModelAndView("login");
                }
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
            }
            return new ModelAndView("home");
        }
    }

    /**
     *
     * @param session
     * @param request
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logOut(HttpSession session, HttpServletRequest request) {
        session.invalidate();
        return new ModelAndView("login");
    }
}
