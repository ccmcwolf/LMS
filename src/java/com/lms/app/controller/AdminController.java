/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.beans.Admin;
import com.lms.app.beans.Lecturer;
import com.lms.app.beans.User;
import com.lms.app.config.core.AuthType;
import com.lms.app.sec.SHA_256;
import com.lms.app.service.AdminService;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author User
 */
@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/admin/add"}, method = RequestMethod.POST)
    public ModelAndView addCourse(HttpServletRequest request, HttpSession userSession) {
        try {
            String userName = request.getParameter("username");
            String password = request.getParameter("password");
            String adminName = request.getParameter("adminName");
            String contactNo = request.getParameter("contactNo");
            String dob = request.getParameter("dob");
            String position = request.getParameter("position");
            String nic = request.getParameter("nic");

                       SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date parseDOB = dateFormat.parse(dob);
            dateFormat.format(parseDOB);

            User user = new User();
            user.setUserName(userName);
            user.setUserRole(AuthType.ADMIN);
            user.setDateCreated(new Date());
            user.setPassword(SHA_256.getSHA256(password));

            Admin admin = new Admin();
            admin.setAdminName(adminName);
            admin.setDob(parseDOB);
            admin.setNic(nic);
            admin.setPosition(position);
            admin.setContactNumber(contactNo);
            admin.setUser(user);

            Set<Admin> admins = new HashSet<>();
            user.setAdmins(admins);

            adminService.addAdminData(admin);
        } catch (ParseException ex) {
            Logger.getLogger(CourseController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        ModelAndView view = new ModelAndView();
        view.setViewName("addAdmin");
        return view;
    }
    
    @RequestMapping(value = {"/admin/search"}, method = RequestMethod.POST)
    public ModelAndView searchAdmin(HttpServletRequest request, HttpSession userSession) {
        String uid = request.getParameter("aid");
                
        ModelAndView view = new ModelAndView();
        Admin admin = adminService.getLecturerDataByStudentID(uid);
        if (admin == null) {
            admin = new Admin();
            admin.setAdminName("no_admin");
        }
        
        request.setAttribute("admin", admin);
        view.setViewName("searchAdmin");
        return view;
    }
    
}
