/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository.impl;

import com.lms.app.beans.Message;
import com.lms.app.repository.MessageRepository;
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
public class MessageRepositoryImpl implements MessageRepository{

    
    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public void sendMessage(Message message) throws DataAccessException {
          sessionFactory.getCurrentSession().save(message);
    }

//    @Override
//    public List<Message> getAllMessages(String userid) throws DataAccessException {
//           return (List<Message>) sessionFactory.getCurrentSession().createQuery("from Message where ToUserId = '"+userid+"'").list();
//    }
    
}
