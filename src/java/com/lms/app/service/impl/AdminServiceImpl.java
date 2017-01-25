/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.service.impl;

import com.lms.app.beans.Admin;
import com.lms.app.beans.User;
import com.lms.app.repository.AdminRepository;
import com.lms.app.service.AdminService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author User
 */
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminRepository adminRepository;

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = false, isolation = Isolation.READ_COMMITTED)
    public Admin getAdminData(User user) throws DataAccessException {
        return adminRepository.getAdminData(user);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = false, isolation = Isolation.READ_COMMITTED)
    public void addAdminData(Admin admin) throws DataAccessException {
        adminRepository.addAdminData(admin);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = false, isolation = Isolation.READ_COMMITTED)
    public List<Admin> getAllAdmins() throws DataAccessException {
        return adminRepository.getAllAdmins();
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = false, isolation = Isolation.READ_COMMITTED)
    public Admin getLecturerDataByStudentID(String aid) throws DataAccessException {
        return adminRepository.getAdminDataByStudentID(aid);
    }

}
