/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository.impl;

import com.lms.app.beans.Course;
import com.lms.app.beans.Coursecontent;
import com.lms.app.repository.CourseRepository;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public class CourseRepositoryImpl implements CourseRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addCourse(Course course) throws DataAccessException {
        sessionFactory.getCurrentSession().save(course);
    }

    @Override
    public List<Course> getAllCourses() throws DataAccessException {
        return (List<Course>) sessionFactory.
                getCurrentSession()
                .createCriteria(Course.class)
                .setMaxResults(100)
                .list();
    }

    @Override
    public void addCouserContent(Coursecontent coursecontent) throws DataAccessException {
        sessionFactory.getCurrentSession().save(coursecontent);
    }

}
