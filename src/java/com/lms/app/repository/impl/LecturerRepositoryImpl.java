/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository.impl;

import com.lms.app.beans.Lecturer;
import com.lms.app.beans.Student;
import com.lms.app.beans.User;
import com.lms.app.beans.tbeans.LecturerRegistrationObj;
import com.lms.app.repository.LecturerRepository;
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
public class LecturerRepositoryImpl implements LecturerRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Lecturer getLecturerData(User user) throws DataAccessException {
        Lecturer lecturer = (Lecturer) sessionFactory
                .getCurrentSession()
                .createSQLQuery("select * from Lecturer where UserID=:uid")
                .addEntity(Lecturer.class)
                .setParameter("uid", user.getUserId())
                .uniqueResult();
        System.out.println("lName : " + lecturer.getLecturerName());
        return lecturer;
    }

    @Override
    public void addLecturerData(Lecturer lecturer) throws DataAccessException {
        sessionFactory.getCurrentSession().save(lecturer);
    }

    @Override
    public Lecturer getLecturerDataByStudentID(String lid) throws DataAccessException {
        return (Lecturer) sessionFactory
                .getCurrentSession()
                .createSQLQuery("select * from Lecturer where LecturerID=:lid")
                .addEntity(Lecturer.class)
                .setParameter("lid", lid)
                .uniqueResult();
    }

    @Override
    public List<Lecturer> getAllLecturers() throws DataAccessException {
        return (List<Lecturer>) sessionFactory.
                getCurrentSession()
                .createCriteria(Lecturer.class)
                .setMaxResults(100)
                .list();
    }

    @Override
    public void registerLecturer(LecturerRegistrationObj registrationObj) throws DataAccessException {
        sessionFactory
                .getCurrentSession()
                .createSQLQuery(
                        "Insert into LecturerRegistration"
                        + "(batchId, courseId, lecturerId, assignedByAdminId, assignedDate) values "
                        + "(:b, :c, :l, :a, :d)"
                )
                .setParameter("b", registrationObj.getBatchId())
                .setParameter("c", registrationObj.getCourseId())
                .setParameter("l", registrationObj.getLecturerId())
                .setParameter("a", registrationObj.getAssignedByAdminID())
                .setParameter("d", registrationObj.getAssignedDate())
                .executeUpdate();

    }

    @Override
    public void editLecturerData(Lecturer lecturer) throws DataAccessException {
        sessionFactory
                .getCurrentSession()
                .createSQLQuery("up Student SET lecturerName=:nm, dob=:bd, address=:ad,  WHERE lecturerId=:id")
                .addEntity(Lecturer.class)
                .setParameter("nm", lecturer.getLecturerName())
                .setParameter("db", lecturer.getDob())
                .setParameter("ad", lecturer.getAddress())
                .setParameter("id", lecturer.getLecturerId())
                .executeUpdate();
    }

}
