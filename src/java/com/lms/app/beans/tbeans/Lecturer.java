/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.beans.tbeans;

/**
 *
 * @author User
 */
public class Lecturer {

    private Integer lec_id;
    private String name;
    private String password;
    private Integer q_id;

    /**
     * @return the lec_id
     */
    public Integer getLec_id() {
        return lec_id;
    }

    /**
     * @param lec_id the lec_id to set
     */
    public void setLec_id(Integer lec_id) {
        this.lec_id = lec_id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the q_id
     */
    public Integer getQ_id() {
        return q_id;
    }

    /**
     * @param q_id the q_id to set
     */
    public void setQ_id(Integer q_id) {
        this.q_id = q_id;
    }

}
