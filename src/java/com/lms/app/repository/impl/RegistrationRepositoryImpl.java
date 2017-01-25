/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository.impl;

import com.lms.app.beans.Registration;
import com.lms.app.beans.Student;
import com.lms.app.repository.RegistrationRepository;
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
public class RegistrationRepositoryImpl implements RegistrationRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void newRegistration(Registration registration) throws DataAccessException {
        sessionFactory.getCurrentSession().save(registration);
    }

    @Override
    public List<Registration> getAllRegisterStudents() throws DataAccessException {
        return (List<Registration>) sessionFactory
                .getCurrentSession()
                .createSQLQuery("select * from Registration")
                .addEntity(Registration.class)
                .list();
    }

    @Override
    public List<Registration> getAllRegisterStudents(int id) throws DataAccessException {
        
        return (List<Registration>) sessionFactory
                .getCurrentSession()
                .createSQLQuery("select * from Registration where BatchID=:bid")
                .addEntity(Registration.class)
                .setParameter("bid", id)                
                .list();
    }

}
