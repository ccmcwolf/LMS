/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.beans.Admin;
import com.lms.app.beans.Batch;
import com.lms.app.beans.Course;
import com.lms.app.beans.Registration;
import com.lms.app.beans.Student;
import com.lms.app.beans.User;
import com.lms.app.service.BatchServce;
import com.lms.app.service.RegistrationService;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.year;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
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
public class RegistrationController {

    @Autowired
    private RegistrationService registrationService;

    @Autowired
    private BatchServce batchServce;
    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/student/register"}, method = RequestMethod.POST)
    public ModelAndView addCourse(HttpServletRequest request, HttpSession userSession) {
        Integer cid = Integer.valueOf(request.getParameter("cid"));
        Integer sid = Integer.valueOf(request.getParameter("sid"));
        Integer bid = Integer.valueOf(request.getParameter("bid"));
        Integer aid = Integer.valueOf(request.getParameter("aid"));
        System.out.println("cid : " + cid);
        System.out.println("sid : " + sid);
        System.out.println("bid : " + bid);
        System.out.println("aid : " + aid);

        Course course = new Course();
        course.setCourseId(cid);

        Student student = new Student();
        student.setStudentId(sid);

        Batch batch = new Batch();
        batch.setBatchId(bid);

        Admin admin = new Admin();
        admin.setAdminId(aid);

        Registration registration = new Registration();
        registration.setAdmin(admin);
        registration.setBatch(batch);
        registration.setCourse(course);
        registration.setStudent(student);

        registrationService.newRegistration(registration);
        ModelAndView view = new ModelAndView();
        view.setViewName("registerStudent");
        return view;
    }

    @RequestMapping(value = {"/student/register/search"}, method = RequestMethod.POST)
    public ModelAndView searchStudent(HttpServletRequest request, HttpSession userSession) {
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        
        List<Registration> registrationList = registrationService.getAllRegisterStudents(id);
        
        ModelAndView view = new ModelAndView();
        request.setAttribute("$batches", batchServce.getAllBatches());
        request.setAttribute("rgt", registrationList);
        view.setViewName("searchRegisterStudent");
        return view;

    }

}
