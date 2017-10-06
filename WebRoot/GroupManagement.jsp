<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
 <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", basePath);
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>FaceTouch UI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Bluth Company">
    <link rel="shortcut icon" href="${path}assets/ico/favicon.html">
    <link href="${path}assets/css/bootstrap.css" rel="stylesheet">
    <link href="${path}assets/css/theme.css" rel="stylesheet">
    <link href="${path}assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="${path}assets/css/alertify.css" rel="stylesheet">
    <link rel="Favicon Icon" href="${path}favicon.ico">
    <link href="http://fonts.useso.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="${path}assets/css/colorpicker.css" rel="stylesheet">
    <link href="${path}assets/css/datepicker.css" rel="stylesheet">
    <link href="${path}assets/css/timepicker.css" rel="stylesheet">
    <link href="${path}assets/css/select2.css" rel="stylesheet">
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
          System.out.println(session.getAttribute("userEmail"));
          %>
            <li><a ><i class="icon-globe"></i> ${userEmail }</a></li>
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
              <a class="accordion-toggle b_9FDDF6" href="PersonManagement.jsp"><i class="icon-reorder"></i> <span>List Person</span></a>
            </div>
          </div> 
          <div class="accordion-group">
            <div class="accordion-heading">
                 <a class="accordion-toggle b_9FDDF6" href="DeletePerson.jsp"><i class="icon-reorder"></i> <span>Delete Person</span></a>
            </div>
          </div> 
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_F5C294" href="users.html"><i class="icon-user"></i> <span>Admin</span></a>
            </div>
          </div>      
        </div>
      </div>
      <!-- /Side menu -->

      <!-- Main window -->
      <div class="main_container" id="ui_page">
      <form action = "${path}Servlet/IndexServlet">
      <input type="hidden" name="action" value="listgroup">
<h2 class="heading">
                小组查询
                
          </h2>
<button class="btn btn-primary" onclick="this.form.submit()" type="submit">查询小组</button>
</form>
 <div class="widget widget-padding span6" >
            <div class="widget-header">
              <i class="icon-calendar"></i>
              <h5>小组列表</h5>
              <div class="widget-buttons">
                  <a href="#" data-title="Collapse" data-collapsed="false" class="collapse"><i class="icon-chevron-up"></i></a>
              </div>
            </div>  
            <div class="widget-body" style="height: 290px;">
              <table class="table">
                <thead>
                  
                <tr>
                  <th>小组名称</th>
                  <th>组员数量</th>
                  
                </tr>
                </thead>
                <tbody>
                  <%String groupName;
                  String personCount;
                  String groupCount =(String)request.getAttribute("groupCount");
                  System.out.println(groupCount);
                  if(groupCount!=null){
                  int temCount = Integer.valueOf(groupCount);
                  
                  for(int i=0;i<temCount;i++){
                  groupName =(String)request.getAttribute("groupName"+i);
                  personCount =(String)request.getAttribute("personCount"+i);
                  if(groupName!=null)
                	  out.write("<tr><td>"+groupName+"</td><td>"+personCount+"</td></tr>");
                  } }%>
             
                
                
                </tbody>
              </table>
            </div>
          </div>
        </div>
   
       </div><!--/main_container-->
      
    </div><!--/.fluid-container-->
    </div><!-- wrap ends-->

    <script type="text/javascript" src="../../../code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="assets/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="assets/js/raphael-min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/realm.js"></script>



  </body>
</html>
