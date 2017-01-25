/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.service.impl;

import com.lms.app.beans.Lecturer;
import com.lms.app.beans.User;
import com.lms.app.beans.tbeans.LecturerRegistrationObj;
import com.lms.app.repository.LecturerRepository;
import com.lms.app.service.LecturerService;
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
public class LecturerServiceImpl implements LecturerService {

    @Autowired
    private LecturerRepository lecturerRepository;

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = false, isolation = Isolation.READ_COMMITTED)
    public Lecturer getLecturerData(User user) throws DataAccessException {
        return lecturerRepository.getLecturerData(user);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = false, isolation = Isolation.READ_COMMITTED)
    public void addLecturerData(Lecturer lecturer) throws DataAccessException {
        lecturerRepository.addLecturerData(lecturer);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = true, isolation = Isolation.READ_COMMITTED)
    public Lecturer getLecturerDataByStudentID(String lid) throws DataAccessException {
        return lecturerRepository.getLecturerDataByStudentID(lid);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = true, isolation = Isolation.READ_COMMITTED)
    public List<Lecturer> getAllLecturers() throws DataAccessException {
        return lecturerRepository.getAllLecturers();
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = true, isolation = Isolation.READ_COMMITTED)
    public void registerLecturer(LecturerRegistrationObj registrationObj) throws DataAccessException {
        lecturerRepository.registerLecturer(registrationObj);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = false, isolation = Isolation.READ_COMMITTED)
    public void editLecturerData(Lecturer lecturer) throws DataAccessException {
        lecturerRepository.editLecturerData(lecturer);
    }

}
