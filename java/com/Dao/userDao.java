/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Dao;
import com.entities.User;
import java.sql.*;
/**
 *
 * @author Nandini Ojha
 */
public class userDao {
    
    private Connection con;

    public userDao(Connection con) {
        this.con = con;
    }
    
    //Inserting user to database
    public boolean saveUser(User user)
    {
        boolean f = false;
        try{
            //user --> database
            String query = "insert into bug_user(name, pass, email) values (?, ?, ?)";
            PreparedStatement psmt = this.con.prepareStatement(query);
            
            psmt.setString(1, user.getName());
            psmt.setString(2, user.getPassword());
            psmt.setString(3, user.getEmail());
            
            psmt.executeUpdate();
            f = true;
        }
        
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
    }
    
    //Get user by email and password
    public User getUserByEmailAndPassword(String email, String password)
    {
        User user = null;
        
        try{
            String query = "select * from bug_user where email =? and pass =?";
            PreparedStatement psmt = con.prepareStatement(query);
            
            psmt.setString(1, email);
            psmt.setString(2, password);
            
            ResultSet set = psmt.executeQuery();
            
            if(set.next())
            {
                user = new User();
                
                //Data from db
                String name = set.getString("name");
                
                //Set to user object
                user.setName(name);
                
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("pass"));  
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return user;
    } 
}
