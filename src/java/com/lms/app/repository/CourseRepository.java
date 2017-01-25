
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository;

import com.lms.app.beans.Course;
import com.lms.app.beans.Coursecontent;
import com.lms.app.beans.Fee;
import com.lms.app.beans.Module;
import java.util.List;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author User
 */
public interface CourseRepository {

    public void addCourse(Course course) throws DataAccessException;

    public List<Course> getAllCourses() throws DataAccessException;
    
    public void addCouserContent(Coursecontent coursecontent) throws DataAccessException;
}
