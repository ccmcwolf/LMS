package com.lms.app.repository.impl;

import com.lms.app.beans.Module;
import com.lms.app.repository.ModuleRepository;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author User
 */
@Repository
public class ModuleRepositoryImpl implements ModuleRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addCourseModule(Module module) throws DataAccessException {
        sessionFactory.getCurrentSession().save(module);
    }

    @Override
    public List<Module> getAllModules() throws DataAccessException {
        return (List<Module>) sessionFactory.
                getCurrentSession()
                .createCriteria(Module.class)
                .setMaxResults(100)
                .list();
    }

}
