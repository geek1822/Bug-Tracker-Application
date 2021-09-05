<%-- 
    Document   : loadBug
    Created on : 13-Jul-2021, 2:17:51 am
    Author     : Nandini Ojha
--%>
<%@page import="com.entities.Bug"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.BugDao"%>
<%@page import="com.helper.ConnectionProvider"%>
<%@page import="java.sql.*" %>

<style>
    .main-card{
        margin: 6%;
    }
</style>
 

<div class="main-card">
<div class="row">
<%
        BugDao dao=new BugDao(ConnectionProvider.getConnection());
        List<Bug> bugs = dao.getAllBug();
        
         for(Bug b : bugs)
         {
             %>
             
             <div class="col col-lg-6" id="columns">
                 <div class="card">
                     <div class="card-body">
                         <div class="p-3 mb-2 bg-primary   text-white">
                         <p><b>Project: <%= b.getProject() %></b></p>
                         <p><b>Description: </b><%= b.getDesciption() %></p>
                         <p><b>Severity: </b><%= b.getSeverity() %></p>
                         <p><b>Status: </b><%= b.getStatus() %></p>
                         <p><b>Assigned to: </b><%= b.getAssigned_to() %></p>
                         <a href="editBug.jsp" class="btn btn-dark" id="edit-btn" >Edit</a>
                         </div>
                     </div>
                 </div>
             </div>
             
             <%
         }
                
%>

</div>
</div>
    