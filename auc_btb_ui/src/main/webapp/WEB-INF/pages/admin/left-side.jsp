<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="auc-admin" class="site_title"><i class="fa fa-paw"></i> <span>K-Auction</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
               <img src="${pageContext.request.contextPath }/resources/admin/images/img.jpg" alt="..." class="img-circle profile_img"/>
              </div>
              <div class="profile_info">
                <span>WELCOME,</span>
                <h2>TITH KUYLIM</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br/>

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu" ng-app="AuctionApp">
                   <li><a><i class="fa fa-home"></i> HOME <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="auc-admin">DASHBOARD</a></li>
                    </ul>
                  </li>
                  <li><a href="${pageContext.request.contextPath }auc-admin/user"><i class="fa fa-user"></i>USER</a></li>
                  <li><a><i class="fa fa-edit"></i> CATEGORY <span class="fa fa-chevron-down"></span></a>
                      <ul class="nav child_menu" >

                      
                      <li ><a href="#"><i class="fa fa-cab"></i>យានយន្ដ <span class="fa fa-chevron-down"></span></a>
                      	<ul class="nav child_menu">
                                            <li><a href="#">រថយន្ដ</a></li>
                                            <li><a href="#">ម៉ូតូ</a></li>
                                     </ul>
                      </li>
                      <li><a href="#"><i class="fa fa-bar-chart-o"></i>អចលនទ្រព្យ <span class="fa fa-chevron-down"></span></a>
                      	<ul class="nav child_menu">
                          <li><a href="#">ដីលូ</a></li>
                          <li><a href="#">ផ្ទះល្វែង</a></li>
                        </ul>
                      </li>
                     --->
                    </ul>
                  </li>
                  <li><a href="${pageContext.request.contextPath }auc-admin/product"><i class="fa fa-legal"></i>PRODUCT MANAGE</a></li>
                  <li><a href="${pageContext.request.contextPath }auc-admin/manage"><i class="fa fa-plus"></i>AUCTION MANAGE</a>
                   <li><a href="${pageContext.request.contextPath }auc-admin/category"><i class="fa fa-plus-square"></i>CATEGORY MANAGE</a>    
                  </li>
                </ul>
              </div>
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav class="" role="navigation">
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="${pageContext.request.contextPath }/resources/admin/images/img.jpg" alt="">ទិត្យ គុយលីម
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> គណនី</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>ការកំណត់</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">ជំនួយការ</a></li>
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> ចាកចេញ</a></li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>