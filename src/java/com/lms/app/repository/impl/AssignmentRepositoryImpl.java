/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository.impl;

import com.lms.app.beans.Assignment;
import com.lms.app.beans.Student;
import com.lms.app.repository.AssignmentRepository;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public class AssignmentRepositoryImpl implements AssignmentRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addAssignmentData(Assignment assignment) throws DataAccessException {
        sessionFactory.getCurrentSession().save(assignment);
    }

    @Override
    public void editAssignment(Assignment assignment, int id) throws DataAccessException {
//        sessionFactory
//                .getCurrentSession()
//                .createSQLQuery("update Assignment SET assignmentName=:assignmentName, deadLine=:deadLine, filePath=:filePath WHERE assignmentId=:id")
//                .addEntry(Assignment.class)
//                .setParameter("assignmentName", assignment.getAssignmentName())
//                .setParameter("deadLine", assignment.getDeadLine())
//                .setParameter("filePath" assignment.getFilePath())
//                .setParameter("id", id)
//                .executeUpdate();
    }

    @Override
    public void submitAssignment(Assignment assignment) throws DataAccessException {
        sessionFactory.getCurrentSession().update(assignment);
    }

    @Override
    public List<Assignment> getStudentAssignment(int id) throws DataAccessException {

        List<Assignment> assignmentList = new ArrayList<>();
        //get student registered courses list
        List<String> batchIdList = (List<String>) sessionFactory
                .getCurrentSession()
                .createSQLQuery("select BatchID from Registration where StudentID=:sid")
                .addEntity(Assignment.class)
                .setParameter("sid", id)
                .list();

        for (String batchId : batchIdList) {
            List<Assignment> list = (List<Assignment>) sessionFactory
                    .getCurrentSession()
                    .createSQLQuery("select * from Assignment where BatchID=:bid")
                    .addEntity(Assignment.class)
                    .setParameter("bid", batchId)
                    .list();
            
            for (Assignment a : list) {
                Assignment assignment = new Assignment();
                assignment.setAssignmentName(a.getAssignmentName());
                assignmentList.add(assignment);
            }
        }

        return assignmentList;
    }

}
