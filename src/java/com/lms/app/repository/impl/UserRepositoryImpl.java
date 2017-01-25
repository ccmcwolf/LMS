/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository.impl;


import com.lms.app.beans.User;
import com.lms.app.repository.UserRepository;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Chamith
 */
@Repository
public class UserRepositoryImpl implements UserRepository{

    
    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public User getUserData(User user) throws DataAccessException {
        return (User) sessionFactory
                .getCurrentSession()
                .createSQLQuery("select * from User where UserID=:uid")
                .addEntity(User.class)
                .setParameter("uid", user.getUserId())
                .uniqueResult();
    }

    @Override
    public User getUserDataByUserID(String uid) throws DataAccessException {
          return (User) sessionFactory
        .getCurrentSession()
                .createSQLQuery("select * from User where UserID=:uuid")
                .addEntity(User.class)
                .setParameter("uuid", uid)
                .uniqueResult();
    }

    @Override
    public void addUserData(User user) throws DataAccessException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<User> getAllUsers() throws DataAccessException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
