/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entities;

/**
 *
 * @author Nandini Ojha
 */
public class Bug {
    
    private String project;
    private String desciption;
    private String severity;
    private String status;
    private String assigned_to;
    private String bug_number;

    public Bug(String project, String desciption, String severity, String status, String assigned_to, String bug_number) {
        this.project = project;
        this.desciption = desciption;
        this.severity = severity;
        this.status = status;
        this.assigned_to = assigned_to;
        this.bug_number = bug_number;
    }

    public Bug() {
    }

    public Bug(String project, String desciption, String severity, String status, String assigned_to) {
        this.project = project;
        this.desciption = desciption;
        this.severity = severity;
        this.status = status;
        this.assigned_to = assigned_to;
    }
    
    

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public String getDesciption() {
        return desciption;
    }

    public void setDesciption(String desciption) {
        this.desciption = desciption;
    }

    public String getSeverity() {
        return severity;
    }

    public void setSeverity(String severity) {
        this.severity = severity;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAssigned_to() {
        return assigned_to;
    }

    public void setAssigned_to(String assigned_to) {
        this.assigned_to = assigned_to;
    }
    
    public String getBug_number() {
        return bug_number;
    }

    public void setBug_number(String bug_number) {
        this.bug_number = bug_number;
    }
    
   
}
