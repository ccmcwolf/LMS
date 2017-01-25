/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.beans.Course;
import com.lms.app.beans.Lecturer;
import com.lms.app.beans.Module;
import com.lms.app.service.ModuleService;
import java.util.HashSet;
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
public class ModuleController {

    @Autowired
    private ModuleService moduleService;

    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/course/moduleadd"}, method = RequestMethod.POST)
    public ModelAndView addCourseContent(HttpServletRequest request, HttpSession userSession) {
        String moduleName = request.getParameter("moduleName");
        String moduleDescription = request.getParameter("moduleDescription");
        String modulePath = request.getParameter("modulePath");
        Integer courseID = Integer.valueOf(request.getParameter("courseID"));
        System.out.println("CN : " + moduleName);
        System.out.println("DA : " + moduleDescription);
        System.out.println("FEE : " + modulePath);
        System.out.println("FEE : " + courseID);
        Lecturer lecturer = (Lecturer) userSession.getAttribute("$LoggedInLecturerObj");
        System.out.println("SESSION-USER : " + lecturer.getLecturerName());
        if (lecturer != null) {
            Course course = new Course();
            course.setCourseId(courseID);

            Module module = new Module();
            module.setModuleName(moduleName);
            module.setModulePath(modulePath);
            module.setModuleDescription(moduleDescription);
            module.setLecturer(lecturer);

            Set<Course> courses = new HashSet<>();
            courses.add(course);
            Set<Module> modules = new HashSet<>();
            modules.add(module);

            moduleService.addCourseModule(module);
        }
        ModelAndView view = new ModelAndView();
        view.setViewName("addModule");
        return view;
    }
}
