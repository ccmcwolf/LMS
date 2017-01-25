/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.service;

import com.lms.app.beans.Module;
import java.util.List;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author User
 */
public interface ModuleService {

    public void addCourseModule(Module module) throws DataAccessException;

    public List<Module> getAllModules() throws DataAccessException;
}
