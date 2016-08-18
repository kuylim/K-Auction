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

    <title>K-Auction | Auction</title>

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
<!--    sweetaler style-->
    <link href="${pageContext.request.contextPath }/resources/admin/js/sweetalert/sweetalert.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/admin/js/sweetalert/sweetalert.min.js"></script>
 <!--    sweetaler style--> 
 <!--    Cloak style-->
    <link href="${pageContext.request.contextPath }/resources/admin/css/cloak/cloakstyle.css" rel="stylesheet">
    
 <!--    Cloak style-->
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
               <img src="${pageContext.request.contextPath }/resources/admin/images/img.jpg" alt="..." class="img-circle profile_img"/>
              </div>
              <div class="profile_info">
                <span>WELCOME,</span>
                <h2>TITH KUYLIM</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="../au-admin.html">Dashboard</a></li>
                    </ul>
                  </li>
                  <li><a href="${pageContext.request.contextPath }auc-admin/user"><i class="fa fa-user"></i>USER</a></li>
                  <li><a><i class="fa fa-edit"></i> CATEGORY <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">គ្រឿងអេឡិចត្រូនិច</a></li>
                      <li><a href="#">យានយន្ដ</a></li>
                      <li><a href="#">អចលនទ្រព្យ</a></li>
                    </ul>
                  </li>
                 
                  </li>
                  <li><a href="${pageContext.request.contextPath }auc-admin/product"><i class="fa fa-legal"></i>PRODUCT MANAGE</a></li>
                  <li><a href="${pageContext.request.contextPath }auc-admin/manage"><i class="fa fa-plus"></i>AUCTION MANAGE</a>
                   <li><a href="${pageContext.request.contextPath }auc-admin/brand"><i class="fa fa-plus-square"></i>BRAND MANAGE</a>
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
        <!-- /top navigation -->
         <div class="clearfix"></div>
        <!-- page content -->
        <div class="right_col" role="main"  ng-app="AuctionApp">
            <div class="" ng-controller="AuctionController" ng-cloak="cloak">
	<!--add new product-->
                  <!--replace by the sweetalert start-->
           	<!--modal​ add-->
	<div class="modal fade" id="add" role="dialog">
	   <div class="modal-dialog">
	    <div class="modal-content">
                        <div class="modal-header">
	   	<button type="button" class="close" data-dismiss="modal">&times;</button>
	   	<h4 class="modal-title">Add New</h4>
	     </div>
                       <div class="modal-body">
	         <div class="form-group">
<!--	   	<span>Owner</span><input type="number" ng-model="ownerid"  class="form-control" placeholder="Input name"><br>-->
                                    <span>Owner</span>
		<select  class="form-control" ng-model="ownerid" style="padding-left:6px;" 
                                            ng-options="own.owner_id as own.lastname for own in owners">
                                    </select><br>
	   	<select  class="form-control" ng-model="proid" style="padding-left:6px;" 
                                             ng-options="pro.pro_id as pro.name for pro in products">
        		</select><br>
	   	<span>Condition</span><input type="text" ng-model="productcondition"  class="form-control" placeholder="Input name"><br>
	   	<span>Started Price</span><input type="number" class="form-control"  ng-model="startprice" placeholder="Input age"><br>
	   	<span>Buy Price</span><input type="number" ng-model="buyprice"  class="form-control" placeholder="Input name"><br>
	   	<span>Bid Increase Price</span><input type="number" class="form-control"  ng-model="bidincrementprice" placeholder="Input age"><br>
	   	<span>Current Price</span><input type="number" ng-model="currentprice"  class="form-control" placeholder="Input name"><br>
	   	<span>Started Date</span><input type="date" class="form-control"  ng-model="startdate" placeholder="Input age"><br>
	   	<span>End Date</span><input type="date" ng-model="enddate" class="form-control" placeholder="Input name"><br>
	   	<span>User ID</span><input type="number" class="form-control"  ng-model="usrid" placeholder="Input age"><br>
	   	<a href="" ng-click="addAuction()" type="button" id="add" class="btn btn-success" 
                                        ng-disabled="!ownerid || !proid || !productcondition || !startprice || !buyprice || !bidincrementprice || !startdate || !enddate || !usrid">Add</a>
	   	<button type="button" class="btn btn-default"   data-dismiss="modal">Close</button>                            
                             </div>     	  
	       </div>
	    </div>
                    </div>	 	  	     		
	</div>
	<!--end modal add -->
	<!--modal​ update-->
	 <div class="modal fade" id="update" role="dialog">
	   <div class="modal-dialog">
                        <div class="modal-content">
                           <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
	   	<h4 class="modal-title">Update Auction</h4>
                           </div>
                            <div class="modal-body">
                                <div class="form-group">
	   	<span>AuctID</span><input type="number" ng-model="aucid"  class="form-control" readonly><br>
		<span>Owner</span>
		<select  class="form-control" ng-model="ownerid" style="padding-left:5px;" 
                                             ng-options="own.owner_id as own.lastname for own in owners">
                                    </select><br>
        		<span>Product</span>
		<select  class="form-control" ng-model="proid" style="padding-left:5px;" 
                                             ng-options="pro.pro_id as pro.name for pro in products">
        		</select><br>
                                    
                                   <!-- <span>Product</span><input type="number" class="form-control"  ng-model="proid"><br> -->
	   	<span>Condition</span><input type="text" ng-model="productcondition"  class="form-control" placeholder="Input name"><br>
	   	<span>Started Price</span><input type="number" id="startprice" class="form-control"  ng-model="startprice" placeholder="Input age"><br>
	   	<span>Buy Price</span><input type="number" ng-model="buyprice"  class="form-control" placeholder="Input name"><br>
	   	<span>Bid Increase Price</span><input type="number"  class="form-control"  ng-model="bidincrementprice" placeholder="Input age"><br>
	   	<span>Current Price</span><input type="number" ng-model="currentprice"  class="form-control" placeholder="Input name"><br>
	   	<span>Started Date</span><input class="form-control"  ng-model="startdate" placeholder="Input age"><br>
	   	<span>End Date</span><input  ng-model="enddate" class="form-control" placeholder="Input name" ><br>
	   	<span>User ID</span><input type="number"  class="form-control"  ng-model="usrid" readonly ><br>					
	   	<a href="" ng-click="updateAuction(id)" class="btn btn-success"  
                                    ng-disabled="!ownerid || !proid || !productcondition || !startprice || !buyprice || !bidincrementprice || !startdate || !enddate || !usrid">Update</a>
	   	<button type="button" class="btn btn-default" id="btnclose" data-dismiss="modal">Close</button>								
	   	<!-- <a href="" ng-click="updatePerson(id)" class="btn btn-success" ng-disabled="!name || name.$error.pattern || !age || age.$error.pattern">Update</a>
	   	<button type="button" class="btn btn-default" id="btnclose" data-dismiss="modal">Close</button> -->
                                </div>    	  
                            </div>
                        </div>
                     </div>	 	  	     		
	</div>
	<!--end modal update-->  
                    <div class="row">
                     <h1 >Auction Manager</h1>
                        <div >
                            <div >
                                
                               <div class="table-responsive" style="border:none;">
                                   <h3 class="pull-left"></h3>
                              
                                   <button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#add"  >Add Auction Item</button>
                               <table class="table table-striped jambo_table bulk_action">
                               <thead
                                 <tr​​>
                                     <th>No </th>
                                     <th >AuctID </th>
                                     <th >Owner </th>
                                     <th >Product </th>
                                     <th >Condition </th>
                                     <th >Start Price </th>
                                     <th >Buy Price</th>
                                     <th >Bid Increase </th>
                                     <th >Current Price </th>
                                     <th >Start Date </th>
                                     <th >End Date </th>
                                     <th >User ID </th>
                                     <th >Action </th>
                                 </tr
                               </thead>
                               <tbody>
                                 <tr ng-repeat="au in auctions | orderBy:'auc_id':'reverse':'DESC' ">	   
                                    <td>{{$index+1}} </td>
                                    <td>{{au.auc_id}}</td>
                                    <td>{{au.firstname}} {{au.lastname}}</td>
                                    <td>{{au.name}} </td>
                                    <td>{{au.product_condition}}</td>
                                    <td>{{au.start_price}}</td>		    
                                    <td>{{au.buy_price}}</td>
                                    <td >{{au.bid_increment_price}} </td>
                                    <td >{{au.current_price}} </td>
                                   <td >{{au.start_date  |  date:'yyyy-MM-dd'}} </td>
                                   <td >{{au.end_date  |  date:'yyyy-MM-dd'}} </td>
                                   <td >{{au.urs_id}} </td>
                                   <td>
                                    <a href="" ng-click="getCurrentObject(this)" class='btn btn-success btn-sm' data-toggle='modal' data-target='#update'>Update</a>
                                     <a href="" ng-click="deleteAuction(au.auc_id)"  class='btn btn-danger btn-sm'>Delete</a>
                                   </td>
                                  </tr>
                                 </tbody>
                               </table>
                             </div>
                             <div   id="pagination" class="pull-right" ></div> 
                           </div>
                         </div>
                   </div>
          </div>  
        </div>
        <!-- end page content -->

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

       <!-- angular app -->
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/admin/js/angular/angular.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/admin/js/angular/app.js"></script>
    <!-- angular app -->
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
    
    <!-- boot page -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery.bootpag.min.js"></script>
    <!-- main app -->
    <script src="${pageContext.request.contextPath }/resources/js/main_app.js"></script>
    <!--pop up product detail-->
    <script src="${pageContext.request.contextPath }/resources/js/jquery.colorbox.js"></script>
    <!--<script>
    
    <!-- Datatables -->
<!--     angular app 
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/admin/js/angular/app.js"></script>
     angular app -->
    <script>
//        function fullDate() {
//                
//                var date = new Date(milis);
//                var dateToStr = date.toUTCString().split(' ');
//                var cleanDate =dateToStr[3] + ' ' + dateToStr[2]+ ' ' + dateToStr[1];
//               
//        }
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