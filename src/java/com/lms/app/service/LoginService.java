/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.service;

import com.lms.app.beans.User;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author Chathura madushan
 */
public interface LoginService {

    public User loginUser(User user) throws DataAccessException;
}
