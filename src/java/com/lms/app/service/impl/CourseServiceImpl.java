/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.service.impl;

import com.lms.app.beans.Course;
import com.lms.app.beans.Coursecontent;
import com.lms.app.beans.Fee;
import com.lms.app.repository.CourseRepository;
import com.lms.app.service.CourseService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author User
 */
@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseRepository courseRepository;

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = false, isolation = Isolation.READ_COMMITTED)
    public void addCourse(Course course) throws DataAccessException {
        courseRepository.addCourse(course);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = false, isolation = Isolation.READ_COMMITTED)
    public List<Course> getAllCourses() throws DataAccessException {
        return courseRepository.getAllCourses();
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = false, isolation = Isolation.READ_COMMITTED)
    public void addCouserContent(Coursecontent coursecontent) throws DataAccessException {
        courseRepository.addCouserContent(coursecontent);
    }

}
