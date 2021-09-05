<%-- 
    Document   : editBug
    Created on : 15-Jul-2021, 10:48:14 pm
    Author     : Nandini Ojha
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.entities.Bug"%>
<%@page import="com.Dao.BugDao"%>
<%@page import="com.helper.ConnectionProvider"%>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Bug</title>
    </head>
    <body>
         <form action="EditBugServlet" method="post">
            
              
              <div class="form-group">
                  <label>Project</label>
                  <input type="text" class="form-control" name="editProject"/>
              </div>
              
              <div class="form-group">
                  <label>Description</label>
                  <input type="text" class="form-control" name="editDescription" />
              </div>
              
              <div class="form-group">
                  <label>Severity</label>
                  <select name="editSeverity">
                         <option value="high">High</option>
                         <option value="medium">Medium</option>
                         <option value="low">Low</option>
                  </select> 
              </div>
              
              <div class="form-group">
                  <label>Status</label>
                  <select name="editStatus">
                      <option value="open">Open</option>
                      <option value="close">Close</option>
                  </select>
              </div>
              
              <div class="form-group">
                  <label>Assigned To</label>
                  <input type="text" class="form-control" name="editAssigned" />
              </div>
                  
              <button type="submit" class="btn btn-warning">Update</button>
              <a class="viewBug.jsp" class="btn btn-default">Back</a>
         </form>
           
    </body>
</html>
