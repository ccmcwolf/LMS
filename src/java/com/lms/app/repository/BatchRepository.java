/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.repository;

import com.lms.app.beans.Batch;
import java.util.List;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author User
 */
public interface BatchRepository {

    public void addBatch(Batch batch) throws DataAccessException;

    public List<Batch> getAllBatches() throws DataAccessException;
}
