<!DOCTYPE html>
<html lang="en">
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
  <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", basePath);
%>
  <head>
    <meta charset="utf-8">
    <title>FaceTouch Web Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Bluth Company">
    <link rel="shortcut icon" href="assets/ico/favicon.html">
    <link href="${path}assets/css/bootstrap.css" rel="stylesheet">
    <link href="${path}assets/css/theme.css" rel="stylesheet">
    <link href="${path}assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="${path}assets/css/alertify.css" rel="stylesheet">
    <link href="http://fonts.useso.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
    <link rel="Favicon Icon" href="favicon.ico">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>
  <body>
    <div id="wrap">
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <div class="logo"> 
            <img src="${path}assets/img/logo.png" alt="Realm Admin Template">
          </div>
           <a class="btn btn-navbar visible-phone" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
           <a class="btn btn-navbar slide_menu_left visible-tablet">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>

          <div class="top-menu visible-desktop">
          <ul class="pull-left">
          <% 
         // System.out.println(session.getAttribute("userEmail"));
          %>
          
            <li><a id="notifications" data-notification="" href="#"  style="font-size: 34px;"><i class="icon-globe"></i> ${userEmail }</a></li>
            </ul>
            <ul class="pull-right">  
              <li><a href="login.jsp"><i class="icon-off"></i> Logout</a></li>
            </ul>
          </div>

          <div class="top-menu visible-phone visible-tablet">
            <ul class="pull-right">  
              <li><a title="link to View all Messages page, no popover in phone view or tablet" href="#"><i class="icon-envelope"></i></a></li>
              <li><a title="link to View all Notifications page, no popover in phone view or tablet" href="#"><i class="icon-globe"></i></a></li>
              <li><a href="login.jsp"><i class="icon-off"></i></a></li>
            </ul>
          </div>

        </div>
      </div>
    </div>

    <div class="container-fluid">
     
      <!-- Side menu -->
   <div class="sidebar-nav nav-collapse collapse">
        <div class="user_side clearfix">
          <img src="assets/img/odinn.jpg" alt="Odinn god of Thunder">
          <h5>${userEmail }</h5>
          <a href="#"><i class="icon-cog"></i> Settings</a>        
        </div>
        <div class="accordion" id="accordion2">

          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_C3F7A7 collapsed"  href="${path}GroupManagement.jsp"><i class="icon-reorder"></i> <span>List Group</span></a>
            </div>
            <div id="collapse1" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="${path}GroupManagement.jsp"><i class="icon-star"></i> List Group</a>
                <a class="accordion-toggle" href="${path}AddGroup.jsp"><i class="icon-list-alt"></i> Add Group</a>
                <a class="accordion-toggle" href="${path}DeleteGroup.jsp"><i class="icon-table"></i> Delete Group</a>
                <a class="accordion-toggle" href="buttons.html"><i class="icon-circle"></i> unnamed</a>
              </div>
            </div>
          </div>
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_9FDDF6 collapsed"  href="${path}AddGroup.jsp"><i class="icon-reorder"></i> <span>Add Group</span></a>
            </div>
            <div id="collapse2" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="notifications.html"><i class="icon-rss"></i> unnamed</a>
                <a class="accordion-toggle" href="calendar.html"><i class="icon-calendar"></i> unnamed</a>
                <a class="accordion-toggle" href="gallery.html"><i class="icon-picture"></i> unnamed</a>
              </div>
            </div>
          </div>
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_9FDDF6 collapsed"  href="${path}DeleteGroup.jsp"><i class="icon-reorder"></i> <span>Delete Group</span></a>
            </div>
          </div>
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_9FDDF6" href="${path}PersonManagement.jsp"><i class="icon-reorder"></i> <span>List Person</span></a>
            </div>
          </div> 
          <div class="accordion-group">
            <div class="accordion-heading">
               <a class="accordion-toggle b_9FDDF6" href="${path}DeletePerson.jsp"><i class="icon-reorder"></i> <span>Delete Person</span></a>
            </div>
          </div> 
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_F5C294" href="${path}Users.jsp"><i class="icon-user"></i> <span>${userEmail }</span></a>
            </div>
          </div>      
        </div>
      </div>
      <!-- /Side menu -->

      <!-- Main window -->
       <%String userEmail = (String)session.getAttribute("userEmail");
      	if(userEmail == null){
      		//request.setAttribute("loginStatus","请登录！" );
			//request.getRequestDispatcher("../login.jsp").forward(request, response);
			response.sendRedirect("login.jsp");
      	}
      %>
      <div class="main_container" id="dashboard_page">
       <div class="widget widget-padding span12">
            <div class="widget-header">
              <i class="icon-list-alt"></i><h5>删除用户</h5>
              <div class="widget-buttons">
                  <a href="#" data-title="Collapse" data-collapsed="false" class="tip collapse" data-original-title=""><i class="icon-chevron-up"></i></a>
              </div>
            </div>
            <div class="widget-body">
              <div class="widget-forms clearfix">
                <form class="form-horizontal" action = "${path}Servlet/IndexServlet">
                  <div class="control-group">
                    <label class="control-label">删除用户</label>
                    <div class="controls">
                     <input type="hidden" name="action" value="deletePerson">
                     <h5>${deletePersonStatus }</h5>
                     <input class="span7" type="text" placeholder="请输入要删除的用户所属小组" name="groupName">
                     <input class="span7" type="text" placeholder="请输入要删除的用户ID" name="personID">
                      <button class="btn btn-primary" onclick="this.form.submit()" type="submit">删除</button>
                    </div>
                  </div>
                 
                </form>
              </div>
            </div>
            
          </div>
    
    </div>
        <!-- CHARTS  -->
    

  
       
      
  
      
    </div><!--/.fluid-container-->
    </div><!-- wrap ends-->


    <!-- example modal -->
    <div id="example_modal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Support Ticket</h3>
      </div>
      <div class="modal-body">
        <p>Here you can view and manage this support ticket.</p>
      </div>
      <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
        <button class="btn btn-primary">Save changes</button>
      </div>
    </div> 

    <!-- example modal -->
    <div id="example_modal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Example Modal</h3>
      </div>
      <div class="modal-body">
        <p>Here you can write more information about the object you clicked</p>
      </div>
      <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
        <button class="btn btn-primary">Save changes</button>
      </div>
    </div> 



    <!-- task_modal modal -->
    <div id="task_modal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Task info example</h3>
      </div>
      <div class="modal-body">
        <div class="clearfix">
          <img src="assets/img/avatars/11.jpg" class="img-circle" style="float: left; width: 65px; margin-right: 20px;">
           <h3 style="margin:0">John</h3>
           <p class="muted">Marketing</p>
        </div>
        <hr>
        <h5>Task</h5>
        <p>Create a marketing plan for the new campaign</p>
        <h5>status&nbsp;&nbsp;<small>60%</small></h5>
        <div class="progress">
          <div class="bar" style="width: 60%;"></div>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
      </div>
    </div> 



    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="assets/js/raphael-min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src='assets/js/sparkline.js'></script>
    <script type="text/javascript" src='assets/js/morris.min.js'></script>
    <script type="text/javascript" src="assets/js/jquery.dataTables.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.masonry.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.imagesloaded.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.facybox.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.alertify.min.js"></script> 
    <script type="text/javascript" src="assets/js/jquery.knob.js"></script>
    <script type='text/javascript' src='assets/js/fullcalendar.min.js'></script>
    <script type='text/javascript' src='assets/js/jquery.gritter.min.js'></script>
    <script type="text/javascript" src="assets/js/realm.js"></script>
    <script type="text/javascript" src="assets/js/jquery.slimscroll.min.js"></script>
  </body>
</html>
