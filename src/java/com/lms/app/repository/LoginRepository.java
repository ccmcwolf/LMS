/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository;

import com.lms.app.beans.User;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author User
 */
public interface LoginRepository {

    public User loginUser(User user) throws DataAccessException;

}
