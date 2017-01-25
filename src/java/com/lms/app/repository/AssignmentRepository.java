/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository;

import com.lms.app.beans.Assignment;
import java.util.List;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author User
 */
public interface AssignmentRepository {
    public void addAssignmentData(Assignment assignment) throws DataAccessException;
    public void editAssignment(Assignment assignment, int id) throws DataAccessException;
    public void submitAssignment(Assignment assignment) throws DataAccessException;
    public List<Assignment> getStudentAssignment(int id) throws DataAccessException;
}
