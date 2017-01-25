/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository.impl;

import com.lms.app.beans.Batch;
import com.lms.app.repository.BatchRepository;
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
public class BatchRepositoryImpl implements BatchRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addBatch(Batch batch) throws DataAccessException {
        sessionFactory.getCurrentSession().save(batch);
    }

    @Override
    public List<Batch> getAllBatches() throws DataAccessException {
        return (List<Batch>) sessionFactory.
                getCurrentSession()
                .createCriteria(Batch.class)
                .setMaxResults(100)
                .list();
    }

}
