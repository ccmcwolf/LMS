/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.beans.Message;
import com.lms.app.beans.Student;
import com.lms.app.beans.User;
import com.lms.app.service.LoginService;
import com.lms.app.service.MessageService;
import com.lms.app.service.StudentService;
import com.lms.app.service.UserService;
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

    @Autowired
    private LoginService loginService;

    /**
     *
     * @param request
     * @param userSession
     * @return
     */
    @RequestMapping(value = {"/message/send"}, method = RequestMethod.POST)
    public ModelAndView sendMessage(HttpServletRequest request, HttpSession session) {
        String msgBody = request.getParameter("msgbody");
        String userId = request.getParameter("sid");
        System.out.println("body : " + msgBody);
        System.out.println("userId : " + userId);

        Student student = studentService.getStudentDataByStudentID(userId);
        User user = student.getUser();
        Integer userIdInt = user.getUserId();
        //Message message = new Message(userId, Integer.SIZE, userId, msgBody)
        //messageService.sendMessage(message);
        //User loggedInUser = loginService.loginUser();

        User userinSession = (User) session.getAttribute("$LoggedInUserObj");

        Message message = new Message();
        message.setFromUserId(userinSession.getUserId());
        message.setToUserId(userIdInt);
        message.setBody(msgBody);

        messageService.sendMessage(message);

        System.out.println(user.getUserName());
        ModelAndView view = new ModelAndView();
        view.setViewName("sendMessage");
        return view;

    }

    @RequestMapping(value = {"/view/inbox"}, method = RequestMethod.GET)
    public ModelAndView viewMessages(HttpServletRequest request, HttpSession session) {
        User userinSession = (User) session.getAttribute("$LoggedInUserObj");

        request.setAttribute("$messages", messageService.viewMessages(userinSession.getUserId()));
        ModelAndView view = new ModelAndView();
        view.setViewName("inbox");
        return view;
    }

}
