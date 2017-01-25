package com.lms.app.repository.impl;

import com.lms.app.beans.Student;
import com.lms.app.beans.User;
import com.lms.app.repository.StudentRepository;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public class StudentRepositoryImpl implements StudentRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Student getStudentData(User user) throws DataAccessException {
        return (Student) sessionFactory
                .getCurrentSession()
                .createSQLQuery("select * from Student where UserID=:uid")
                .addEntity(Student.class)
                .setParameter("uid", user.getUserId())
                .uniqueResult();
    }

    @Override
    public void addStudentData(Student student) throws DataAccessException {
        sessionFactory.getCurrentSession().save(student);
    }

    @Override
    public List<Student> getAllStudents() throws DataAccessException {
        return (List<Student>) sessionFactory.
                getCurrentSession()
                .createCriteria(Student.class)
                .setMaxResults(100)
                .list();
    }

    @Override
    public Student getStudentDataByStudentID(String sid) throws DataAccessException {
        return (Student) sessionFactory
                .getCurrentSession()
                .createSQLQuery("select * from Student where StudentID=:sid")
                .addEntity(Student.class)
                .setParameter("sid", sid)
                .uniqueResult();
    }

    @Override
    public void editStudentData(Student student, int id) throws DataAccessException {

        sessionFactory
                .getCurrentSession()
                .createSQLQuery("update Student SET name=:nm, dob=:bd, address=:ad,  WHERE studentID=:id")
                .addEntity(Student.class)
                .setParameter("nm", student.getName())
                .setParameter("db", student.getDob())
                .setParameter("ad", student.getAddress())
                .setParameter("id", id)
                .executeUpdate();

    }

}
