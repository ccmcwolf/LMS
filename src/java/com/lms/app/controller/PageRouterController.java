/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.beans.Assignment;
import com.lms.app.beans.Course;
import com.lms.app.beans.Registration;
import com.lms.app.beans.tbeans.ContentUpload;
import com.lms.app.service.AdminService;
import com.lms.app.service.AssignmentService;
import com.lms.app.service.BatchServce;
import com.lms.app.service.CourseService;
import com.lms.app.service.LecturerService;
import com.lms.app.service.ModuleService;
import com.lms.app.service.RegistrationService;
import com.lms.app.service.StudentService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author User
 */
@Controller
public class PageRouterController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private BatchServce batchServce;

    @Autowired
    private StudentService studentService;

    @Autowired
    private AdminService adminService;

    @Autowired
    private ModuleService moduleService;

    @Autowired
    private RegistrationService registrationService;

    @Autowired
    private LecturerService lecturerService;

    @Autowired
    private AssignmentService assignmentService;

    /**
     *
     * @return
     */
    @RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
    public ModelAndView viewHome() {
        ModelAndView view = new ModelAndView();
        view.setViewName("login");
        return view;
    }

    /**
     *
     * @return
     */
    @RequestMapping(value = {"/home"}, method = RequestMethod.GET)
    public ModelAndView viewMainPage() {
        ModelAndView view = new ModelAndView();
        view.setViewName("home");
        return view;
    }

    /**
     *
     * @return
     */
    @RequestMapping(value = {"/ju"}, method = RequestMethod.GET)
    public ModelAndView viewMain() {
        ModelAndView view = new ModelAndView();
        view.setViewName("ju");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/submitAssignment/{val}"}, method = RequestMethod.GET)
    public ModelAndView submitAssignment(HttpServletRequest request, @PathVariable("val") String val) {
        System.out.println("*************************************************");
        System.out.println(val);

        List<Assignment> list = assignmentService.getStudentAssignment(Integer.parseInt(val));
        ModelAndView view = new ModelAndView();
        request.setAttribute("lst", list);
        view.setViewName("submitAssignment");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/addExam"}, method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {;
        request.setAttribute("$modules", moduleService.getAllModules());
        ModelAndView view = new ModelAndView();
        view.setViewName("addExam");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/editExam"}, method = RequestMethod.GET)
    public ModelAndView editExam(HttpServletRequest request) {;
        ModelAndView view = new ModelAndView();
        view.setViewName("editExam");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/doExam"}, method = RequestMethod.GET)
    public ModelAndView doExam(HttpServletRequest request) {;
        ModelAndView view = new ModelAndView();
        view.setViewName("doExam");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/examAnswer"}, method = RequestMethod.GET)
    public ModelAndView examAnswer(HttpServletRequest request) {;
        ModelAndView view = new ModelAndView();
        view.setViewName("examAnswer");
        return view;
    }

    /**
     *
     * @return
     */
    @RequestMapping(value = {"/view/addCourse"}, method = RequestMethod.GET)
    public ModelAndView viewAddCourse() {
        ModelAndView view = new ModelAndView();
        view.setViewName("addCourse");
        return view;
    }

    /**
     *
     * @return
     */
    @RequestMapping(value = {"/view/mycourses"}, method = RequestMethod.GET)
    public ModelAndView viewMyCourses() {
        ModelAndView view = new ModelAndView();
        view.setViewName("myCourses");
        return view;
    }

    /**
     *
     * @return
     */
    @RequestMapping(value = {"/view/addstudent"}, method = RequestMethod.GET)
    public ModelAndView viewAddStudent() {
        ModelAndView view = new ModelAndView();
        view.setViewName("addStudent");
        return view;
    }

    /**
     *
     * @return
     */
    @RequestMapping(value = {"/view/addAssignment"}, method = RequestMethod.GET)
    public ModelAndView viewAddAssignment(HttpServletRequest request) {

        request.setAttribute("crs", courseService.getAllCourses());
        request.setAttribute("mdl", moduleService.getAllModules());
        request.setAttribute("btc", batchServce.getAllBatches());
        request.setAttribute("lc", lecturerService.getAllLecturers());
        ModelAndView view = new ModelAndView();
        view.setViewName("addAssignment");
        return view;
    }

    /**
     *
     * @return
     */
    @RequestMapping(value = {"/view/addadmin"}, method = RequestMethod.GET)
    public ModelAndView viewAddAdmin() {
        ModelAndView view = new ModelAndView();
        view.setViewName("addAdmin");
        return view;
    }

    /**
     *
     * @return
     */
    @RequestMapping(value = {"/view/addlecturer"}, method = RequestMethod.GET)
    public ModelAndView viewAddLecturer() {
        ModelAndView view = new ModelAndView();
        view.setViewName("addLecturer");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/addBatch"}, method = RequestMethod.GET)
    public ModelAndView viewAddBatch(HttpServletRequest request) {
        List<Course> allCourses = courseService.getAllCourses();
        request.setAttribute("$courses", allCourses);
        ModelAndView view = new ModelAndView();
        view.setViewName("addBatch");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/register"}, method = RequestMethod.GET)
    public ModelAndView registerStudent(HttpServletRequest request) {
        request.setAttribute("$courses", courseService.getAllCourses());
        request.setAttribute("$batches", batchServce.getAllBatches());
        request.setAttribute("$students", studentService.getAllStudents());
        request.setAttribute("$admins", adminService.getAllAdmins());
        ModelAndView view = new ModelAndView();
        view.setViewName("registerStudent");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/addModule"}, method = RequestMethod.GET)
    public ModelAndView addCourseModule(HttpServletRequest request) {
        request.setAttribute("$courses", courseService.getAllCourses());
        ModelAndView view = new ModelAndView();
        view.setViewName("addModule");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/addContent"}, method = RequestMethod.GET)
    public ModelAndView viewCourseContentAdd(HttpServletRequest request) {
        request.setAttribute("$courses", courseService.getAllCourses());
        request.setAttribute("$batches", batchServce.getAllBatches());
        request.setAttribute("$modules", moduleService.getAllModules());
        ModelAndView view = new ModelAndView();
        view.addObject("flupld", new ContentUpload());
        view.setViewName("addContent");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/viewstudents"}, method = RequestMethod.GET)
    public ModelAndView viewStudents(HttpServletRequest request) {
        request.setAttribute("$students", studentService.getAllStudents());
        ModelAndView view = new ModelAndView();
        view.setViewName("viewStudents");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/searchstudent"}, method = RequestMethod.GET)
    public ModelAndView searchStudent(HttpServletRequest request) {
        //request.setAttribute("$students", studentService.getAllStudents());
        ModelAndView view = new ModelAndView();
        //view.addObject("stdnt", new Student());
        view.setViewName("searchStudent");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/searchlecturer"}, method = RequestMethod.GET)
    public ModelAndView searchLecturer(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("searchLecturer");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/searchadmin"}, method = RequestMethod.GET)
    public ModelAndView searchAdmin(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("searchAdmin");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/searchregisterstudent"}, method = RequestMethod.GET)
    public ModelAndView searchRegisterStudent(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        List<Registration> registrations = registrationService.getAllRegisterStudents();
        request.setAttribute("$batches", batchServce.getAllBatches());
        request.setAttribute("rgt", registrations);
        view.setViewName("searchRegisterStudent");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/editAssignment"}, method = RequestMethod.GET)
    public ModelAndView editAssignment(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("editAssignment");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/registerLecturer"}, method = RequestMethod.GET)
    public ModelAndView registerLecturer(HttpServletRequest request) {
        request.setAttribute("$batches", batchServce.getAllBatches());
        request.setAttribute("$courses", courseService.getAllCourses());
        request.setAttribute("$lecturers", lecturerService.getAllLecturers());
        ModelAndView view = new ModelAndView();
        view.setViewName("registerLecturer");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/editlecturer"}, method = RequestMethod.GET)
    public ModelAndView viewEditLecturer(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("editLecturer");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/editstudent"}, method = RequestMethod.GET)
    public ModelAndView viewEditStudent(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("editStudent");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/myCourse"}, method = RequestMethod.GET)
    public ModelAndView viewMyCourse(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("myCourse");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/inbox"}, method = RequestMethod.GET)
    public ModelAndView viewInbox(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("inbox");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/sendMessage"}, method = RequestMethod.GET)
    public ModelAndView viewSendMessage(HttpServletRequest request) {
        request.setAttribute("$students", studentService.getAllStudents());
        
        ModelAndView view = new ModelAndView();
        view.setViewName("sendMessage");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/modifyCourse"}, method = RequestMethod.GET)
    public ModelAndView viewModifyCourse(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("modifyCourse");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/editModule"}, method = RequestMethod.GET)
    public ModelAndView viewEditModule(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("editModule");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/editContent"}, method = RequestMethod.GET)
    public ModelAndView viewEditContent(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("editContent");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/editBatch"}, method = RequestMethod.GET)
    public ModelAndView viewEditBatch(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("editBatch");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/myProfile"}, method = RequestMethod.GET)
    public ModelAndView viewMyProfile(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("myProfile");
        return view;
    }

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping(value = {"/view/signUp"}, method = RequestMethod.GET)
    public ModelAndView viewSignUp(HttpServletRequest request) {

        ModelAndView view = new ModelAndView();
        view.setViewName("signUp");
        return view;
    }
}
