/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.beans.Admin;
import com.lms.app.beans.Lecturer;
import com.lms.app.beans.User;
import com.lms.app.beans.tbeans.LecturerRegistrationObj;
import com.lms.app.config.core.AuthType;
import com.lms.app.sec.SHA_256;
import com.lms.app.service.LecturerService;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
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
public class LecturerController {

    @Autowired
    private LecturerService lecturerService;

    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/lecturer/add"}, method = RequestMethod.POST)
    public ModelAndView addCourse(HttpServletRequest request, HttpSession userSession) {
        try {
            String userName = request.getParameter("username");
            String password = request.getParameter("password");
            String lectName = request.getParameter("lectName");
            String address = request.getParameter("address");
            String dob = request.getParameter("dob");

            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date parseDOB = dateFormat.parse(dob);
            dateFormat.format(parseDOB);

            User user = new User();
            user.setUserName(userName);
            user.setUserRole(AuthType.LECTURER);
            user.setDateCreated(new Date());
            user.setPassword(SHA_256.getSHA256(password));

            Lecturer lecturer = new Lecturer();
            lecturer.setLecturerName(lectName);
            lecturer.setDob(parseDOB);
            lecturer.setAddress(address);
            lecturer.setUser(user);

            Set<Lecturer> lecturers = new HashSet<>();
            user.setLecturers(lecturers);

            lecturerService.addLecturerData(lecturer);
        } catch (ParseException ex) {
            Logger.getLogger(CourseController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        ModelAndView view = new ModelAndView();
        view.setViewName("addAdmin");
        return view;
    }

    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/lecturer/search"}, method = RequestMethod.POST)
    public ModelAndView searchStudent(HttpServletRequest request, HttpSession userSession) {
        String uid = request.getParameter("lid");
        System.out.println("Hello : " + uid);
        ModelAndView view = new ModelAndView();
        Lecturer lecturer = lecturerService.getLecturerDataByStudentID(uid);
        if (lecturer == null) {
            lecturer = new Lecturer();
            lecturer.setLecturerName("no_lec");
        }
        request.setAttribute("lec", lecturer);
        view.setViewName("searchLecturer");
        return view;
    }

    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/lecturer/register"}, method = RequestMethod.POST)
    public ModelAndView registerLecturer(HttpServletRequest request, HttpSession userSession) {
        Integer batchId = Integer.valueOf(request.getParameter("batchId"));
        Integer courseId = Integer.valueOf(request.getParameter("courseId"));
        Integer lecturerID = Integer.valueOf(request.getParameter("lecturerID"));
        Integer adminID = ((Admin) request.getSession().getAttribute("$LoggedInAdminObj")).getAdminId();

        LecturerRegistrationObj reg = new LecturerRegistrationObj();
        reg.setBatchId(batchId);
        reg.setCourseId(courseId);
        reg.setLecturerId(lecturerID);
        reg.setAssignedByAdminID(adminID);
        reg.setAssignedDate(new Date());

        ModelAndView view = new ModelAndView();
        view.setViewName("searchLecturer");
        return view;
    }

    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/lecturer/edit/search"}, method = RequestMethod.POST)
    public ModelAndView searchStudentforEdit(HttpServletRequest request, HttpSession userSession) {
        String uid = request.getParameter("lid");
        System.out.println("Hello : " + uid);
        ModelAndView view = new ModelAndView();
        Lecturer lecturer = lecturerService.getLecturerDataByStudentID(uid);
        if (lecturer == null) {
            lecturer = new Lecturer();
            lecturer.setLecturerName("no_lec");
        }
        request.setAttribute("lec", lecturer);
        view.setViewName("editLecturer");
        return view;
    }

    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/lecturer/edit"}, method = RequestMethod.POST)
    public ModelAndView editLecturer(HttpServletRequest request, HttpSession userSession) {
        try {
            String uid = request.getParameter("id");
            String name = request.getParameter("name");
            String dob = request.getParameter("dob");
            String address = request.getParameter("address");

                       SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date parseDOB = dateFormat.parse(dob);
            dateFormat.format(parseDOB);

            Lecturer lecturer = new Lecturer();
            lecturer.setLecturerId(new Integer(uid));
            lecturer.setLecturerName(name);
            lecturer.setDob(parseDOB);
            lecturer.setAddress(address);
            
            lecturerService.editLecturerData(lecturer);

        } catch (ParseException ex) {
            Logger.getLogger(LecturerController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ModelAndView view = new ModelAndView();
            view.setViewName("editLecturer");
            return view;
        }
    }
}
