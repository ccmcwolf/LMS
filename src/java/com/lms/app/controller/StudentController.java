/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.beans.Student;
import com.lms.app.beans.User;
import com.lms.app.config.core.AuthType;
import com.lms.app.sec.SHA_256;
import com.lms.app.service.StudentService;
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
public class StudentController {

    @Autowired
    private StudentService studentService;
   
    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/student/add"}, method = RequestMethod.POST)
    public ModelAndView addStudent(HttpServletRequest request, HttpSession userSession) {
        try {
            
            String userName = request.getParameter("username");
            String password = request.getParameter("password");
            String studentName = request.getParameter("studentName");
            String address = request.getParameter("address");
            String dob = request.getParameter("dob");
            
                               SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date parseDOB = dateFormat.parse(dob);
            dateFormat.format(parseDOB);

            User user = new User();
            user.setUserName(userName);
            user.setUserRole(AuthType.STUDENT);
            user.setDateCreated(new Date());
            user.setPassword(SHA_256.getSHA256(password));

            Student student = new Student();
            student.setName(studentName);
            student.setDob(parseDOB);
            student.setAddress(address);
            student.setUser(user);

            Set<Student> students = new HashSet<>();
            user.setStudents(students);
            
            studentService.addStudentData(student);
        request.setAttribute("result", "Added Successfully");
        } catch (ParseException ex) {
            Logger.getLogger(CourseController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        ModelAndView view = new ModelAndView();
        view.setViewName("addStudent");
        
        return view;
    }

    @RequestMapping(value = {"/student/search"}, method = RequestMethod.POST)
    public ModelAndView searchStudent(HttpServletRequest request, HttpSession userSession) {
        String uid = request.getParameter("uid");
        
        User user = new User();
        user.setUserId(new Integer(uid));
        ModelAndView view = new ModelAndView();
        Student student = studentService.getStudentDataByStudentID(uid);
        if (student == null) {
            student = new Student();
            student.setName("no_student");
        }
        request.setAttribute("stndt", student);
        view.setViewName("searchStudent");
        return view;
    }

    @RequestMapping(value = {"/student/edit/search"}, method = RequestMethod.POST)
    public ModelAndView searchStudentForEdit(HttpServletRequest request, HttpSession userSession) {
        String uid = request.getParameter("stid");

        ModelAndView view = new ModelAndView();
        Student student = studentService.getStudentDataByStudentID(uid);
        if (student == null) {
            student = new Student();
            student.setName("no_student");
        }
        request.setAttribute("stndt", student);
        view.setViewName("editStudent");
        return view;
    }

    @RequestMapping(value = {"/student/edit"}, method = RequestMethod.POST)
    public ModelAndView editStudentForEdit(HttpServletRequest request, HttpSession userSession) {
        try {
            int sid = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String bdate = request.getParameter("bdate");
            String adderess = request.getParameter("address");
            String urid = request.getParameter("urid");
            String password = request.getParameter("pswrd");
            
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date parseDOB = dateFormat.parse(bdate);
            dateFormat.format(parseDOB);

            studentService.editStudentData(new Student(null, name, parseDOB, adderess, null, null, null, null, null),sid);

        } catch (ParseException ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ModelAndView view = new ModelAndView();
            view.setViewName("editStudent");
            return view;
        }

    }
}
