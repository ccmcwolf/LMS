/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository;

import com.lms.app.beans.Message;
import java.util.List;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author Chamith
 */
public interface MessageRepository {
    public void sendMessage(Message message) throws DataAccessException;
  //  public List<Message> getAllMessages(String userid) throws DataAccessException;
    
    public List<Message> viewMessages(Integer userId) throws DataAccessException;
    
}
