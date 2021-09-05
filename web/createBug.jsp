<%-- 
    Document   : createBug
    Created on : 12-Jun-2021, 9:42:18 PM
    Author     : Nandini Ojha
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Bug</title> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> 
        <title>Create Bug</title>
  </head>
  <body>
       <div class="container">
       <h1 style="text-align: center;"> Create Bug </h1>
       <br>
       <div class="jumbotron">
       <h3 style="font-weight: bold;">Add New Bug:</h3>
       <br>

       <form id="issueInputForm" action="CreateBugServlet" method="post">
          <div class="form-group">
            <label for="issueProjectInput">Project</label>
            <input type="text" name="bug_project" class="form-control" id="issueProjectInput" placeholder="Enter Project ..." required>
          </div>
          <div class="form-group">
            <label for="issueDescInput">Description</label>
            <input type="text" name="bug_desc" class="form-control" id="issueDescInput" placeholder="Describe the issue ..." required>
          </div>
          <div class="form-group">
            <label  for="issueSeverityInput">Severity</label>
            <select name="bug_severity" id="issueSeverityInput" class="form-control">
              <option value="Low">Low</option>
              <option value="Medium">Medium</option>
              <option value="High">High</option>
            </select>
          </div>
           
          <div class="form-group">
            <label for="issueStatusInput">Status</label>
            <select name="bug_status" id="issueStatusInput" class="form-control">
              <option value="Open">Open</option>
              <option value="Close">Close</option>
            </select>
          </div>
           
          <div class="form-group">
            <label for="issueAssignedToInput">Assigned To</label>
            <input name="bug_assigned" type="text" class="form-control" id="issueAssignedToInput" placeholder="Enter responsible ..." required>
          </div>
          <button type="submit" class="btn btn-primary">Add</button>
          <a href="dashboard.jsp" class="btn btn-primary">Go back</a>
       </form>
       </div>
      </div>
  </body>
</html>
