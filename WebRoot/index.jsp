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
      <link crossorigin="anonymous" href="${path}assets/css/redme1.css" integrity="sha256-vt/FGDRUmKsyBNMwwXJ83n5zNSagnNffaGf2ojFWUJE=" media="all" rel="stylesheet">
  <link crossorigin="anonymous" href="${path}assets/css/redme2.css" integrity="sha256-9O1cDMuOxosILACAOoaEYjBIKDhMMkEYNdtJV1PxcV8=" media="all" rel="stylesheet">
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
              <a class="accordion-toggle b_C3F7A7 collapsed"  href="${path}GroupManagement.jsp"><i class="icon-magic"></i> <span>List Group</span></a>
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
              <a class="accordion-toggle b_F5C294" href="Users.jsp"><i class="icon-user"></i> <span>${userEmail }</span></a>
            </div>
          </div>      
        </div>
      </div>
      <!-- /Side menu -->

      <!-- Main window -->
      <div class="main_container" id="dashboard_page">
      <div id="readme" class="readme blob instapaper_body">
    
<!--<h2><a href="https://github.com/549876099/-/blob/master/README.md#目录" aria-hidden="true" class="anchor" id="user-content-目录"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>目录</h2>
<ul>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list1">1.服务介绍</a></li>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list2">2.API调用规则</a></li>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list3">3.服务接口</a>
<ul>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list3.1">3.1 分组管理</a>
<ul>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list3.1.1">3.1.1 添加用户组</a></li>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list3.1.2">3.1.2 删除用户组</a></li>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list3.1.3">3.1.3 查询用户组</a></li>
</ul>
</li>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list3.2">3.2 用户管理</a>
<ul>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list3.2.1">3.2.1 添加用户</a></li>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list3.2.2">3.2.2 删除用户</a></li>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list3.2.3">3.2.3 查询用户组用户</a></li>
</ul>
</li>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list3.3">3.3 指纹识别</a>
<ul>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list3.3.1">3.3.1 指纹搜索(1:N)</a></li>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list3.2.2">3.2.2 指纹比对(1:1)</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="https://github.com/549876099/-/blob/master/README.md#list4">4.通用服务器信息</a></li>
</ul>-->
<p><a id="user-content-list1"></a></p>
   <div class="widget widget-padding span12">
            <div class="widget-header">
             &nbsp; &nbsp;&nbsp;</i><h1>指纹识别服务介绍</h1>
              <div class="widget-buttons">
                  <a href="#" data-title="Collapse" data-collapsed="false" class="tip collapse" data-original-title=""><i class="icon-chevron-up"></i></a>
              </div>
            </div>
            <div class="widget-body">
              <div class="widget-forms clearfix">
               
             
<h2><a href="https://github.com/549876099/-/blob/master/README.md#1服务介绍" aria-hidden="true" class="anchor" id="user-content-1服务介绍"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>1.服务介绍</h2>
<p>系统可提供开放的指纹图像处理服务，通过<code>HTTP API</code>接口请求进行调用。</p>
<p>开放服务：</p>
<blockquote>
<p>指纹检索(1:N)</p>
</blockquote>
<blockquote>
<p>指纹比对(1:1)</p>
</blockquote>
<p><a id="user-content-list2"></a></p>
<h2><a href="https://github.com/549876099/-/blob/master/README.md#2api调用规则" aria-hidden="true" class="anchor" id="user-content-2api调用规则"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>2.API调用规则</h2>
<ul>
<li>
<p>API调用——<code>原理</code>：API是<code>HTTP API</code>。常用的编程语言都能发起HTTP请求（通过第三方库或自带API），使用者向我们的服务器发起HTTP请求，并加上合适的参数，服务器将会对请求进行处理，得到结果将会返回给使用者。</p>
</li>
<li>
<p>API调用——<code>鉴权</code>：帐号下每创建一个应用就会生成一组对应的 <code>app_key</code> 和 <code>app_secret</code>，用以识别用户是否有权限调用 API，所有的API调用必须提供对应的一组 app_key 和 app_secret 参数。</p>
</li>
<li>
<p>API调用——<code>参数</code>：调用每个API需要根据需求传不同的参数，每个API参数的详细定义请查看<code>下方文档</code>。所有 API 的调用都要使用 POST 请求，用户可以以 Query String 的形式将参数写进请求体中。</p>
</li>
<li>
<p>API调用——<code>提示</code>：为了避免因网络问题而靠成的阻塞，建议将 API 调用放进<code>异步线程</code>里执行。</p>
</li>
</ul>
<p><a id="user-content-list3"></a></p>
<h2><a href="https://github.com/549876099/-/blob/master/README.md#3服务接口" aria-hidden="true" class="anchor" id="user-content-3服务接口"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>3.服务接口</h2>
<p><a id="user-content-list3.1"></a></p>
<h3><a href="https://github.com/549876099/-/blob/master/README.md#31-分组管理" aria-hidden="true" class="anchor" id="user-content-31-分组管理"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>3.1 分组管理</h3>
<blockquote>
<p>地址：http://SERTVER_URL/api/group</p>
</blockquote>
<p><a id="user-content-list3.1.1"></a></p>
<h4><a href="https://github.com/549876099/-/blob/master/README.md#311-添加用户组" aria-hidden="true" class="anchor" id="user-content-311-添加用户组"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>3.1.1 添加用户组</h4>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#描述" aria-hidden="true" class="anchor" id="user-content-描述"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>描述<br></h5>
<p>创建一个空的用户组以准备传入指纹数据进行指纹搜索。</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用url" aria-hidden="true" class="anchor" id="user-content-调用url"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用URL<br></h5>
<p>http://SERTVER_URL/api/group/addgroup</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用方法" aria-hidden="true" class="anchor" id="user-content-调用方法"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用方法</h5>
<p>POST</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#请求参数" aria-hidden="true" class="anchor" id="user-content-请求参数"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>请求参数</h5>
<table>
<thead>
<tr>
<th align="center">是否必选</th>
<th align="center">参数名</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">必选</td>
<td align="center">app_key</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Key</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">app_secret</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Secret</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">group_name</td>
<td align="center">String</td>
<td align="center">用户组标识</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#返回值说明" aria-hidden="true" class="anchor" id="user-content-返回值说明"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值说明</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">state</td>
<td align="center">String</td>
<td align="center">请求状态成功或失败</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">String</td>
<td align="center">服务器返回信息，具体返回内容见后续服务器信息章节</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#服务器信息" aria-hidden="true" class="anchor" id="user-content-服务器信息"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>服务器信息</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">信息</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">message</td>
<td align="center">Add_Group_Success</td>
<td align="center">添加用户组成功</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">Group_Already_Exists</td>
<td align="center">用户组已存在</td>
</tr></tbody></table>
<p><a id="user-content-list3.1.2"></a></p>
<h4><a href="https://github.com/549876099/-/blob/master/README.md#312-删除用户组" aria-hidden="true" class="anchor" id="user-content-312-删除用户组"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>3.1.2 删除用户组</h4>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#描述-1" aria-hidden="true" class="anchor" id="user-content-描述-1"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>描述<br></h5>
<p>删除添加的用户组，该用户组下所有的用户及指纹数据会被清空。</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用url-1" aria-hidden="true" class="anchor" id="user-content-调用url-1"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用URL<br></h5>
<p>http://SERTVER_URL/api/group/deletegroup</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用方法-1" aria-hidden="true" class="anchor" id="user-content-调用方法-1"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用方法</h5>
<p>POST</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#请求参数-1" aria-hidden="true" class="anchor" id="user-content-请求参数-1"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>请求参数</h5>
<table>
<thead>
<tr>
<th align="center">是否必选</th>
<th align="center">参数名</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">必选</td>
<td align="center">app_key</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Key</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">app_secret</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Secret</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">group_name</td>
<td align="center">String</td>
<td align="center">用户组标识</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#返回值说明-1" aria-hidden="true" class="anchor" id="user-content-返回值说明-1"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值说明</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">state</td>
<td align="center">String</td>
<td align="center">请求状态成功或失败</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">String</td>
<td align="center">服务器返回信息，具体返回内容见后续服务器信息章节</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#服务器信息-1" aria-hidden="true" class="anchor" id="user-content-服务器信息-1"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>服务器信息</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">信息</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">message</td>
<td align="center">Delete_Group_Success</td>
<td align="center">删除用户组成功</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">Group_Do_Not_Exists</td>
<td align="center">用户组不存在</td>
</tr></tbody></table>
<p><a id="user-content-list3.1.3"></a></p>
<h4><a href="https://github.com/549876099/-/blob/master/README.md#313-查询用户组" aria-hidden="true" class="anchor" id="user-content-313-查询用户组"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>3.1.3 查询用户组</h4>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#描述-2" aria-hidden="true" class="anchor" id="user-content-描述-2"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>描述<br></h5>
<p>查询创建的用户组及用户组中用户数。</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用url-2" aria-hidden="true" class="anchor" id="user-content-调用url-2"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用URL<br></h5>
<p>http://SERTVER_URL/api/group/listgroup</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用方法-2" aria-hidden="true" class="anchor" id="user-content-调用方法-2"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用方法</h5>
<p>POST</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#请求参数-2" aria-hidden="true" class="anchor" id="user-content-请求参数-2"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>请求参数</h5>
<table>
<thead>
<tr>
<th align="center">是否必选</th>
<th align="center">参数名</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
<th></th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">必选</td>
<td align="center">app_key</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Key</td>
<td></td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">app_secret</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Secret</td>
<td></td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#返回值说明-2" aria-hidden="true" class="anchor" id="user-content-返回值说明-2"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值说明</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">state</td>
<td align="center">String</td>
<td align="center">请求状态成功或失败</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">String</td>
<td align="center">List_Group_Success 列出用户组成功</td>
</tr>
<tr>
<td align="center">group_count</td>
<td align="center">Int</td>
<td align="center">用户组数量</td>
</tr>
<tr>
<td align="center">group_list</td>
<td align="center">Array</td>
<td align="center">检出的用户组。若应用下无用户组，返回空数组</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#group_list数组中单个元素的结构" aria-hidden="true" class="anchor" id="user-content-group_list数组中单个元素的结构"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>group_list数组中单个元素的结构</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">group_name</td>
<td align="center">String</td>
<td align="center">用户组名称</td>
</tr>
<tr>
<td align="center">person_count</td>
<td align="center">Int</td>
<td align="center">用户组中用户数量</td>
</tr></tbody></table>
<h4><a href="https://github.com/549876099/-/blob/master/README.md#返回值示例" aria-hidden="true" class="anchor" id="user-content-返回值示例"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值示例</h4>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#存在用户组请求返回值示例" aria-hidden="true" class="anchor" id="user-content-存在用户组请求返回值示例"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>存在用户组请求返回值示例：</h6>
<pre><code>{
    "state": "success",
    "message": "List_Group_Success",
    "group_count": "2",
    "group_list": [
        {
            "group_name": "testgroup1",
            "person_count": 150
        },
        {
            "group_name": "testgroup2",
            "person_count": 0
        }
    ]
}
</code></pre>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#无用户组请求返回值示例" aria-hidden="true" class="anchor" id="user-content-无用户组请求返回值示例"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>无用户组请求返回值示例：</h6>
<pre><code>{
    "state": "success",
    "message": "List_Group_Success",
    "group_count": "0",
    "group_list": []
}
</code></pre>
<p><a id="user-content-list3.2"></a></p>
<h3><a href="https://github.com/549876099/-/blob/master/README.md#32-用户管理" aria-hidden="true" class="anchor" id="user-content-32-用户管理"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>3.2 用户管理</h3>
<blockquote>
<p>地址：http://SERTVER_URL/api/person</p>
</blockquote>
<p><a id="user-content-list3.2.1"></a></p>
<h4><a href="https://github.com/549876099/-/blob/master/README.md#321-添加用户" aria-hidden="true" class="anchor" id="user-content-321-添加用户"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>3.2.1 添加用户</h4>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#描述-3" aria-hidden="true" class="anchor" id="user-content-描述-3"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>描述<br></h5>
<p>添加用户至指定用户组，每次可添加多枚指纹。</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用url-3" aria-hidden="true" class="anchor" id="user-content-调用url-3"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用URL<br></h5>
<p>http://SERTVER_URL/api/person/addperson</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用方法-3" aria-hidden="true" class="anchor" id="user-content-调用方法-3"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用方法</h5>
<p>POST</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#请求参数-3" aria-hidden="true" class="anchor" id="user-content-请求参数-3"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>请求参数</h5>
<table>
<thead>
<tr>
<th align="center">是否必选</th>
<th align="center">参数名</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">必选</td>
<td align="center">app_key</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Key</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">app_secret</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Secret</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">group_name</td>
<td align="center">String</td>
<td align="center">用户组标识</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">person_id</td>
<td align="center">String</td>
<td align="center">用户id</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">fingerprintsJson</td>
<td align="center">String</td>
<td align="center">指纹参数表</td>
</tr></tbody></table>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#请求fingerprintsjson示例" aria-hidden="true" class="anchor" id="user-content-请求fingerprintsjson示例"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>请求fingerprintsJson示例</h6>
<pre><code>{
"fingerprints": [
        {
            "finger": "Any",
            "base64_img": "base64_img"
        },
        {
            "finger": "LeftRing",
            "base64_img": "base64_img"
        }
    ]
}
</code></pre>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#fingerprints数组中单个元素的结构" aria-hidden="true" class="anchor" id="user-content-fingerprints数组中单个元素的结构"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>fingerprints数组中单个元素的结构</h6>
<table>
<thead>
<tr>
<th align="center">是否必选</th>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">必选</td>
<td align="center">finger</td>
<td align="center">String</td>
<td align="center">指纹位置标记</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">base64_img</td>
<td align="center">String</td>
<td align="center">Base64指纹数据</td>
</tr></tbody></table>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#finger取值表" aria-hidden="true" class="anchor" id="user-content-finger取值表"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>finger取值表</h6>
<table>
<thead>
<tr>
<th align="center">值</th>
<th align="center">说明</th>
<th align="center">值</th>
<th align="center">说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">RightThumb</td>
<td align="center">右手大拇指</td>
<td align="center">LeftThumb</td>
<td align="center">左手大拇指</td>
</tr>
<tr>
<td align="center">RightIndex</td>
<td align="center">右手食指</td>
<td align="center">LeftIndex</td>
<td align="center">左手食指</td>
</tr>
<tr>
<td align="center">RightMiddle</td>
<td align="center">右手中指</td>
<td align="center">LeftMiddle</td>
<td align="center">左手中指</td>
</tr>
<tr>
<td align="center">RightRing</td>
<td align="center">右手无名指</td>
<td align="center">LeftRing</td>
<td align="center">左手无名指</td>
</tr>
<tr>
<td align="center">RightLittle</td>
<td align="center">右手小拇指</td>
<td align="center">LeftLittle</td>
<td align="center">左手小拇指</td>
</tr>
<tr>
<td align="center">Any</td>
<td align="center">任何手指</td>
<td align="center"></td>
<td align="center"></td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#返回值说明-3" aria-hidden="true" class="anchor" id="user-content-返回值说明-3"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值说明</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">state</td>
<td align="center">String</td>
<td align="center">请求状态成功或失败</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">String</td>
<td align="center">服务器返回信息，具体返回内容见后续服务器信息章节</td>
</tr>
<tr>
<td align="center">person_id</td>
<td align="center">String</td>
<td align="center">添加的用户id</td>
</tr>
<tr>
<td align="center">add_result</td>
<td align="center">Array</td>
<td align="center">添加结果用户组</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#add_result数组中单个元素的结构" aria-hidden="true" class="anchor" id="user-content-add_result数组中单个元素的结构"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>add_result数组中单个元素的结构</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">finger</td>
<td align="center">String</td>
<td align="center">添加成功的手指位置</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#返回值示例-1" aria-hidden="true" class="anchor" id="user-content-返回值示例-1"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值示例</h5>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#成功请求返回值示例" aria-hidden="true" class="anchor" id="user-content-成功请求返回值示例"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>成功请求返回值示例：</h6>
<pre><code>{
    "state": "success",
    "message": "Add_Person_Success",
    "person_id": "test_person",
    "add_result": [
        {
            "finger": "Any"
        },
        {
            "finger": "LeftRing"
        }
    ]
}
</code></pre>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#失败请求返回值示例" aria-hidden="true" class="anchor" id="user-content-失败请求返回值示例"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>失败请求返回值示例：</h6>
<pre><code>{
   "state": "error",
   "message": "No_Legal_FingerPrint_Data"
}
</code></pre>
<blockquote>
<p>注：服务器会检索fingerprintsJson中的每一个指纹数据，任何一个指纹的finger或base64_img无效即判定该指纹数据无效。当匹配完所有的数据后，存在有效数据即存入该部分有效数据，若无任何有效数据返回错误。</p>
</blockquote>
<blockquote>
<p>例如：传入了两个指纹分别标记位置为RightThumb和RightIndex，但RightIndex的base64_img无法解析为图片。则会只添加RightThumb指纹，不会报错。</p>
</blockquote>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#服务器信息-2" aria-hidden="true" class="anchor" id="user-content-服务器信息-2"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>服务器信息</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">信息</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">message</td>
<td align="center">Add_Person_Success</td>
<td align="center">添加用户成功</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">Group_Do_Not_Exists</td>
<td align="center">用户组不存在</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">Person_Already_Exists</td>
<td align="center">用户id已存在</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">No_Legal_FingerPrint_Data</td>
<td align="center">指纹参数表中没有合法的指纹数据</td>
</tr></tbody></table>
<p><a id="user-content-list3.2.2"></a></p>
<h4><a href="https://github.com/549876099/-/blob/master/README.md#322-删除用户" aria-hidden="true" class="anchor" id="user-content-322-删除用户"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>3.2.2 删除用户</h4>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#描述-4" aria-hidden="true" class="anchor" id="user-content-描述-4"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>描述<br></h5>
<p>根据用户id删除用户及用户中的所有指纹。</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用url-4" aria-hidden="true" class="anchor" id="user-content-调用url-4"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用URL<br></h5>
<p>http://SERTVER_URL/api/person/deleteperson</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用方法-4" aria-hidden="true" class="anchor" id="user-content-调用方法-4"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用方法</h5>
<p>POST</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#请求参数-4" aria-hidden="true" class="anchor" id="user-content-请求参数-4"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>请求参数</h5>
<table>
<thead>
<tr>
<th align="center">是否必选</th>
<th align="center">参数名</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">必选</td>
<td align="center">app_key</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Key</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">app_secret</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Secret</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">group_name</td>
<td align="center">String</td>
<td align="center">用户组标识</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">person_id</td>
<td align="center">String</td>
<td align="center">用户id</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#返回值说明-4" aria-hidden="true" class="anchor" id="user-content-返回值说明-4"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值说明</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">state</td>
<td align="center">String</td>
<td align="center">请求状态成功或失败</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">String</td>
<td align="center">服务器返回信息，具体返回内容见后续服务器信息章节</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#服务器信息-3" aria-hidden="true" class="anchor" id="user-content-服务器信息-3"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>服务器信息</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">信息</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">message</td>
<td align="center">Delete_Person_Success</td>
<td align="center">删除用户成功</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">Group_Do_Not_Exists</td>
<td align="center">用户组不存在</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">Person_Do_Not_Exists</td>
<td align="center">用户不存在</td>
</tr></tbody></table>
<p><a id="user-content-list3.2.3"></a></p>
<h4><a href="https://github.com/549876099/-/blob/master/README.md#323-查询用户组用户" aria-hidden="true" class="anchor" id="user-content-323-查询用户组用户"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>3.2.3 查询用户组用户</h4>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#描述-5" aria-hidden="true" class="anchor" id="user-content-描述-5"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>描述<br></h5>
<p>根据用户组名列出该用户组下的所有用户以及每一个用户的指纹数据。</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用url-5" aria-hidden="true" class="anchor" id="user-content-调用url-5"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用URL<br></h5>
<p>http://SERTVER_URL/api/person/listperson</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用方法-5" aria-hidden="true" class="anchor" id="user-content-调用方法-5"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用方法</h5>
<p>POST</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#请求参数-5" aria-hidden="true" class="anchor" id="user-content-请求参数-5"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>请求参数</h5>
<table>
<thead>
<tr>
<th align="center">是否必选</th>
<th align="center">参数名</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">必选</td>
<td align="center">app_key</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Key</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">app_secret</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Secret</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">group_name</td>
<td align="center">String</td>
<td align="center">用户组标识</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#返回值说明-5" aria-hidden="true" class="anchor" id="user-content-返回值说明-5"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值说明</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">state</td>
<td align="center">String</td>
<td align="center">请求状态成功或失败</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">String</td>
<td align="center">服务器返回信息，具体返回内容见后续服务器信息章节</td>
</tr>
<tr>
<td align="center">person_count</td>
<td align="center">Int</td>
<td align="center">用户组中用户的数量</td>
</tr>
<tr>
<td align="center">persons</td>
<td align="center">Array</td>
<td align="center">用户列表</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#persons数组中单个元素的结构" aria-hidden="true" class="anchor" id="user-content-persons数组中单个元素的结构"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>persons数组中单个元素的结构</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">person_id</td>
<td align="center">String</td>
<td align="center">添加成功的手指位置</td>
</tr>
<tr>
<td align="center">finger_count</td>
<td align="center">Int</td>
<td align="center">用户中指纹数量</td>
</tr>
<tr>
<td align="center">fingers</td>
<td align="center">Array</td>
<td align="center">指纹列表</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#fingers数组中单个元素的结构" aria-hidden="true" class="anchor" id="user-content-fingers数组中单个元素的结构"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>fingers数组中单个元素的结构</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">finger</td>
<td align="center">String</td>
<td align="center">指纹位置</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#返回值示例-2" aria-hidden="true" class="anchor" id="user-content-返回值示例-2"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值示例</h5>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#用户组中有用户请求返回值示例" aria-hidden="true" class="anchor" id="user-content-用户组中有用户请求返回值示例"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>用户组中有用户请求返回值示例：</h6>
<pre><code>{
    "state": "success",
    "message": "List_Person_Success",
    "person_count": "2",
    "persons": [
        {
            "person_id": "testperson1",
            "finger_count": 1,
            "fingers": [
                {
                    "finger": "Any"
                }
            ]
        },
        {
            "person_id": "testperson2",
            "finger_count": 2,
            "fingers": [
                {
                    "finger": "Any"
                },
                {
                    "finger": "LeftRing"
                }
            ]
        }
    ]
}
</code></pre>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#用户组为空请求返回值示例" aria-hidden="true" class="anchor" id="user-content-用户组为空请求返回值示例"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>用户组为空请求返回值示例：</h6>
<pre><code>{
    "state": "success",
    "message": "List_Person_Success",
    "person_count": "0",
    "persons": []
}
</code></pre>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#服务器信息-4" aria-hidden="true" class="anchor" id="user-content-服务器信息-4"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>服务器信息</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">信息</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">message</td>
<td align="center">List_Person_Success</td>
<td align="center">列出用户组成功</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">Group_Do_Not_Exists</td>
<td align="center">用户组不存在</td>
</tr></tbody></table>
<p><a id="user-content-list3.3"></a></p>
<h3><a href="https://github.com/549876099/-/blob/master/README.md#33-指纹识别" aria-hidden="true" class="anchor" id="user-content-33-指纹识别"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>3.3 指纹识别</h3>
<blockquote>
<p>地址：http://SERTVER_URL/api/fingerprint/</p>
</blockquote>
<p><a id="user-content-list3.3.1"></a></p>
<h4><a href="https://github.com/549876099/-/blob/master/README.md#331-指纹搜索1n" aria-hidden="true" class="anchor" id="user-content-331-指纹搜索1n"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>3.3.1 指纹搜索(1:N)</h4>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#描述-6" aria-hidden="true" class="anchor" id="user-content-描述-6"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>描述<br></h5>
<p>在用户分组中找出与目标指纹最相似的指纹。支持传入Base64指纹图片搜索。</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#名词解析" aria-hidden="true" class="anchor" id="user-content-名词解析"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>名词解析<br></h5>
<ul>
<li>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#1-threshold-置信度阈值" aria-hidden="true" class="anchor" id="user-content-1-threshold-置信度阈值"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>1. threshold (置信度阈值)</h6>
<p>匹配算法产生相似度得分，这是两个指纹之间相似度的量度。<br></p>
<p>应用程序需要明确的匹配或不匹配来决定是结果否保留，阈值用于将相似性分数转换为匹配或不匹配的决策。<br>
等于或高于阈值的相似度得分被认为是匹配，较低的分数被认为是不匹配的。<br></p>
<p>适当的阈值是适用于特定的应用程序的。开发人员必须调整此属性以反映指纹读取器，用户和应用程序要求的差异。以默认阈值开始，如果有太多的错误匹配成功（服务器匹配了两个不同人的指纹），请增加阈值。如果有太多的错误失败（服务器不匹配同一人的两个指纹），请降低阈值。每个应用程序最终应在FAR（认假率）和FRR（拒真率）之间达到一些合理的平衡。</p>
</li>
<li>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#2-minmatches-最少匹配数" aria-hidden="true" class="anchor" id="user-content-2-minmatches-最少匹配数"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>2. minMatches (最少匹配数)</h6>
<p>当每个用户有多个指纹时，服务器将每个待匹配指纹与每个候选指纹进行比较，并获得最佳匹配，相似度最高的匹配。<br><br>
这种策略改善了FRR（拒真率），因为指纹损坏引起的低相似性评分被忽略。<br>
当MinMatches为1（默认）时，会发生这种情况。<br>
当MinMatches为2或更高时，服务器将每个探针指纹与每个候选指纹进行比较，并记录每次比较的得分。然后按降序排列分数，并选择MinMatches属性指定的位置的分数。<br>
当与Threshold组合时，该属性基本上指定了多少个得分高于Threshold的指纹匹配结果以使整个Person匹配。<br></p>
<p>MinMatches在一些罕见的情况下很有用，一些指纹可能由于指纹模板被破坏或由于某些罕见的匹配器缺陷而随机地与高分配匹配。在这些情况下，MinMatches可能会改善FAR，但这是不鼓励的做法。</p>
<p>开发人员寻求改进FAR的方法最好是提高阈值。只要指纹质量好，就可以安全地将阈值提高到FAR（认假率）基本为零的水平。</p>
</li>
</ul>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#图片要求" aria-hidden="true" class="anchor" id="user-content-图片要求"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>图片要求<br></h5>
<p>图片格式：JPG(JPEG)，PNG <br>
图片像素尺寸：最小48<em>48像素，最大4096</em>4096像素 <br>
图片文件大小：2MB <br>
最小指纹像素尺寸： 系统能够检测到的指纹框为一个正方形，正方形边长的最小值为150像素。</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用url-6" aria-hidden="true" class="anchor" id="user-content-调用url-6"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用URL<br></h5>
<p>http://SERTVER_URL/api/fingerprint/searchperson</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用方法-6" aria-hidden="true" class="anchor" id="user-content-调用方法-6"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用方法</h5>
<p>POST</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#请求参数-6" aria-hidden="true" class="anchor" id="user-content-请求参数-6"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>请求参数</h5>
<table>
<thead>
<tr>
<th align="center">是否必选</th>
<th align="center">参数名</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">必选</td>
<td align="center">app_key</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Key</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">app_secret</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Secret</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">group_name</td>
<td align="center">String</td>
<td align="center">用户组标识</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">finger_print_base64</td>
<td align="center">String</td>
<td align="center">base64编码的二进制图片数据</td>
</tr>
<tr>
<td align="center">可选</td>
<td align="center">threshold</td>
<td align="center">Int</td>
<td align="center">置信度阈值，大于0的整数(默认值25)</td>
</tr>
<tr>
<td align="center">可选</td>
<td align="center">minMatches</td>
<td align="center">Int</td>
<td align="center">最少匹配指纹数，大于0的整数(默认值1)</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#返回值说明-6" aria-hidden="true" class="anchor" id="user-content-返回值说明-6"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值说明</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">state</td>
<td align="center">String</td>
<td align="center">请求状态成功或失败</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">String</td>
<td align="center">服务器返回信息，具体返回内容见后续服务器信息章节</td>
</tr>
<tr>
<td align="center">search_result</td>
<td align="center">Array</td>
<td align="center">匹配成功，返回传入的person的id</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#search_result数组中单个元素的结构" aria-hidden="true" class="anchor" id="user-content-search_result数组中单个元素的结构"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>search_result数组中单个元素的结构</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">person_id</td>
<td align="center">String</td>
<td align="center">用户id</td>
</tr>
<tr>
<td align="center">value</td>
<td align="center">Float</td>
<td align="center">用于参考的置信度阈值</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#返回值示例-3" aria-hidden="true" class="anchor" id="user-content-返回值示例-3"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值示例</h5>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#成功请求返回值示例-1" aria-hidden="true" class="anchor" id="user-content-成功请求返回值示例-1"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>成功请求返回值示例：</h6>
<pre><code>{
    "state": "success",
    "message": "Search_Person_Success",
    "search_result": [
        {
            "person_id": "testperson",
            "value": "120.7547"
        }
    ]
}
</code></pre>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#失败请求返回值示例-1" aria-hidden="true" class="anchor" id="user-content-失败请求返回值示例-1"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>失败请求返回值示例：</h6>
<pre><code>{
   "state": "error",
   "message": "NO_MATCHES_FOUNG"
}
</code></pre>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#服务器信息-5" aria-hidden="true" class="anchor" id="user-content-服务器信息-5"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>服务器信息</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">信息</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">message</td>
<td align="center">NO_MATCHES_FOUNG</td>
<td align="center">没有匹配到用户</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">SEARCH_PERSON_SUCCESS</td>
<td align="center">匹配用户成功</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">FINGER_PRINT_BASE64_ILLEGAL</td>
<td align="center">Base64指纹数不合法据</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">Group_Do_Not_Exists</td>
<td align="center">用户组不存在</td>
</tr></tbody></table>
<h4><a href="https://github.com/549876099/-/blob/master/README.md#232-指纹比对11" aria-hidden="true" class="anchor" id="user-content-232-指纹比对11"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>2.3.2 指纹比对(1:1)</h4>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#描述-7" aria-hidden="true" class="anchor" id="user-content-描述-7"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>描述<br></h5>
<p>比对两个指纹的相似度</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#图片要求-1" aria-hidden="true" class="anchor" id="user-content-图片要求-1"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>图片要求<br></h5>
<p>图片格式：JPG(JPEG)，PNG <br>
图片像素尺寸：最小48<em>48像素，最大4096</em>4096像素 <br>
图片文件大小：2MB <br>
最小指纹像素尺寸： 系统能够检测到的指纹框为一个正方形，正方形边长的最小值为150像素。</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用url-7" aria-hidden="true" class="anchor" id="user-content-调用url-7"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用URL<br></h5>
<p>http://SERTVER_URL/api/fingerprint/compareperson</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#调用方法-7" aria-hidden="true" class="anchor" id="user-content-调用方法-7"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>调用方法</h5>
<p>POST</p>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#请求参数-7" aria-hidden="true" class="anchor" id="user-content-请求参数-7"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>请求参数</h5>
<table>
<thead>
<tr>
<th align="center">是否必选</th>
<th align="center">参数名</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">必选</td>
<td align="center">app_key</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Key</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">app_secret</td>
<td align="center">String</td>
<td align="center">调用此API的APP_Secret</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">group_name</td>
<td align="center">String</td>
<td align="center">用户组标识</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">finger_print_base64_1</td>
<td align="center">String</td>
<td align="center">base64编码的二进制图片数据1</td>
</tr>
<tr>
<td align="center">必选</td>
<td align="center">finger_print_base64_2</td>
<td align="center">String</td>
<td align="center">base64编码的二进制图片数据1</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#返回值说明-7" aria-hidden="true" class="anchor" id="user-content-返回值说明-7"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值说明</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">类型</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">state</td>
<td align="center">String</td>
<td align="center">请求状态成功或失败</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">String</td>
<td align="center">服务器返回信息，具体返回内容见后续服务器信息章节</td>
</tr>
<tr>
<td align="center">value</td>
<td align="center">Float</td>
<td align="center">置信度阈值</td>
</tr></tbody></table>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#返回值示例-4" aria-hidden="true" class="anchor" id="user-content-返回值示例-4"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>返回值示例</h5>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#成功请求返回值示例-2" aria-hidden="true" class="anchor" id="user-content-成功请求返回值示例-2"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>成功请求返回值示例：</h6>
<pre><code>{
    "state": "success",
    "message": "Compare_Person_Success",
    "value": "157.8477"
}
</code></pre>
<h6><a href="https://github.com/549876099/-/blob/master/README.md#失败请求返回值示例-2" aria-hidden="true" class="anchor" id="user-content-失败请求返回值示例-2"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>失败请求返回值示例：</h6>
<pre><code>{
    "state": "error",
    "message": "Fingerprint_Base64_Illegal"
}
</code></pre>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#服务器信息-6" aria-hidden="true" class="anchor" id="user-content-服务器信息-6"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>服务器信息</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">信息</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">message</td>
<td align="center">Compare_Person_Success</td>
<td align="center">匹配成功</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">FINGER_PRINT_BASE64_ILLEGAL</td>
<td align="center">Base64指纹数不合法据</td>
</tr></tbody></table>
<p><a id="user-content-list4"></a></p>
<h3><a href="https://github.com/549876099/-/blob/master/README.md#4通用服务器信息" aria-hidden="true" class="anchor" id="user-content-4通用服务器信息"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>4.通用服务器信息</h3>
<h5><a href="https://github.com/549876099/-/blob/master/README.md#服务器信息-7" aria-hidden="true" class="anchor" id="user-content-服务器信息-7"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>服务器信息</h5>
<table>
<thead>
<tr>
<th align="center">字段</th>
<th align="center">信息</th>
<th align="center">参数说明</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">state</td>
<td align="center">success</td>
<td align="center">请求成功</td>
</tr>
<tr>
<td align="center">state</td>
<td align="center">error</td>
<td align="center">请求失败</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">Required_Parameter_Missing</td>
<td align="center">必传参数输入不全</td>
</tr>
<tr>
<td align="center">message</td>
<td align="center">Authentication_Error</td>
<td align="center">鉴权失败</td>
</tr></tbody></table>
</article>
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
