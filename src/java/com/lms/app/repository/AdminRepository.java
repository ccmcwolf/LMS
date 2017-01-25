/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository;

import com.lms.app.beans.Admin;
import com.lms.app.beans.User;
import java.util.List;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author User
 */
public interface AdminRepository {

    public Admin getAdminDataByStudentID(String aid) throws DataAccessException;
    
    public Admin getAdminData(User user) throws DataAccessException;

    public void addAdminData(Admin admin) throws DataAccessException;

    public List<Admin> getAllAdmins() throws DataAccessException;
}
