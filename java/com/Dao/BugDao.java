/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Dao;

import com.entities.Bug;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nandini Ojha
 */
public class BugDao {
    private Connection con;

    public BugDao(Connection con) {
        this.con = con;
    }
    
    //Inserting user to database
    public boolean saveBug(Bug bug)
    {
        boolean f = false;
        try{
            //user --> database
            String query = "insert into bug(project, descrp, severity, bug_status, assigned) values (?, ?, ?, ?, ?)";
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
    
    //Getting all Bug from DB -> UI
    public List<Bug> getAllBug()
    {
        List<Bug> list = new ArrayList<>();
        
        //Fetch all bug from form
        try{
            PreparedStatement ps=con.prepareStatement("select * from  bug");
            
            ResultSet set=ps.executeQuery();
            
            while(set.next())
            {
                String project = set.getString("project");
                String description = set.getString("descrp");
                String severity = set.getString("severity");
                String status = set.getString("bug_status");
                String assigned_to = set.getString("assigned");
                
                //Creating Bug object
                Bug bug=new Bug(project, description, severity, status, assigned_to);
                
                //Adding bug to list
                list.add(bug);
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        return list;
    }
    
    
}
