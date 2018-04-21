<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
                <security:authorize access="isAuthenticated()">
                    <h2><security:authentication property="principal.username" /></h2>
                </security:authorize>
              </div>
            </div>
            <!-- /menu profile quick info -->
            <br/>

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                  <security:authorize access="hasRole('SUPERVISOR')">
                    <h3>SUPERVISOR</h3>
                </security:authorize>
                    <security:authorize access="hasRole('ADMIN')">
                    <h3>ADMIN</h3>
                </security:authorize>
                <ul class="nav side-menu" ng-app="AuctionApp">
                   <li><a href="${pageContext.request.contextPath }/auc-admin"><i class="fa fa-home"></i> HOME <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/auc-admin"><i class="fa fa-dashboard"></i>DASHBOARD</a></li>
                       
                    </ul>
                  </li>

                  <li><a><i class="fa fa-user"></i> ACCOUNTS <span class="fa fa-chevron-down"></span></a>
                      <ul class="nav child_menu" >
                          <li ><a href="${pageContext.request.contextPath }/auc-admin/bidder"><i class="fa fa-user-secret"></i>Bidder </span></a>
                          </li>
                      <li><a href="${pageContext.request.contextPath }/auc-admin/user"><i class="fa fa-users"></i>Seller</span></a>
                      </li>
                      
                      <security:authorize access="hasRole('SUPERVISOR')">
                        <li><a href="${pageContext.request.contextPath }/auc-admin/superSU"><i class="fa fa-users"></i>Admin</span></a>

                        </li>
                      </security:authorize>
                     
                    </ul>
                  </li>
                 
                  <li><a><i class="fa fa-product-hunt"></i> PRODUCTS <span class="fa fa-chevron-down"></span></a>
                      <ul class="nav child_menu" >
                          <li><a href="${pageContext.request.contextPath }/auc-admin/category"><i class="fa fa-book"></i>CATEGORY MANAGE</a>
                          </li>
                      <li><a href="${pageContext.request.contextPath }/auc-admin/brand"><i class="fa fa-asterisk"></i>BRAND MANAGE</a>
                      </li>
                     <li><a href="${pageContext.request.contextPath }/auc-admin/product"><i class="fa fa-server"></i>PRODUCT MANAGE</a>
                      </li>
                    </ul>
                  </li>
                  <li><a href="${pageContext.request.contextPath }/auc-admin/manage"><i class="fa fa-edit"></i>AUCTIONS</a>
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
              <security:authorize access="isAuthenticated()">
              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="${pageContext.request.contextPath }/resources/admin/images/img.jpg" alt=""><security:authentication property="principal.username" />
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="${pageContext.request.contextPath }/auc-admin/account/<security:authentication property="principal.id" />"> Account</a></li>
                       
                    <li><a href="${pageContext.request.contextPath }/logout"><i class="fa fa-sign-out pull-right"></i> Sign Out</a></li>
                  </ul>
                </li>
              </ul>
              </security:authorize>
            </nav>
          </div>
        </div>
