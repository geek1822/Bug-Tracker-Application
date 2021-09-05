<%-- 
    Document   : dashboard
    Created on : 12-Jun-2021, 9:41:39 PM
    Author     : Nandini Ojha
--%>

<%@page import="com.entities.User"%>
<%@page errorPage="Error.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User user = (User)session.getAttribute("currentUser");
    
    if(user == null)
    {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DashBoard</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    
    <style>
   .container{
        padding-left:  100px;   
    }
  .card-box {
    position: relative;
    color: #fff;
    padding: 15px 10px 40px;
    margin: 20px 0px;
  }
  .card-box:hover {
    text-decoration: none;
    color: #f1f1f1;
  }
  
 .card-box .inner {
    padding: 5px 10px 0 10px;
  }
.card-box h4 {
    font-size: 25px;
    font-weight: bold;
    margin: 0 0 8px 0;
    white-space: nowrap;
    padding: 0;
    text-align: left;
}

.card-box .icon {
    position: absolute;
    top: auto;
    bottom: 5px;
    right: 5px;
    z-index: 0;
    font-size: 55px;
    color: rgba(0, 0, 0, 0.15);
}
.card-box .card-box-footer {
    position: absolute;
    left: 0px;
    bottom: 0px;
    text-align: center;
    padding: 3px 0;
    color: rgba(255, 255, 255, 0.8);
    background: rgba(0, 0, 0, 0.1);
    width: 100%;
    text-decoration: none;
}
.card-box:hover .card-box-footer {
    background: rgba(0, 0, 0, 0.3);
}
.bg-blue {
    background-color: #00c0ef !important;
}
.bg-green {
    background-color: #00a65a !important;
}
.bg-red {
    background-color: #d9534f !important;
}
 h1{
    text-align: center;
    padding-top: 85px;
    color: #009999;
 }
 .icon{
    padding-left: 40%;
    
 }
 
 </style>
</head>
<body>
    <h1 class="jumbotron">Welcome To Bug Tracking System</h1>
    <br>
    <img src="images/icon_bug.jfif" class ="icon">
    <br>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-sm-8">
                <div class="card-box bg-blue">
                    <div class="inner">
                        <h4>View Bug</h4>
                    </div>
                    <div class="icon">
                        <i class="fa fa-eye" aria-hidden="true"></i>
                    </div>
                        <a href="viewBug.jsp" class="card-box-footer"> Click <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>

            <div class="col-lg-4 col-sm-8">
                <div class="card-box bg-green">
                    <div class="inner">
                        <h4> Create Bug </h4>
                    </div>
                    <div class="icon">
                        <i class="fa fa-bug" aria-hidden="true"></i>
                    </div>
                    <a href="createBug.jsp" class="card-box-footer"> Click <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-4 col-sm-8">
                <div class="card-box bg-red">
                    <div class="inner">
                        <h4> Logout </h4>
                    </div>
                    <div class="icon">
                        <i class="fa fa-sign-out" aria-hidden="true"></i>
                    </div>
                    <a href="logout.jsp" class="card-box-footer">Click <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
        </div>
    </div>
   
</body>
</html>