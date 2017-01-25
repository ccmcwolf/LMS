/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.beans.Exam;
import com.lms.app.beans.Lecturer;
import com.lms.app.beans.Module;
import com.lms.app.beans.Question;
import com.lms.app.service.ExamService;
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
public class ExamController {

    @Autowired
    private ExamService examService;

    /**
     *
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = {"/exam/add"}, method = RequestMethod.POST)
    public ModelAndView addExam(HttpServletRequest request, HttpSession session) {
        String examName = request.getParameter("examName");
        Integer noOfQuestions = Integer.valueOf(request.getParameter("noOfQuestions"));
        String duration = request.getParameter("duration");
        Integer moduleID = Integer.valueOf(request.getParameter("moduleID"));

        String correctAnswer = request.getParameter("correctAnswer");
        String que = request.getParameter("question");
        String answer_1 = request.getParameter("answer_1");
        String answer_2 = request.getParameter("answer_2");
        String answer_3 = request.getParameter("answer_3");
        String answer_4 = request.getParameter("answer_4");
        String answer_5 = request.getParameter("answer_5");

        StringBuilder answers = new StringBuilder();
        answers
                .append(answer_1)
                .append("|")
                .append(answer_2)
                .append("|")
                .append(answer_3)
                .append("|")
                .append(answer_4)
                .append("|")
                .append(answer_5)
                .append("|");

        String answerFinal = answers.toString();
        Module module = new Module();
        module.setModuleId(moduleID);

        Question question = new Question();
        question.setCorrectAnswer(correctAnswer);
        question.setQuestion(que);
        question.setMcqanswers(answerFinal);
        

        
        Lecturer lecturer = (Lecturer) session.getAttribute("$LoggedInLecturerObj");

        Exam exam = new Exam();
        exam.setExamName(examName);
        exam.setNumberOfQuestions(noOfQuestions);
        exam.setDuration(duration);
        exam.setLecturer(lecturer);

        question.setExam(exam);
        

        Set<Question> questions = new HashSet<>();
        questions.add(question);
        exam.setModule(module);

        examService.addExam(exam);
        request.setAttribute("$exam", exam);

        return new ModelAndView("addExam");
    }
}
