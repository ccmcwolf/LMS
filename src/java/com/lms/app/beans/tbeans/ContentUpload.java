/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.app.beans.tbeans;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 *
 * @author User
 */
public class ContentUpload {

    private CommonsMultipartFile dataFile;
    private String name;
    private String heading;
    private String sheading;
    private String conentBody;
    private Integer mid;
    private Integer bid;
    private Integer cid;

    /**
     * @return the dataFile
     */
    public CommonsMultipartFile getDataFile() {
        return dataFile;
    }

    /**
     * @param dataFile the dataFile to set
     */
    public void setDataFile(CommonsMultipartFile dataFile) {
        this.dataFile = dataFile;
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
     * @return the heading
     */
    public String getHeading() {
        return heading;
    }

    /**
     * @param heading the heading to set
     */
    public void setHeading(String heading) {
        this.heading = heading;
    }

    /**
     * @return the sheading
     */
    public String getSheading() {
        return sheading;
    }

    /**
     * @param sheading the sheading to set
     */
    public void setSheading(String sheading) {
        this.sheading = sheading;
    }

    /**
     * @return the conentBody
     */
    public String getConentBody() {
        return conentBody;
    }

    /**
     * @param conentBody the conentBody to set
     */
    public void setConentBody(String conentBody) {
        this.conentBody = conentBody;
    }

    /**
     * @return the mid
     */
    public Integer getMid() {
        return mid;
    }

    /**
     * @param mid the mid to set
     */
    public void setMid(Integer mid) {
        this.mid = mid;
    }

    /**
     * @return the bid
     */
    public Integer getBid() {
        return bid;
    }

    /**
     * @param bid the bid to set
     */
    public void setBid(Integer bid) {
        this.bid = bid;
    }

    /**
     * @return the cid
     */
    public Integer getCid() {
        return cid;
    }

    /**
     * @param cid the cid to set
     */
    public void setCid(Integer cid) {
        this.cid = cid;
    }
}
