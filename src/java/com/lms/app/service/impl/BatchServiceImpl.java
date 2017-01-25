/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.service.impl;

import com.lms.app.beans.Batch;
import com.lms.app.repository.BatchRepository;
import com.lms.app.service.BatchServce;
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
public class BatchServiceImpl implements BatchServce {

    @Autowired
    private BatchRepository batchRepository;

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = false, isolation = Isolation.READ_COMMITTED)
    public void addBatch(Batch batch) throws DataAccessException {
        batchRepository.addBatch(batch);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW, readOnly = false, isolation = Isolation.READ_COMMITTED)
    public List<Batch> getAllBatches() throws DataAccessException {
        return batchRepository.getAllBatches();
    }

}
