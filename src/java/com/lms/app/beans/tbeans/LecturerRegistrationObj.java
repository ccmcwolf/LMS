/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.beans.tbeans;

import java.util.Date;

/**
 *
 * @author User
 */
public class LecturerRegistrationObj {

    private Integer batchId;
    private Integer courseId;
    private Integer lecturerId;
    private Integer assignedByAdminID;
    private Date assignedDate;

    /**
     * @return the batchId
     */
    public Integer getBatchId() {
        return batchId;
    }

    /**
     * @param batchId the batchId to set
     */
    public void setBatchId(Integer batchId) {
        this.batchId = batchId;
    }

    /**
     * @return the courseId
     */
    public Integer getCourseId() {
        return courseId;
    }

    /**
     * @param courseId the courseId to set
     */
    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    /**
     * @return the lecturerId
     */
    public Integer getLecturerId() {
        return lecturerId;
    }

    /**
     * @param lecturerId the lecturerId to set
     */
    public void setLecturerId(Integer lecturerId) {
        this.lecturerId = lecturerId;
    }

    /**
     * @return the assignedByAdminID
     */
    public Integer getAssignedByAdminID() {
        return assignedByAdminID;
    }

    /**
     * @param assignedByAdminID the assignedByAdminID to set
     */
    public void setAssignedByAdminID(Integer assignedByAdminID) {
        this.assignedByAdminID = assignedByAdminID;
    }

    /**
     * @return the assignedDate
     */
    public Date getAssignedDate() {
        return assignedDate;
    }

    /**
     * @param assignedDate the assignedDate to set
     */
    public void setAssignedDate(Date assignedDate) {
        this.assignedDate = assignedDate;
    }

}
