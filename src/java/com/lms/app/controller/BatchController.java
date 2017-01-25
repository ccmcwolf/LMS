/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.beans.Batch;
import com.lms.app.beans.Course;
import com.lms.app.service.BatchServce;
import com.lms.app.service.CourseService;
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
public class BatchController {

    @Autowired
    private BatchServce batchService;

    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/batch/add"}, method = RequestMethod.POST)
    public ModelAndView addCourse(HttpServletRequest request, HttpSession userSession) {
        String batchName = request.getParameter("batchName");
        Integer cid = Integer.valueOf(request.getParameter("cid"));
        String startDate = request.getParameter("startDate");

        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

            Date parse = dateFormat.parse(startDate);

            dateFormat.format(parse);

            System.out.println("cid : " + cid);
            System.out.println("DA : " + startDate);

            Course course = new Course();
            course.setCourseId(cid);
            Batch batch = new Batch();
            batch.setBatchName(batchName);
            batch.setCourse(course);
            batch.setStartDate(parse);
            
            Set<Batch> batchs = new HashSet<>();
            batchs.add(batch);
            course.setBatches(batchs);
            batchService.addBatch(batch);
        } catch (ParseException ex) {
            Logger.getLogger(BatchController.class.getName()).log(Level.SEVERE, null, ex);
        }
        ModelAndView view = new ModelAndView();
        view.setViewName("addBatch");
        return view;
    }
}
