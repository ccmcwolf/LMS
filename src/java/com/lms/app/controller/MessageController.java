/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.beans.Batch;
import com.lms.app.beans.Course;
import com.lms.app.beans.Message;
import com.lms.app.beans.User;
import com.lms.app.service.LoginService;
import com.lms.app.service.MessageService;
import com.lms.app.service.StudentService;
import com.lms.app.service.UserService;
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
 * @author Chamith
 */
@Controller
public class MessageController {

    @Autowired
    private MessageService messageService;
    
    @Autowired
    private StudentService studentService; 
    
    @Autowired
    private UserService userService;
    
    

    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/message/send"}, method = RequestMethod.POST)
    public ModelAndView sendMessage(HttpServletRequest request, HttpSession userSession) {
        String msgBody = request.getParameter("msgbody");
        String userId = request.getParameter("sid");
        System.out.println("body : " + msgBody);
        System.out.println("userId : " + userId);
        //Message message = new Message(userId, Integer.SIZE, userId, msgBody)
        //messageService.sendMessage(message);
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("$LoggedInUserObj");
    
        userService.getUserDataByUserID(userId);
        
        ModelAndView view = new ModelAndView();
        view.setViewName("sendMessage");
        return view;

    }

}
