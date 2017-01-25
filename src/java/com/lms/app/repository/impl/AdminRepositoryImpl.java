/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository.impl;

import com.lms.app.beans.Admin;
import com.lms.app.beans.Lecturer;
import com.lms.app.beans.User;
import com.lms.app.repository.AdminRepository;
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
public class AdminRepositoryImpl implements AdminRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Admin getAdminData(User user) throws DataAccessException {
        return (Admin) sessionFactory
                .getCurrentSession()
                .createSQLQuery("select * from Admin where UserID=:uid")
                .addEntity(Admin.class)
                .setParameter("uid", user.getUserId())
                .uniqueResult();
    }

    @Override
    public void addAdminData(Admin admin) throws DataAccessException {
        sessionFactory.getCurrentSession().save(admin);
    }

    @Override
    public List<Admin> getAllAdmins() throws DataAccessException {
        return (List<Admin>) sessionFactory.
                getCurrentSession()
                .createCriteria(Admin.class)
                .setMaxResults(100)
                .list();
    }

    @Override
    public Admin getAdminDataByStudentID(String aid) throws DataAccessException {
        
        Admin admin = (Admin) sessionFactory
                .getCurrentSession()
                .createSQLQuery("select * from Admin where AdminId=:aid")
                .addEntity(Admin.class)
                .setParameter("aid", aid)
                .uniqueResult();
        
        return admin;
    }

}
