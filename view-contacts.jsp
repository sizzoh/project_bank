<%-- 
    Document   : view-contacts
    Created on : Oct 28, 2022, 10:07:14 PM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>contacts response</title>
        <style>
            body{
                background-color:chartreuse; 
            }
            .table td{
                padding: 20px;
            }
            .ul li a{
                list-style: none;
                text-decoration: none;
                text-align: left;
            }
            
        </style>

    </head>
    <body>
        
        <div class="navbar navbar-inverse set-radius-zero">
            <div class="container">
                <div class="navbar-header">
                    
                   
                <div class="right-div">
                    <a href="login.jsp" class="btn btn-danger pull-right">LOG
                        ME OUT</a>
                </div>
                    <h1>At this page admin can navigate to view customer</h1>
                    <h1>opinions based on the implementation of the project</h1>
                    <h1> this can help admin to view how customers comment</h1>
                    <h1>on the system.</h1>
            </div>
        </div>
        <jsp:include page="adminHeader.jsp"></jsp:include>
            <!-- MENU SECTION END-->
            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm">
                        <div class="col-md-12">
                            <h4 class="header-line">View Contacts</h4>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="panel panel-success">
                                <div class="panel-heading">View Contacts</div>
                                <div class="panel-body">
                                    <form action="message" method="post">
                                        
                                        <input type="submit" value="check contacts">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- CONTENT-WRAPPER SECTION END-->
                <jsp:include page="admin-footer.jsp"></jsp:include>

                </body>
                </html>

                </body>
                </html>
