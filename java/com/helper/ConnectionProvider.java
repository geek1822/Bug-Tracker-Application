/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author Nandini Ojha
 */
package com.helper;
import java.sql.*;

/**
 *
 * @author Nandini Ojha
 */
public class ConnectionProvider {
    private static Connection con;
    
    public static Connection getConnection()
    {
        
        try{
            
           if(con == null)
           {
             //Loading Driver class
             Class.forName("com.mysql.jdbc.Driver");
            
             //Creating a Connection
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tracker", "root", "geek1822");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}
