/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Dao;

import com.entities.Bug;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nandini Ojha
 */
public class EditBugDao {
    private Connection con;
    
     public EditBugDao(Connection con) {
        this.con = con;
    }
    
    //Inserting user to database
    public boolean editBug(Bug bug)
    {
        boolean f = false;
        try{
            //user --> database
            String query = "update into bug(project, descrp, severity, bug_status, assigned) values (?, ?, ?, ?, ?)";
            PreparedStatement psmt = this.con.prepareStatement(query);
            
            psmt.setString(1, bug.getProject());
            psmt.setString(2, bug.getDesciption());
            psmt.setString(3, bug.getSeverity());
            psmt.setString(4, bug.getStatus());
            psmt.setString(5, bug.getAssigned_to());
            
            psmt.executeUpdate();
            f = true;
        }
        
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
    }
    
    
}
