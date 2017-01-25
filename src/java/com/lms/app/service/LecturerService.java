/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.service;

import com.lms.app.beans.Lecturer;
import com.lms.app.beans.User;
import com.lms.app.beans.tbeans.LecturerRegistrationObj;
import java.util.List;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author User
 */
public interface LecturerService {

    public Lecturer getLecturerDataByStudentID(String lid) throws DataAccessException;

    public Lecturer getLecturerData(User user) throws DataAccessException;

    public void addLecturerData(Lecturer lecturer) throws DataAccessException;

    public List<Lecturer> getAllLecturers() throws DataAccessException;

    public void registerLecturer(LecturerRegistrationObj registrationObj) throws DataAccessException;

    public void editLecturerData(Lecturer lecturer) throws DataAccessException;
}
