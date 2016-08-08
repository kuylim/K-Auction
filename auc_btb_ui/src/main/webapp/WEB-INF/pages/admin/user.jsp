<%-- 
    Document   : user
    Created on : Aug 3, 2016, 9:13:34 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>K-Auction | Users</title>

	<!-- iCheck -->
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">


    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/resources/build/css/custom.css" rel="stylesheet">
	<!-- Mystyle -->
    <link href="${pageContext.request.contextPath }/resources/build/css/auction.css" rel="stylesheet">
    <!-- datatable -->
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
  <!-- angular app -->
<!--        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>-->
        <script src="${pageContext.request.contextPath }/resources/admin/js/angular/angular.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/admin/js/angular/app.js"></script>
    <!-- angular app -->
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="../au-admin.html" class="site_title"><i class="fa fa-paw"></i> <span>K-Auction</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
                <img src="${pageContext.request.contextPath }/resources/admin/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>សូមស្វាគមន៍,</span>
                <h2>ទិត្យ គុយលីម</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> ទំព័រដើម <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="../au-admin.html">ផ្ទាំងគ្រប់គ្រង</a></li>
                    </ul>
                  </li>
                  <li><a href="user.html"><i class="fa fa-user"></i>អ្នកប្រើប្រាស់</a></li>
                  <li><a><i class="fa fa-edit"></i> ប្រភេទផលិតផល <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">គ្រឿងអេឡិចត្រូនិច</a></li>
                      <li><a href="#">យានយន្ដ</a></li>
                      <li><a href="#">អចលនទ្រព្យ</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> គ្រឿងអេឡិចត្រូនិច <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">ទូរស័ព្ទ</a></li>
                      <li><a href="#">កុំព្យូទ័រ</a></li>
                      <li><a href="#">ម៉ាស៊ីនបោកខោអាវ</a></li>
                      <li><a href="#">ទូទឹកកក</a></li>
                      <li><a href="#">ម៉ាស៊ីនត្រជាក់</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-cab"></i> យានយន្ដ <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">រថយន្ដ</a></li>
                      <li><a href="#">ម៉ូតូ</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> អចលទ្រព្យ <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">ដីលូ</a></li>
                      <li><a href="#">ផ្ទះល្វែង</a></li>
                    </ul>
                  </li>
                  <li><a href="product.html"><i class="fa fa-legal"></i>ផលិតផល</a></li>
                  <li><a href="auction.html"><i class="fa fa-plus"></i>ដាក់ផលិតផលដេញថ្លៃ</a>
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
        <!-- /top navigation -->
		<div class="clearfix"></div>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
	<!--add new product-->
           <div class="row">
            <h1 >User Manager</h1>
               <div ng-app="AuctionApp">
                   <div ng-controller="AuctionController">
                      <div class="table-responsive" style="border:none;">
                          <h3 class="pull-left">Filter Here..</h3>
                     <a href="${pageContext.request.contextPath }manage/add" class="btn btn-primary pull-right" style="margin-right: 0px;">Register</a>   
                      <table class="table table-striped jambo_table bulk_action">
                      
                        <thead>
                          <tr>
                            <th>User ID </th>
                            <th >User Name </th>
                            <th >Password </th>
                            <th >Phone </th>
                            <th >Email </th>
                            <th >Status</th>
                      
                            <th class="column-title no-link last"><span class="nobr">Action</span>
                            </th>
                            <th class="bulk-actions" colspan="7">
                              <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr class="even pointer" ng-repeat="auc in auctions" >
                            <td class=" ">{{auc.auc_id}}</td>
                            <td class=" ">{{auc.lastname}} </td>
                            <td class=" ">{{auc.name}} </td>
                            <td class=" ">{{auc.product_condition}} </td>
                            <td class=" ">{{auc.start_date}} </td>
                            <td class=" ">{{auc.end_date}} </td>
                            <td class=" last">
                            	<a href="${pageContext.request.contextPath }manage/update/{{auc.auc_id}}" class=" btn btn-success btn-sm" ng-click="findAuctionItemUpdate(this)" >Edit</a>
                                <a href="" class=" btn btn-danger btn-sm " ng-click="deleteAuctionItem(auc.auc_id)" >Delete</a>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
          </div>  
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
             &copy; Copyright 2016
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/nprogress/nprogress.js"></script>
    <!-- jQuery Sparklines -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>

    <!-- bootstrap-wysiwyg -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/google-code-prettify/src/prettify.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="${pageContext.request.contextPath }/resources/build/js/custom.min.js"></script>
    <!-- iCheck -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/iCheck/icheck.min.js"></script>
     <!-- Select2 -->
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    
    
    
    
     <!-- jQuery Tags Input -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/switchery/dist/switchery.min.js"></script>
      <!-- Parsley -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    
     <!-- Datatables -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/jszip/dist/jszip.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/pdfmake/build/vfs_fonts.js"></script>
    
    
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

        var table = $('#datatable-fixed-header').DataTable({
          fixedHeader: true
        });

        TableManageButtons.init();
      });
    </script>
    
  </body>
</html>
