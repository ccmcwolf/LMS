/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.controller;

import com.lms.app.exchangedata.FileUpload;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author User
 */
@Controller
public class FileUploadController {

    /**
     *
     * @param emp
     * @param request
     * @return
     */
    @RequestMapping(value = "/assignment/upload", method = RequestMethod.POST)
    public String submitEmp(@ModelAttribute(value = "emp") FileUpload emp, HttpServletRequest request) {
        try {
            String root = request.getServletContext().getRealPath("/images");
            String[] extension = emp.getData().getContentType().split("/");
            SimpleDateFormat format = new SimpleDateFormat("yyyy_MM_dd");
            format.format(new Date());
            String fname = emp.getData().getOriginalFilename() + format +"." + extension[1];
            String fileName = root + "/" + fname;
            File f = new File(fileName);
            FileUtils.writeByteArrayToFile(f, emp.getData().getBytes());
            request.setAttribute("filed", fname);
            System.out.println(fileName);
        } catch (IOException ex) {
            Logger.getLogger(FileUploadController.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.setAttribute("emp", emp);
        return "adminp/admin_home";
    }
}
