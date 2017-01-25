/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.exchangedata;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 *
 * @author User
 */
public class FileUpload {

    CommonsMultipartFile data;

    /**
     * @return the data
     */
    public CommonsMultipartFile getData() {
        return data;
    }

    /**
     * @param data the data to set
     */
    public void setData(CommonsMultipartFile data) {
        this.data = data;
    }
}
