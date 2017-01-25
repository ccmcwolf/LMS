/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.beans.Batch;
import com.lms.app.beans.Course;
import com.lms.app.beans.Coursecontent;
import com.lms.app.beans.Fee;
import com.lms.app.beans.Module;
import com.lms.app.beans.tbeans.ContentUpload;
import com.lms.app.service.CourseService;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author User
 */
@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;

    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/course/add"}, method = RequestMethod.POST)
    public ModelAndView addCourse(HttpServletRequest request, HttpSession userSession) {
        
            String courseName = request.getParameter("courseName");
         
            Double fee = Double.valueOf(request.getParameter("fee"));

            System.out.println("CN : " + courseName);
         
            System.out.println("FEE : " + fee);

            Fee fees = new Fee();
            fees.setFeeAmount(fee);

            Course course = new Course();
            course.setCourseName(courseName);
            course.setFee(fees);

            Set<Course> courses = new HashSet<>();
            courses.add(course);
            fees.setCourses(courses);

            courseService.addCourse(course);
       
        ModelAndView view = new ModelAndView();
        view.setViewName("addCourse");
        return view;
    }

    /**
     *
     * @param content
     * @param request
     * @return
     */
    @RequestMapping(value = {"/course/add/content"}, method = RequestMethod.POST)
    public ModelAndView addCourseContent(@ModelAttribute(value = "flupld") ContentUpload content, HttpServletRequest request) {
        try {
            String root = request.getServletContext().getRealPath("/images");
            String[] extension = content.getDataFile().getContentType().split("/");
            SimpleDateFormat format = new SimpleDateFormat("yyyy_MM_dd");
            format.format(new Date());
            String fname = content.getDataFile().getOriginalFilename() + format + "." + extension[1];
            String fileName = root + "/" + fname;
            File f = new File(fileName);
            FileUtils.writeByteArrayToFile(f, content.getDataFile().getBytes());
            System.out.println(fileName);
            
            Batch batch = new Batch();
            batch.setBatchId(content.getBid());
            
            Module module = new Module();
            module.setModuleId(content.getMid());
            
            Coursecontent coursecontent = new Coursecontent();
            coursecontent.setHeading(content.getHeading());
            coursecontent.setName(content.getName());
            coursecontent.setSubHeading(content.getSheading());
            coursecontent.setBody(content.getConentBody());
            coursecontent.setBatch(batch);
            coursecontent.setModule(module);
            coursecontent.setPath(fileName);
            
            System.out.println(content.getHeading());
            System.out.println(content.getConentBody());
            System.out.println(content.getSheading());
            System.out.println(content.getBid());
            System.out.println(content.getName());            
            
            courseService.addCouserContent(coursecontent);
        } catch (IOException ex) {
            Logger.getLogger(FileUploadController.class.getName()).log(Level.SEVERE, null, ex);
        }

        ModelAndView view = new ModelAndView();
        view.setViewName("home");
        return view;
    }
}
