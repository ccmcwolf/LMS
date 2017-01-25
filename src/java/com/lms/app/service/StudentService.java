
package com.lms.app.service;

import com.lms.app.beans.Student;
import com.lms.app.beans.User;
import java.util.List;
import org.springframework.dao.DataAccessException;


public interface StudentService {
    
    public Student getStudentDataByStudentID(String sid) throws DataAccessException;

    public Student getStudentData(User user) throws DataAccessException;

    public void addStudentData(Student student) throws DataAccessException;
    
    public List<Student> getAllStudents() throws DataAccessException;
    
    public void editStudentData(Student student,int id) throws DataAccessException;
}
