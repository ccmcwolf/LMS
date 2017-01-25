/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository;

import com.lms.app.beans.User;
import java.util.List;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author Chamith
 */
public interface UserRepository {
    public User getUserData(User user) throws DataAccessException;
    
    public User getUserDataByUserID(String uid) throws DataAccessException;

    public void addUserData(User user) throws DataAccessException;
    
    public List<User> getAllUsers() throws DataAccessException;
   
}
