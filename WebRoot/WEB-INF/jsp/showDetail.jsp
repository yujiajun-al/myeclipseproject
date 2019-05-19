<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'showDetail.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!--  Bootstrap -->
<link
	href="${pageContext.request.contextPath }/statics/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="${pageContext.request.contextPath }/statics/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link
	href="${pageContext.request.contextPath }/statics/vendors/nprogress/nprogress.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link
	href="${pageContext.request.contextPath }/statics/build/css/custom.min.css"
	rel="stylesheet">
<!-- iCheck -->
<link
	href="${pageContext.request.contextPath }/statics/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">

<!-- Datatables -->
<link
	href="${pageContext.request.contextPath }/statics/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
	
	<!-- bootstrap-progressbar -->
    <link href="${pageContext.request.contextPath }/statics/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- PNotify -->
    <link href="${pageContext.request.contextPath }/statics/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
				<div class="navbar nav_title" style="border: 0;">
					<a href="index.html" class="site_title"><i class="fa fa-paw"></i>
						<span>Gentellela Alela!</span></a>
				</div>

				<div class="clearfix"></div>

				<!-- menu profile quick info -->
				<div class="profile">
					<div class="profile_pic">
						<img
							src="${pageContext.request.contextPath }/statics/images/img.jpg"
							alt="..." class="img-circle profile_img">
					</div>
					<div class="profile_info">
						<span>Welcome,</span>
						<h2>YuJiaJun</h2>
					</div>
				</div>
				<!-- /menu profile quick info -->

				<br />

				<!-- sidebar menu -->
				<div id="sidebar-menu"
					class="main_menu_side hidden-print main_menu">
					<div class="menu_section">
						<h3>General</h3>
						<ul class="nav side-menu">
							<li><a><i class="fa fa-home"></i> Home <span
									class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu">
									<li><a href="index.html">Dashboard</a></li>
									<li><a href="index2.html">Dashboard2</a></li>
									<li><a href="index3.html">Dashboard3</a></li>
								</ul></li>
							<li><a><i class="fa fa-edit"></i> Forms <span
									class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu">
									<li><a href="form.html">General Form</a></li>
									<li><a href="form_advanced.html">Advanced Components</a></li>
									<li><a href="form_validation.html">Form Validation</a></li>
									<li><a href="form_wizards.html">Form Wizard</a></li>
									<li><a href="form_upload.html">Form Upload</a></li>
									<li><a href="form_buttons.html">Form Buttons</a></li>
								</ul></li>
							<li><a><i class="fa fa-desktop"></i> UI Elements <span
									class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu">
									<li><a href="general_elements.html">General Elements</a></li>
									<li><a href="media_gallery.html">Media Gallery</a></li>
									<li><a href="typography.html">Typography</a></li>
									<li><a href="icons.html">Icons</a></li>
									<li><a href="glyphicons.html">Glyphicons</a></li>
									<li><a href="widgets.html">Widgets</a></li>
									<li><a href="invoice.html">Invoice</a></li>
									<li><a href="inbox.html">Inbox</a></li>
									<li><a href="calendar.html">Calendar</a></li>
								</ul></li>
							<li><a><i class="fa fa-table"></i> Tables <span
									class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu">
									<li><a href="tables.html">Tables</a></li>
									<li><a href="tables_dynamic.html">Table Dynamic</a></li>
								</ul></li>
							<li><a><i class="fa fa-bar-chart-o"></i> Data
									Presentation <span class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu">
									<li><a href="chartjs.html">Chart JS</a></li>
									<li><a href="chartjs2.html">Chart JS2</a></li>
									<li><a href="morisjs.html">Moris JS</a></li>
									<li><a href="echarts.html">ECharts</a></li>
									<li><a href="other_charts.html">Other Charts</a></li>
								</ul></li>
							<li><a><i class="fa fa-clone"></i>Layouts <span
									class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu">
									<li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
									<li><a href="fixed_footer.html">Fixed Footer</a></li>
								</ul></li>
						</ul>
					</div>
					<div class="menu_section">
						<h3>Live On</h3>
						<ul class="nav side-menu">
							<li><a><i class="fa fa-bug"></i> Additional Pages <span
									class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu">
									<li><a href="e_commerce.html">E-commerce</a></li>
									<li><a href="projects.html">Projects</a></li>
									<li><a href="project_detail.html">Project Detail</a></li>
									<li><a href="contacts.html">Contacts</a></li>
									<li><a href="profile.html">Profile</a></li>
								</ul></li>
							<li><a><i class="fa fa-windows"></i> Extras <span
									class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu">
									<li><a href="page_403.html">403 Error</a></li>
									<li><a href="page_404.html">404 Error</a></li>
									<li><a href="page_500.html">500 Error</a></li>
									<li><a href="plain_page.html">Plain Page</a></li>
									<li><a href="login.html">Login Page</a></li>
									<li><a href="pricing_tables.html">Pricing Tables</a></li>
								</ul></li>
							<li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span
									class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu">
									<li><a href="#level1_1">Level One</a>
									<li><a>Level One<span class="fa fa-chevron-down"></span></a>
										<ul class="nav child_menu">
											<li class="sub_menu"><a href="level2.html">Level
													Two</a></li>
											<li><a href="#level2_1">Level Two</a></li>
											<li><a href="#level2_2">Level Two</a></li>
										</ul></li>
									<li><a href="#level1_2">Level One</a></li>
								</ul></li>
							<li><a href="javascript:void(0)"><i
									class="fa fa-laptop"></i> Landing Page <span
									class="label label-success pull-right">Coming Soon</span></a></li>
						</ul>
					</div>

				</div>
				<!-- /sidebar menu -->

				<!-- /menu footer buttons -->
				<div class="sidebar-footer hidden-small">
					<a data-toggle="tooltip" data-placement="top" title="Settings">
						<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
					</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
						<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
					</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
						class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
					</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
						id="Logout"> <span class="glyphicon glyphicon-off"
						aria-hidden="true"></span>
					</a>
				</div>
				<!-- /menu footer buttons -->
			</div>
		</div>

		<!-- top navigation -->
		<div class="top_nav">
			<div class="nav_menu">
				<nav>
				<div class="nav toggle">
					<a id="menu_toggle"><i class="fa fa-bars"></i></a>
				</div>

				<ul class="nav navbar-nav navbar-right">
					<li class=""><a href="javascript:;"
						class="user-profile dropdown-toggle" data-toggle="dropdown"
						aria-expanded="false"> <img
							src="${pageContext.request.contextPath }/statics/images/img.jpg"
							alt="">YuJiaJun <span class=" fa fa-angle-down"></span>
					</a>
						<ul class="dropdown-menu dropdown-usermenu pull-right">
							<li><a href="javascript:;"> Profile</a></li>
							<li><a href="javascript:;"> <span
									class="badge bg-red pull-right">50%</span> <span>Settings</span>
							</a></li>
							<li><a href="javascript:;">Help</a></li>
							<li><a href="login.html"><i
									class="fa fa-sign-out pull-right"></i> Log Out</a></li>
						</ul></li>

					<li role="presentation" class="dropdown"><a
						href="javascript:;" class="dropdown-toggle info-number"
						data-toggle="dropdown" aria-expanded="false"> <i
							class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span>
					</a>
						<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
							role="menu">
							<li><a> <span class="image"><img
										src="${pageContext.request.contextPath }/statics/images/img.jpg"
										alt="Profile Image" /></span> <span> <span>YuJiaJun</span> <span
										class="time">3 mins ago</span>
								</span> <span class="message"> Film festivals used to be
										do-or-die moments for movie makers. They were where... </span>
							</a></li>
							<li><a> <span class="image"><img
										src="${pageContext.request.contextPath }/statics/images/img.jpg"
										alt="Profile Image" /></span> <span> <span>YuJiaJun</span> <span
										class="time">3 mins ago</span>
								</span> <span class="message"> Film festivals used to be
										do-or-die moments for movie makers. They were where... </span>
							</a></li>
							<li><a> <span class="image"><img
										src="${pageContext.request.contextPath }/statics/images/img.jpg"
										alt="Profile Image" /></span> <span> <span>YuJiaJun</span> <span
										class="time">3 mins ago</span>
								</span> <span class="message"> Film festivals used to be
										do-or-die moments for movie makers. They were where... </span>
							</a></li>
							<li><a> <span class="image"><img
										src="${pageContext.request.contextPath }/statics/images/img.jpg"
										alt="Profile Image" /></span> <span> <span>YuJiaJun</span> <span
										class="time">3 mins ago</span>
								</span> <span class="message"> Film festivals used to be
										do-or-die moments for movie makers. They were where... </span>
							</a></li>
							<li>
								<div class="text-center">
									<a> <strong>See All Alerts</strong> <i
										class="fa fa-angle-right"></i>
									</a>
								</div>
							</li>
						</ul></li>
				</ul>
				</nav>
			</div>
		</div>
		<!-- /top navigation -->

		<!-- page content -->
		<div class="a1">
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">

						<!-- /page content -->

						<!-- page content2 -->
						<div class="aw">
							<div class="title_left">
								<h3>User Profile</h3>
							</div>

							<div class="title_right">
								<div
									class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Search for..."> <span
											class="input-group-btn">
											<button class="btn btn-default" type="button">Go!</button>
										</span>
									</div>
								</div>
							</div>

							<div class="clearfix"></div>

							<div class="row" id="row1">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="x_panel">
										<div class="x_title">
											<h2>
												User Report <small>Activity report</small>
											</h2>
											<ul class="nav navbar-right panel_toolbox">
												<li><a class="collapse-link"><i
														class="fa fa-chevron-up"></i></a></li>
												<li class="dropdown"><a href="#"
													class="dropdown-toggle" data-toggle="dropdown"
													role="button" aria-expanded="false"><i
														class="fa fa-wrench"></i></a>
													<ul class="dropdown-menu" role="menu">
														<li><a href="#">Settings 1</a></li>
														<li><a href="#">Settings 2</a></li>
													</ul></li>
												<li><a class="close-link"><i class="fa fa-close"></i></a>
												</li>
											</ul>
											<div class="clearfix"></div>
										</div>


										<div class="x_content">
											<div class="col-md-3 col-sm-3 col-xs-12 profile_left">
												<div class="profile_img">
													<div id="crop-avatar">
														<!-- Current avatar -->
														<img class="img-responsive avatar-view"
															src="${pageContext.request.contextPath }/statics/images/img.jpg"
															alt="Avatar" title="Change the avatar">
													</div>
												</div>
												<h3>${teacher.name }</h3>

												<ul class="list-unstyled user_data">
													<li><i class="fa fa-map-marker user-profile-icon"></i>
														${teacher.natives }</li>

													<li><i class="fa fa-briefcase user-profile-icon"></i>
														${teacher.duty }</li>

													<li class="m-top-xs"><i
														class="fa fa-external-link user-profile-icon"></i> <a
														href="http://www.kimlabs.com/profile/" target="_blank">${teacher.phone }</a>
													</li>
												</ul>

												<a class="btn btn-success" id="edit"><i
													class="fa fa-edit m-right-xs"></i>Edit Profile</a> <br />

												<!-- start skills -->
												<h4>娱乐/休闲</h4>
												<ul class="list-unstyled user_data">
													<li>
														<p>抖音</p>
														<div class="progress progress_sm">
															<div class="progress-bar bg-green" role="progressbar"
																data-transitiongoal="50"></div>
														</div>
													</li>
													<li>
														<p>微视</p>
														<div class="progress progress_sm">
															<div class="progress-bar bg-green" role="progressbar"
																data-transitiongoal="70"></div>
														</div>
													</li>
													<li>
														<p>王者荣耀</p>
														<div class="progress progress_sm">
															<div class="progress-bar bg-green" role="progressbar"
																data-transitiongoal="30"></div>
														</div>
													</li>
													<li>
														<p>刺激战场</p>
														<div class="progress progress_sm">
															<div class="progress-bar bg-green" role="progressbar"
																data-transitiongoal="50"></div>
														</div>
													</li>
												</ul>
												<!-- end of skills -->

											</div>
											<div class="col-md-9 col-sm-9 col-xs-12" id="uar">

												<div class="profile_title" >
													<div class="col-md-6" >
														<h2 >User Activity Report</h2>
													</div>
													<div class="col-md-6">
														<div id="reportrange" class="pull-right"
															style="margin-top: 5px; background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #E6E9ED">
															<i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
															<span>December 30, 2014 - January 28, 2019</span> <b
																class="caret"></b>
														</div>
													</div>
												</div>
												
												<!-- start of user-activity-graph -->
												<div id="graph_bar" style="width:100%; height:280px;">
													<div class="x_content">
														<table id="datatable"
															class="table table-striped table-bordered"></table>

									                    <div class="col-md-8 col-lg-8 col-sm-7" id="gb" style="display: none;">
									                      <!-- blockquote -->
														  <c:forEach items="${teacher.thList }" var="th">
									                      <blockquote class="blockquote-reverse">
									                        <p>${th.honor}</p>
									                        <footer>Someone famous in <cite title="Source Title">Source Title</cite>
									                        </footer>
									                      </blockquote>
									                      </c:forEach>
									                    </div>
									                    
									                    <div class="col-md-8 col-lg-8 col-sm-7" id="jl">
									                    
									                    	<table style="border-collapse:separate; border-spacing:5px;">
									                    		<tr>
									                    		<td>姓名：${teacher.name }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性别：${teacher.gender=="0"?"女":"男" }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;民族：${teacher.nation }</td>
									                    		</tr>
									                    		<tr>
									                    		<td>学科专业：${teacher.discipline }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最高学历：${teacher.education=="1"?"大专":(tl.education=="2"?"本科":(tl.education=="3"?"研究生":"硕士")) }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;政治面貌：${teacher.politics }</td>
									                    		</tr>
									                    		<tr>
									                    		<td>职称：${teacher.titles }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;职务：${teacher.duty }</td>
									                    		</tr>
									                    		<tr>
									                    		<td>联系电话：${teacher.phone }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他情况：${teacher.rests }</td>
									                    		</tr>
									                    		<tr>
									                    		<td>出生年月：${teacher.birthday }</td>
									                    		</tr>
									                    		 <c:forEach items="${teacher.ppList }" var="pp">
									                    		<tr>
									                    		<td>起始年月：${pp.starting_time }</td>
									                    		<tr>
									                    		<td>终止年月：${pp.termination_years }</td>
									                    		</tr>
									                    		<tr>
									                    		<td>所在部门：${pp.department }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;任何职务、职称：${pp.any_position }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备注：${pp.note }</td>
									                    		</tr>
									                    		</c:forEach>
									                    		<tr>
									                    		<td>籍贯：${teacher.natives }</td>
									                    		</tr>
									                    	</table>
									                 
									                    </div>
														
														<div class="col-md-4 col-lg-4 col-sm-5">
															<h1>55555555555</h1>
															<h2>55555555555</h2>
															<h3>22222222222</h3>
															<h4>33333333333</h4>
															<h5>00000000000</h5>
															<h6>66666666666</h6>
														</div>

														<div class="clearfix"></div>
													</div>
												</div>
												<!-- end of user-activity-graph -->

												<div class="" role="tabpanel"
													data-example-id="togglable-tabs">
													<ul id="myTab" class="nav nav-tabs bar_tabs"
														role="tablist">
														<li role="presentation" class="active"><a
															href="#tab_content1" id="home-tab" role="tab"
															data-toggle="tab" aria-expanded="true">总体成长规划</a></li>
														<li role="presentation" class=""><a
															href="#tab_content2" role="tab" id="profile-tab"
															data-toggle="tab" aria-expanded="false">阶段性成长规划</a></li>
														<li role="presentation" class=""><a
															href="#tab_content3" role="tab" id="profile-tab2"
															data-toggle="tab" aria-expanded="false">个人成就展示</a></li>
													</ul>
													<div id="myTabContent" class="tab-content">
														<div role="tabpanel" class="tab-pane fade active in"
															id="tab_content1" aria-labelledby="home-tab">

															<!-- start recent activity -->
															<c:forEach items="${teacher.planList }" var="pl">
															
															<ul class="messages">
																<li><img
																	src="${pageContext.request.contextPath }/statics/images/img.jpg"
																	class="avatar" alt="Avatar">
																	<div class="message_date">
																		<h3 class="date text-info">24</h3>
																		<p class="month">May</p>
																	</div>
																	<div class="message_wrapper">
																		<h4 class="heading">姓名</h4>
																		<blockquote class="message">
																		
																		 	${pl.name}
																
																		</blockquote>
																		<br />
																		
																	</div></li>
																<li><img
																	src="${pageContext.request.contextPath }/statics/images/img.jpg"
																	class="avatar" alt="Avatar">
																	<div class="message_date">
																		<h3 class="date text-error">21</h3>
																		<p class="month">May</p>
																	</div>
																	<div class="message_wrapper">
																		<h4 class="heading">我的教育理念</h4>
																		<blockquote class="message">${pl.my_educational_philosophy}</blockquote>
																		<br />
																		
																	</div></li>
																<li><img
																	src="${pageContext.request.contextPath }/statics/images/img.jpg"
																	class="avatar" alt="Avatar">
																	<div class="message_date">
																		<h3 class="date text-info">24</h3>
																		<p class="month">May</p>
																	</div>
																	<div class="message_wrapper">
																		<h4 class="heading">自我剖析</h4>
																		<blockquote class="message">${pl.self_analysis}</blockquote>
																		<br />
																		
																	</div></li>
																<li><img
																	src="${pageContext.request.contextPath }/statics/images/img.jpg"
																	class="avatar" alt="Avatar">
																	<div class="message_date">
																		<h3 class="date text-error">21</h3>
																		<p class="month">May</p>
																	</div>
																	<div class="message_wrapper">
																		<h4 class="heading">我的成长规划</h4>
																		<blockquote class="message">${pl.my_growth_plan}</blockquote>
																		<br />
																		
																	</div></li>

															</ul>
															</c:forEach>
															<!-- end recent activity -->

														</div>
														<div role="tabpanel" class="tab-pane fade"
															id="tab_content2" aria-labelledby="profile-tab">

															<!-- start user projects -->
															<!-- start recent activity -->
															
															<c:forEach items="${teacher.planningList }" var="pla">
															<ul class="messages">
																<li><img
																	src="${pageContext.request.contextPath }/statics/images/img.jpg"
																	class="avatar" alt="Avatar">
																	<div class="message_date">
																		<h3 class="date text-info">24</h3>
																		<p class="month">May</p>
																	</div>
																	<div class="message_wrapper">
																		<h4 class="heading">姓名</h4>
																		<blockquote class="message">		
																	 		${pla.name}
																		 </blockquote>
																		<br />
																		
																	</div></li>
																<li><img
																	src="${pageContext.request.contextPath }/statics/images/img.jpg"
																	class="avatar" alt="Avatar">
																	<div class="message_date">
																		<h3 class="date text-error">21</h3>
																		<p class="month">May</p>
																	</div>
																	<div class="message_wrapper">
																		<h4 class="heading">规划时间</h4>
																		<blockquote class="message">${pla.planning_time}</blockquote>
																		<br />
																		
																	</div></li>
																<li><img
																	src="${pageContext.request.contextPath }/statics/images/img.jpg"
																	class="avatar" alt="Avatar">
																	<div class="message_date">
																		<h3 class="date text-info">24</h3>
																		<p class="month">May</p>
																	</div>
																	<div class="message_wrapper">
																		<h4 class="heading">成长规划</h4>
																		<blockquote class="message">${pla.growth_plan}</blockquote>
																		<br />
																		
																	</div></li>
																<li><img
																	src="${pageContext.request.contextPath }/statics/images/img.jpg"
																	class="avatar" alt="Avatar">
																	<div class="message_date">
																		<h3 class="date text-error">21</h3>
																		<p class="month">May</p>
																	</div>
																	<div class="message_wrapper">
																		<h4 class="heading">自我检测</h4>
																		<blockquote class="message">${pla.self_testId}</blockquote>
																		<br />	
																	</div></li>
																<li><img
																	src="${pageContext.request.contextPath }/statics/images/img.jpg"
																	class="avatar" alt="Avatar">
																	<div class="message_date">
																		<h3 class="date text-error">21</h3>
																		<p class="month">May</p>
																	</div>
																	<div class="message_wrapper">
																		<h4 class="heading">总结反思</h4>
																		<blockquote class="message">${pla.conclusion_reflections }</blockquote>
																		<br />
																		
																	</div></li>
															</ul>
															</c:forEach>
															<!-- end recent activity -->

														
															<!-- end user projects -->

														</div>
														<div role="tabpanel" class="tab-pane fade"
															id="tab_content3" aria-labelledby="profile-tab">
															 <div class="col-md-6 col-sm-6 col-xs-12">
           
                 <div class="x_content" style="width: 200%">
                   <!-- start accordion -->
                   <div class="accordion" id="accordion1" role="tablist" aria-multiselectable="true">
      
                     <div class="panel">
                       <a class="panel-heading" role="tab" id="headingOne1" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1" aria-expanded="true" aria-controls="collapseOne">
                         <h4 class="panel-title">1.开设示范课、公开课及承担教学讲座情况</h4>
                       </a>
                       
                       <c:forEach items="${teacher.pucList }" var="puc">
                       <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                         <div class="panel-body">
                           <table class="table table-striped">
                             <thead>
                               <tr>
                                 <th>#</th>
                                 <th>时间</th>
                                 <th>名称</th>
                                 <th>开课或讲座范围</th>
                                 <th>证明材料</th>
                               </tr>
                             </thead>
                             <tbody>
                               <tr>
                                 <th scope="row">${puc.id }</th>
                                 <td>${puc.time }</td>
                                 <td>${puc.name }</td>
                                 <td>${puc.classes }</td>
                                 <td>${puc.proof_materials }</td>
                               </tr>
                             </tbody>
                           </table>
                         </div>
                       </div>
                       </c:forEach>
                     </div>
                     
                     <div class="panel">
                       <a class="panel-heading" role="tab" id="headingFour1" data-toggle="collapse" data-parent="#accordion1" href="#collapseFour1" aria-expanded="true" aria-controls="collapseFour">
                         <h4 class="panel-title">2.参加或调研测试命题、教学督导、职称评定等工作情况</h4>
                       </a>
                       <c:forEach items="${teacher.retList }" var="ret">
                       <div id="collapseFour1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFour">
                         <div class="panel-body">
                           <table class="table table-striped">
                             <thead>
                               <tr>
                                 <th>#</th>
                                 <th>时间</th>
                                 <th>工作内容</th>
                                 <th>组织单位</th>
                                 <th>证明材料</th>
                               </tr>
                             </thead>
                             <tbody>
                               <tr>
                                 <th scope="row">${ret.id }</th>
                                 <td>${ret.time }</td>
                                 <td>${ret.working_capacity }</td>
                                 <td>${ret.qrganizational_unit }</td>
                                 <td>${ret.certificate }</td>
                               </tr>
                             </tbody>
                           </table>
                         </div>
                       </div>
                       </c:forEach>
                     </div>
                     
                     <div class="panel">
                       <a class="panel-heading" role="tab" id="headingFive1" data-toggle="collapse" data-parent="#accordion1" href="#collapseFive1" aria-expanded="true" aria-controls="collapseFive">
                         <h4 class="panel-title">3.参加教学竞赛获奖情况</h4>
                       </a>
                        <c:forEach items="${teacher.edcList }" var="edc">
                       <div id="collapseFive1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFive">
                         <div class="panel-body">
                           <table class="table table-striped">
                             <thead>
                               <tr>
                                 <th>#</th>
                                 <th>时间</th>
                                 <th>竞赛名称</th>
                                 <th>所获奖项</th>
                                 <th>组织单位</th>
                                 <th>证明材料</th>
                               </tr>
                             </thead>
                             <tbody>
                               <tr>
                                 <th scope="row">${edc.id }</th>
                                 <td>${edc.time }</td>
                                 <td>${edc.race_name }</td>
                                 <td>${edc.which }</td>
                                 <td>${edc.organizational_units }</td>
                                 <td>${edc.certificate }</td>
                               </tr>
                             </tbody>
                           </table>
                         </div>
                       </div>
                       </c:forEach>
                     </div>
                     
                     <div class="panel">
                       <a class="panel-heading collapsed" role="tab" id="headingTwo1" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1" aria-expanded="false" aria-controls="collapseTwo">
                         <h4 class="panel-title">4.参加教育教学科研工作情况</h4>
                       </a>
                       <div id="collapseTwo1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                         <div class="panel-body">
                           <p><strong>⑴参加教育教学课题研究情况</strong>
                           </p>
                           <div class="panel">
                       <div id="collapseFour1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFour">
                         <c:forEach items="${teacher.tssList }" var="tss">
                         <div class="panel-body">
                           <table class="table table-striped">
                             <thead>
                               <tr>
                                 <th>#</th>
                                 <th>时间</th>
                                 <th>课题名称</th>
                                 <th>立项部门</th>
                                 <th>本人承担任务</th>
                                 <th>结题情况</th>
                                 <th>证明材料</th>
                               </tr>
                             </thead>
                             <tbody>
                               <tr>
                                 <th scope="row">${tss.id }</th>
                                 <td>${tss.time }</td>
                                 <td>${tss.course_name }</td>
                                 <td>${tss.project_department }</td>
                                 <td>${tss.undertake_task }</td>
                                 <td>${tss.concluding_situation }</td>
                                 <td>${tss.certificate }</td>
                               </tr>
                             </tbody>
                           </table>
                         </div>
                         </c:forEach>
                       </div>
                     </div>
                         
                         <p><strong>⑵发表论文论著或编写教材情况</strong>
                           </p>
                           <div class="panel">
                       <div id="collapseFour1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFour">
                         <c:forEach items="${teacher.pwList }" var="pw">
                         <div class="panel-body">
                           <table class="table table-striped">
                             <thead>
                               <tr>
                                 <th>#</th>
                                 <th>时间</th>
                                 <th>论文论著名称</th>
                                 <th>本人承担部分</th>
                                 <th>出版发表获奖及交流情况</th>
                                 <th>证明材料</th>
                               </tr>
                             </thead>
                             <tbody>
                               <tr>
                                 <th scope="row">${pw.id }</th>
                                 <td>${pw.time }</td>
                                 <td>${pw.title_dissertation }</td>
                                 <td>${pw.own_part }</td>
                                 <td>${pw.winning }</td>
                                 <td>${pw.certificate }</td>
                               </tr>

                             </tbody>
                           </table>
                         </div>
                         </c:forEach>
                       </div>
                     </div>
                         </div>
                       </div>
                     </div>
                   
                   <div class="panel">
                       <a class="panel-heading" role="tab" id="headingSix2" data-toggle="collapse" data-parent="#accordion1" href="#collapseSix2" aria-expanded="true" aria-controls="collapseSix">
                         <h4 class="panel-title">5.指导学生、青年教师（拜师学习）情况</h4>
                       </a>
                       <div id="collapseSix2" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingSix">
                        <c:forEach items="${teacher.teachersList }" var="tt">
                         <div class="panel-body">
                           <table class="table table-striped">
                             <thead>
                               <tr>
                                 <th>#</th>
                                 <th>时间</th>
                                 <th>师傅姓名</th>
                                 <th>学习指导情况</th>
                                 <th>取得成绩</th>
                                 <th>证明材料</th>
                               </tr>
                             </thead>
                             <tbody>
                               <tr>
                                 <th scope="row">${tt.id }</th>
                                 <td>${tt.time }</td>
                                 <td>${tt.name }</td>
                                 <td>${tt.study_guides }</td>
                                 <td>${tt.gain_success }</td>
                                 <td>${tt.certificate }</td>
                               </tr>
                             </tbody>
                           </table>
                         </div>
                         </c:forEach>
                       </div>
                     </div>
                     
                        <div class="panel">
                       <a class="panel-heading" role="tab" id="headingSeven1" data-toggle="collapse" data-parent="#accordion1" href="#collapseSeven1" aria-expanded="true" aria-controls="collapseSeven">
                         <h4 class="panel-title">6.参加继续教育情况</h4>
                       </a>
                       <div id="collapseSeven1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingSeven">
                         <c:forEach items="${teacher.cedList }" var="ced">
                         <div class="panel-body">
                           <table class="table table-striped">
                             <thead>
                               <tr>
                                 <th>#</th>
                                 <th>时间</th>
                                 <th>学习内容和成绩</th>
                                 <th>主办单位</th>
                                 <th>证明材料</th>
                               </tr>
                             </thead>
                             <tbody>
                               <tr>
                                 <th scope="row">${ced.id }</th>
                                 <td>${ced.time }</td>
                                 <td>${ced.content_grades }</td>
                                 <td>${ced.organizer }</td>
                                 <td>${ced.certificate }</td>
                               </tr>
                              
                             </tbody>
                           </table>
                         </div>
                          </c:forEach>
                       </div>
                     </div>
                     
                   </div>
                   <!-- end of accordion -->


                 </div>
               </div>
             </div>
           </div>
                     
                     
                     
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						
					
					<div class="row" id="row2" style="display: none;">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Form validation <small>sub title</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form class="form-horizontal form-label-left" novalidate id="form1">

                      <p>Personal information of teachers
                      </p>
                      <span class="section">Personal Info</span>
						<input type="hidden" id="id" name="id" value="${teacher.id }"/>
					
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">姓名 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="name" class="form-control col-md-7 col-xs-12" name="name" placeholder="愚&小余" required="required" type="text" value="${teacher.name }">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="politics status">政治面貌<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="politics" name="politics" required="required" class="form-control col-md-7 col-xs-12" value="${teacher.politics }">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="discipline">学科专业<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="discipline" name="discipline" required="required" class="form-control col-md-7 col-xs-12" value="${teacher.discipline }">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="education">最高学历 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="education" name="education" class="form-control col-md-7 col-xs-12">
                          		<c:forEach items="${fsList }" var="fs">
                          		<option value="${fs.id }">${fs.name }</option>
                          		</c:forEach>
                          </select>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="titles">职称 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="titles" class="form-control col-md-7 col-xs-12" name="titles" required="required" type="text" value="${teacher.titles }">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="duty">职务 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="duty" class="form-control col-md-7 col-xs-12" name="duty" required="required" type="text" value="${teacher.duty }">
                        </div>
                      </div>
                 
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="telephone">联系电话 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="tel" id="phone" name="phone" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12" value="${teacher.phone }">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="natives">籍贯 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="natives" class="form-control col-md-7 col-xs-12" name="natives" required="required" type="text" value="${teacher.natives }">
                        </div>
                      </div>
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">其他情况 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea id="rests" required="required" name="rests" class="form-control col-md-7 col-xs-12" ></textarea>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <button type="submit" class="btn btn-primary" id="cancel">Cancel</button>
                          <button id="send2" type="button" class="btn btn-success">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
					
					
				</div>
				</div>
			</div>
		</div>
		<!-- /page content2 -->

		<!-- footer content -->
		<footer>
		<div class="pull-right">
			Gentelella - Bootstrap Admin Template by <a
				href="https://colorlib.com">Colorlib</a>
		</div>
		<div class="clearfix"></div>
		</footer>
		<!-- /footer content -->

		<!-- jQuery -->
		<script
			src="${pageContext.request.contextPath }/statics/vendors/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap -->
		<script
			src="${pageContext.request.contextPath }/statics/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- FastClick -->
		<script
			src="${pageContext.request.contextPath }/statics/vendors/fastclick/lib/fastclick.js"></script>
		<!-- NProgress -->
		<script
			src="${pageContext.request.contextPath }/statics/vendors/nprogress/nprogress.js"></script>
		<!-- iCheck -->
		<script
			src="${pageContext.request.contextPath }/statics/vendors/iCheck/icheck.min.js"></script>
		<!-- Custom Theme Scripts -->
		<script
			src="${pageContext.request.contextPath }/statics/build/js/custom.min.js"></script>

		<!-- morris.js -->
		<script
			src="${pageContext.request.contextPath }/statics/vendors/raphael/raphael.min.js"></script>
		<script
			src="${pageContext.request.contextPath }/statics/vendors/morris.js/morris.min.js"></script>
		<!-- bootstrap-progressbar -->
		<script
			src="${pageContext.request.contextPath }/statics/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
		<!-- bootstrap-daterangepicker -->
		<script
			src="${pageContext.request.contextPath }/statics/js/moment/moment.min.js"></script>
		<script
			src="${pageContext.request.contextPath }/statics/js/datepicker/daterangepicker.js"></script>
		<!-- Datatables -->
		<script
			src="${pageContext.request.contextPath }/statics/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
		
		 <!-- PNotify -->
    <script src="${pageContext.request.contextPath }/statics/vendors/pnotify/dist/pnotify.js"></script>
    <script src="${pageContext.request.contextPath }/statics/vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="${pageContext.request.contextPath }/statics/vendors/pnotify/dist/pnotify.nonblock.js"></script>
		
		  <!-- validator -->
    <script src="${pageContext.request.contextPath }/statics/vendors/validator/validator.js"></script>
		 
		 <!-- validator -->
    <script>
      // initialize the validator function
      validator.message.date = 'not a real date';

      // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
      $('form')
        .on('blur', 'input[required], input.optional, select.required', validator.checkField)
        .on('change', 'select.required', validator.checkField)
        .on('keypress', 'input[required][pattern]', validator.keypress);

      $('.multi.required').on('keyup blur', 'input', function() {
        validator.checkField.apply($(this).siblings().last()[0]);
      });

      $('form').submit(function(e) {
        e.preventDefault();
        var submit = true;

        // evaluate the form using generic validaing
        if (!validator.checkAll($(this))) {
          submit = false;
        }

        if (submit)
          this.submit();

        return false;
      });
    </script>
    <!-- /validator -->
		 
    <script>
      $(document).ready(function() {
        new PNotify({
          title: "PNotify",
          type: "info",
          text: "Welcome. Try hovering over me. You can click things behind me, because I'm non-blocking.",
          nonblock: {
              nonblock: true
          },
          addclass: 'dark',
          styling: 'bootstrap3',
          hide: false,
          before_close: function(PNotify) {
            PNotify.update({
              title: PNotify.options.title + " - Enjoy your Stay",
              before_close: null
            });

            PNotify.queueRemove();

            return false;
          }
        });

      });
    </script>
    <!-- /PNotify -->

    <!-- Custom Notification -->
    <script>
      $(document).ready(function() {
        var cnt = 10;

        TabbedNotification = function(options) {
          var message = "<div id='ntf" + cnt + "' class='text alert-" + options.type + "' style='display:none'><h2><i class='fa fa-bell'></i> " + options.title +
            "</h2><div class='close'><a href='javascript:;' class='notification_close'><i class='fa fa-close'></i></a></div><p>" + options.text + "</p></div>";

          if (!document.getElementById('custom_notifications')) {
            alert('doesnt exists');
          } else {
            $('#custom_notifications ul.notifications').append("<li><a id='ntlink" + cnt + "' class='alert-" + options.type + "' href='#ntf" + cnt + "'><i class='fa fa-bell animated shake'></i></a></li>");
            $('#custom_notifications #notif-group').append(message);
            cnt++;
            CustomTabs(options);
          }
        };

        CustomTabs = function(options) {
          $('.tabbed_notifications > div').hide();
          $('.tabbed_notifications > div:first-of-type').show();
          $('#custom_notifications').removeClass('dsp_none');
          $('.notifications a').click(function(e) {
            e.preventDefault();
            var $this = $(this),
              tabbed_notifications = '#' + $this.parents('.notifications').data('tabbed_notifications'),
              others = $this.closest('li').siblings().children('a'),
              target = $this.attr('href');
            others.removeClass('active');
            $this.addClass('active');
            $(tabbed_notifications).children('div').hide();
            $(target).show();
          });
        };

        CustomTabs();

        var tabid = idname = '';

        $(document).on('click', '.notification_close', function(e) {
          idname = $(this).parent().parent().attr("id");
          tabid = idname.substr(-2);
          $('#ntf' + tabid).remove();
          $('#ntlink' + tabid).parent().remove();
          $('.notifications a').first().addClass('active');
          $('#notif-group div').first().css('display', 'block');
        });
      });
    </script>
    <!-- /Custom Notification -->
		
		<!-- datepicker -->
		<script type="text/javascript">
			$(document).ready(function() {
		
				var cb = function(start, end, label) {
					console.log(start.toISOString(), end.toISOString(), label);
					$('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
				//alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
				}
		
				var optionSet1 = {
					startDate : moment().subtract(29, 'days'),
					endDate : moment(),
					minDate : '01/01/2012',
					maxDate : '12/31/2015',
					dateLimit : {
						days : 60
					},
					showDropdowns : true,
					showWeekNumbers : true,
					timePicker : false,
					timePickerIncrement : 1,
					timePicker12Hour : true,
					ranges : {
						'Today' : [ moment(), moment() ],
						'Yesterday' : [ moment().subtract(1, 'days'), moment().subtract(1, 'days') ],
						'Last 7 Days' : [ moment().subtract(6, 'days'), moment() ],
						'Last 30 Days' : [ moment().subtract(29, 'days'), moment() ],
						'This Month' : [ moment().startOf('month'), moment().endOf('month') ],
						'Last Month' : [ moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month') ]
					},
					opens : 'left',
					buttonClasses : [ 'btn btn-default' ],
					applyClass : 'btn-small btn-primary',
					cancelClass : 'btn-small',
					format : 'MM/DD/YYYY',
					separator : ' to ',
					locale : {
						applyLabel : 'Submit',
						cancelLabel : 'Clear',
						fromLabel : 'From',
						toLabel : 'To',
						customRangeLabel : 'Custom',
						daysOfWeek : [ 'Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa' ],
						monthNames : [ 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December' ],
						firstDay : 1
					}
				};
				$('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
				$('#reportrange').daterangepicker(optionSet1, cb);
				$('#reportrange').on('show.daterangepicker', function() {
					console.log("show event fired");
				});
				$('#reportrange').on('hide.daterangepicker', function() {
					console.log("hide event fired");
				});
				$('#reportrange').on('apply.daterangepicker', function(ev, picker) {
					console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
				});
				$('#reportrange').on('cancel.daterangepicker', function(ev, picker) {
					console.log("cancel event fired");
				});
				$('#options1').click(function() {
					$('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
				});
				$('#options2').click(function() {
					$('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
				});
				$('#destroy').click(function() {
					$('#reportrange').data('daterangepicker').remove();
				});
			});
		</script>
		<!-- /datepicker -->

		<!-- Datatables -->
		<script>
      $(document).ready(function() {
        var handleDataTableButtons = function() {
          if ($("#datatable-buttons").length) {
            $("#datatable-buttons").DataTable({
              dom: "Bfrtip",
              buttons: [
                {
                  extend: "copy",
                  className: "btn-sm"
                },
                {
                  extend: "csv",
                  className: "btn-sm"
                },
                {
                  extend: "excel",
                  className: "btn-sm"
                },
                {
                  extend: "pdfHtml5",
                  className: "btn-sm"
                },
                {
                  extend: "print",
                  className: "btn-sm"
                },
              ],
              responsive: true
            });
          }
        };

        TableManageButtons = function() {
          "use strict";
          return {
            init: function() {
              handleDataTableButtons();
            }
          };
        }();

        $('#datatable').dataTable();

        $('#datatable-keytable').DataTable({
          keys: true
        });

        $('#datatable-responsive').DataTable();

        $('#datatable-scroller').DataTable({
          ajax: "js/datatables/json/scroller-demo.json",
          deferRender: true,
          scrollY: 380,
          scrollCollapse: true,
          scroller: true
        });

        $('#datatable-fixed-header').DataTable({
          fixedHeader: true
        });

        var $datatable = $('#datatable-checkbox');

        $datatable.dataTable({
          'order': [[ 1, 'asc' ]],
          'columnDefs': [
            { orderable: false, targets: [0] }
          ]
        });
        $datatable.on('draw.dt', function() {
          $('input').iCheck({
            checkboxClass: 'icheckbox_flat-green'
          });
        });

        TableManageButtons.init();
      });
    </script>
		<!-- /Datatables -->


		<!-- 注销 -->
		<script type="text/javascript">
			$(function() {
				$("#Logout").bind("click", function() {
					$.ajax({
						url : "${pageContext.request.contextPath }/User/logout",
						type : "post",
						dataType : "json",
						success : function(data) {
							if (data.num == "0") {
								alert("注销成功！");
								location.href = "${pageContext.request.contextPath }/User/";
							}
						},
						error : function(data) {
							alert("0");
							alert(data);
						}
					});
				});
			});
		</script>
		
		<script type="text/javascript">
			$("#edit").bind("click",function(){
				if(!$("#row2").is(":visible")){
					$("#row2").attr("style", "display:block;");
					$("#row1").attr("style", "display:none;");
				}else{
					$("#row2").attr("style", "display:none;");
					$("#row1").attr("style", "display:block;");
				}
			});
			
			$("#uar").bind("dblclick", function() {
				/* 	$("#gb").attr("style", "display:block;");
					$("#jl").attr("style", "display:none;"); */
			         if(!$("#gb").is(":visible")){
			          $("#gb").attr("style", "display:block;");
			          $("#jl").attr("style", "display:none;");
			         }else{ 
			          $("#gb").attr("style", "display:none;");
			           $("#jl").attr("style", "display:block;");
			        }
				});
				
				$("#cancel").bind("click",function(){
					$("#row2").attr("style", "display:none;");
				});
				
				$("#send2").bind("click",function(){
					alert("dfds");
					var teacher={
						id:$("#id").val(),
						name:$("#name").val(),
						politics:$("#politics").val(),
						discipline:$("#discipline").val(),
						education:$("#education").val(),
						titles:$("#titles").val(),
						duty:$("#duty").val(),
						phone:$("#phone").val(),
						natives:$("#natives").val(),
						rests:$("#rests").val()
					}
					$.ajax({
						url : "${pageContext.request.contextPath }/Login/modify",
							type : "post",
							dataType : "json",
							data:teacher,
							success : function(data) {
								if (data.num == "0") {
									alert("修改成功！");
									location.href = "${pageContext.request.contextPath }/Login/index";
								}else{
									alert("修改失败！");
								}
							},
							error : function(data) {
								alert("0");
								alert(data);
							}
					
					});
				});
		</script>
</body>
</html>
