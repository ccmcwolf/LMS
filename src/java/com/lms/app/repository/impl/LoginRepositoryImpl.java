/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository.impl;

import com.lms.app.beans.Admin;
import com.lms.app.beans.Lecturer;
import com.lms.app.beans.Student;
import com.lms.app.beans.User;
import com.lms.app.exchangedata.LoginData;
import com.lms.app.repository.LoginRepository;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public class LoginRepositoryImpl implements LoginRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public User loginUser(User user) throws DataAccessException {
        User loginData = (User) sessionFactory
                .getCurrentSession()
                .createSQLQuery("select * from User where UserName=:an and Password=:pw")
                .addEntity(User.class)
                .setParameter("an", user.getUserName())
                .setParameter("pw", user.getPassword())
                .uniqueResult();
//        System.out.println("LOGDATA : " + loginData.getUserName());
//        System.out.println("LOGDATA : " + loginData.getPassword());
        if (loginData != null) {
            return loginData;
        } else {
            return new User("404", "404", "404", null, null, null, null);
        }
    }
}
