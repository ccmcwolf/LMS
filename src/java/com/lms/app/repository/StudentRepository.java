/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository;

import com.lms.app.beans.Student;
import com.lms.app.beans.User;
import java.util.List;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author User
 */
public interface StudentRepository {

    public Student getStudentData(User user) throws DataAccessException;
    
    public Student getStudentDataByStudentID(String sid) throws DataAccessException;

    public void addStudentData(Student student) throws DataAccessException;
    
    public List<Student> getAllStudents() throws DataAccessException;
    
    public void editStudentData(Student student,int id) throws DataAccessException;
}
