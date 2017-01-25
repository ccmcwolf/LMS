/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository.impl;

import com.lms.app.beans.Exam;
import com.lms.app.repository.ExamRepository;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public class ExamRepositoryImpl implements ExamRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addExam(Exam exam) throws DataAccessException {
        sessionFactory.getCurrentSession().save(exam);
    }

}
