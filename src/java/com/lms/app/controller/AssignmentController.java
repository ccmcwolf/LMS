package com.lms.app.controller;

import com.lms.app.beans.Assignment;
import com.lms.app.beans.Batch;
import com.lms.app.beans.Lecturer;
import com.lms.app.beans.Module;
import com.lms.app.exchangedata.FileUpload;
import com.lms.app.service.AssignmentService;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
 * @author User /assignment/add assignmentId courseId assignmentName closingDate
 * refmaterials
 */
@Controller
public class AssignmentController {

    @Autowired
    private AssignmentService assignmentService;

    /**
     * @param request
     * @param userSession
     * @request
     *
     */
    @RequestMapping(value = {"/assignment/add"}, method = RequestMethod.POST)
    public ModelAndView addAssignment(HttpServletRequest request, HttpSession userSession) {

        try {
            int assignmentId = Integer.valueOf(request.getParameter("assignmentId"));
            String courseId = request.getParameter("courseId");
            String assignmentName = request.getParameter("assignmentName");
            String closingDate = request.getParameter("closingDate");
            String refMaterials = request.getParameter("refmaterials");
            int moduleId = Integer.valueOf(request.getParameter("module"));
            int batchId = Integer.valueOf(request.getParameter("batch"));
            int lectureId = Integer.valueOf(request.getParameter("lecture"));

            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date parseDOB = dateFormat.parse(closingDate);
            dateFormat.format(parseDOB);

            Module module = new Module();
            module.setModuleId(moduleId);

            Batch batch = new Batch();
            batch.setBatchId(batchId);

            Lecturer lecture = new Lecturer();
            lecture.setLecturerId(lectureId);

            Assignment assignment = new Assignment();
            assignment.setAssignmentId(assignmentId);
            assignment.setAssignmentName(assignmentName);
            assignment.setDeadLine(parseDOB);
            assignment.setFilePath(refMaterials);

        } catch (ParseException ex) {
            Logger.getLogger(AssignmentController.class.getName()).log(Level.SEVERE, null, ex);
        }

        ModelAndView view = new ModelAndView();
        view.setViewName("addAssignment");
        return view;
    }

    @RequestMapping(value = {"/assignment/submit"}, method = RequestMethod.POST)
    public ModelAndView submitAssignment(HttpServletRequest request, @ModelAttribute("emp") FileUpload fileUpload) {

        try {
            String filePath = uploadFile(request, fileUpload);
            
            
            Assignment assignment = new Assignment();
            assignment.setFilePath(filePath);
            assignment.setDeadLine(new Date());
            
        } catch (IOException ex) {
            Logger.getLogger(AssignmentController.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            ModelAndView mav = new ModelAndView();
            return mav;
        }
    }

    public String uploadFile(HttpServletRequest request,FileUpload emp) throws IOException {

        String root = request.getServletContext().getRealPath("/images");
        String[] extension = emp.getData().getContentType().split("/");
        SimpleDateFormat format = new SimpleDateFormat("yyyy_MM_dd");
        format.format(new Date());
        String fname = emp.getData().getOriginalFilename() + format + "." + extension[1];
        String fileName = root + "/" + fname;
        File f = new File(fileName);
        FileUtils.writeByteArrayToFile(f, emp.getData().getBytes());
        return fileName;

    }

//    @RequestMapping(value = {"/assignment/edit"}, method = RequestMethod.POST)
//    public ModelAndView editStudentForEdit(HttpServletRequest request, HttpSession userSession) {
////        try {
//            int assignmentId = Integer.valueOf(request.getParameter("assignmentId"));
//            String assignmentName = request.getParameter("assignmentName");
//            String closingDate = request.getParameter("closingDate");
//            String refMaterials = request.getParameter("refmaterials");
//            
//            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//            Date parseDOB = dateFormat.parse(closingDate);
//            dateFormat.format(parseDOB);
////Batch batch, Lecturer lecturer, Module module, String assignmentName, Date deadLine, String filePath, Set<Assignmentmark> assignmentmarks
//            assignmentService.editAssignment(new Assignment(null, null, null, null, assignmentName, parseDOB, refMaterials), assignmentId);
//                  
//        } catch (ParseException ex) {
//            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
//        } finally {
//            ModelAndView view = new ModelAndView();
//            view.setViewName("editStudent");
//            return view;
//        }
   // }
}
