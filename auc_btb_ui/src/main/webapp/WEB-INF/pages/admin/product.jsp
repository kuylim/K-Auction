<%-- 
    Document   : product
    Created on : Aug 3, 2016, 9:11:56 AM
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

    <title>K-Auction | Products</title>

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
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <!-- datatable -->
	<link href="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
<!--    moment-->
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/admin/js/sweetalert/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/admin/js/sweetalert/sweetalert.css">
  </head>

  <body class="nav-md "  ng-app="AuctionApp">
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
        <div class="right_col" role="main" ng-controller="AuctionController">
          <div class="">
	
            <!--replace by the sweetalert start-->
            
                    <!--modal​ add-------------------------------------------------------------------------------------------------------------------------->
                    
                    
                    
                    
	   	    <div class="modal fade" id="add" role="dialog">
	   	        <div class="modal-dialog">
	   	    	 <div class="modal-content">
	   	    	 	  <div class="modal-header">
	   	    	 	  	  <button type="button" class="close" data-dismiss="modal">&times;</button>
	   	    	 	  	  <h4 class="modal-title">Add New</h4>
	   	    	 	  </div>
	   	    	 	  <div class="modal-body">
	   	    	 	  	   <div class="form-group">
	   	    	 	  	     	<span>Name</span><input type="type" ng-model="name"  class="form-control" placeholder="Product name"><br>
	   	    	 	  	     	<span>Category ID</span>
						<select  class="form-control" ng-model="catid" style="padding-left:6px;">
                                                                                                                     <option  ng-repeat="cat in category" value="{{cat.cat_id}}">
                                                                                                                             {{cat.name}} {{own.lastname}}
                                                                                                                       </option>
                                                                                                             </select>
                                                                                                            <br>
                                                                                                            <span>Brand ID</span>
                                                                                                                <select  class="form-control" ng-model="brandid" style="padding-left:6px;">
                                                                                                                     <option  ng-repeat="bra in brand" value="{{bra.brand_id}}">
                                                                                                                             {{bra.name}} 
                                                                                                                       </option>
                                                                                                             </select>
                                                                                                            <br>
	   	    	 	  	     	<span>Product Info</span><input type="text" class="form-control"  ng-model="proinfo" placeholder="Product information"><br>

	   	    	 	  	     	<a href="" ng-click="addProduct()" type="button" id="add" class="btn btn-success" data-toggle="modal" data-target="#upload_img">Add</a>
	   	    	 	  	     	<button type="button" class="btn btn-default"   data-dismiss="modal">Close</button>
	   	    	 	  	     	<!-- <a href="" ng-click="addPerson()" type="button" ng-disabled="!name || name.$error.pattern || !age || age.$error.pattern" id="add" class="btn btn-success">Add</a>
	   	    	 	  	     	<button type="button" class="btn btn-default"   data-dismiss="modal">Close</button> -->
	   	    	 	  	    </div>     	  
	   	    	 	  </div>
	   	        </div>
	   	      </div>	 	  	     		
	   	   </div>
	   	   <!--end modal-->

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

								<!-- <span>Owner</span><input type="number" ng-model="ownerid"  class="form-control"><br> -->

								<!-- <span>Owner</span><select class="form-control">
									<option ng-model="ownerid">sample</option>
								</select><br> -->
								<span>Owner</span>
								<select  class="form-control" ng-model="ownerid" style="padding-left:6px;">
        							<option  ng-repeat="own in owners" value="{{own.owner_id}}">
        								{{own.firstname}} {{own.lastname}}
        							</option>
        						</select><br>
        						<span>Product</span>
								<select  class="form-control" ng-model="proid" style="padding-left:6px;">
        							<option  ng-repeat="pro in products" value="{{pro.pro_id}}">
        								{{pro.name}}
        							</option>
        						</select><br>

	   	    	 	  	     	<!-- <span>Product</span><input type="number" class="form-control"  ng-model="proid"><br>
 -->
	   	    	 	  	     	<span>Condition</span><input type="text" ng-model="productcondition"  class="form-control" placeholder="Input name"><br>

	   	    	 	  	     	<span>Started Price</span><input type="number" id="startprice" class="form-control"  ng-model="startprice" placeholder="Input age"><br>

	   	    	 	  	     	<span>Buy Price</span><input type="number" ng-model="buyprice"  class="form-control" placeholder="Input name"><br>

	   	    	 	  	     	<span>Bid Increase Price</span><input type="number"  class="form-control"  ng-model="bidincrementprice" placeholder="Input age"><br>

	   	    	 	  	     	<span>Current Price</span><input type="number" ng-model="currentprice"  class="form-control" placeholder="Input name"><br>

	   	    	 	  	     	<span>Started Date</span><input class="form-control"  ng-model="startdate" placeholder="Input age"><br>

	   	    	 	  	     	<span>End Date</span><input  ng-model="enddate" class="form-control" placeholder="Input name" ><br>

	   	    	 	  	     	<span>User ID</span><input type="number"  class="form-control"  ng-model="usrid" readonly ><br>
								
	   	    	 	  	     	<a href="" ng-click="updatePerson(id)" class="btn btn-success" >Update</a>
	   	    	 	  	     	<button type="button" class="btn btn-default" id="btnclose" data-dismiss="modal">Close</button>
								
	   	    	 	  	     	<!-- <a href="" ng-click="updatePerson(id)" class="btn btn-success" ng-disabled="!name || name.$error.pattern || !age || age.$error.pattern">Update</a>
	   	    	 	  	     	<button type="button" class="btn btn-default" id="btnclose" data-dismiss="modal">Close</button> -->
	   	    	 	  	    </div>    	  
	   	    	 	  </div>
	   	        </div>
	   	      </div>	 	  	     		
	   	   </div>
	   	   <!--end modal-->
                   
                   <div class="modal fade" id="upload_img" role="dialog">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <form ng-submit = "upload($event)">
                                            <table>
                                                    <tr>
                                                            <td>File(multiple)</td>
                                                            <td>: <input type="file" id="file" name="file" class="form-control" multiple></td>
                                                    </tr>
                                                   
                                                    <tr>
                                                           <td>: <input type="submit" class="btn btn-success" value="Upload"/></td>
                                                    </tr>
                                            </table>
                                        </form>  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
	   	    <div class="row">
	   	    	 <div class="col-md-12" >
	   	    	 	<h3>Auctions List</h3>
	   	    	 	  <div class="table-responsive">
	   	    	 	  	  <table class="table table-bordered">
	   	    	 	  	  <tr >
	   	    	 	  	    <td colspan="13">
                                                                                                            <span>Search here </span>
                                                                                                            <select  class="single_field" id="search" onchange="test()" style="padding-left:6px;">
                                                                                                                     <option  ng-repeat="pro in products" value="{{pro.name}}">{{pro.name}}</option>
                                                                                                            </select>
	   	    	 	  	     	<button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#add" >Add Product Item</button>
	   	    	 	  	    </td>  
	   	    	 	  	  </tr>
	   	    	 	  	  <tr​​>
                                                                                                    <th>No </th
                                                                                                    <th>Product ID </th>
                                                                                                    <th >Product Name </th>
                                                                                                    <th >Product Category </th>
                                                                                                    <th >Product Brand </th>
                                                                                                    <th >Product information </th>
                                                                                                    <th >Action </th>

	   	    	 	  	  </tr>
	   	    	 	  	  <tr ng-repeat="pro in products | orderBy:'pro_id':'reverse':'DESC' ">
						   
						    <td>{{$index+1}} </td>
						    <td>{{pro.pro_id}}</td>
						    <td>{{pro.name}}</td>
						    <td>{{pro.cat_id}} </td>
						    <td>{{pro.brand_id}}</td>
                                                                                                                <td>{{pro.product_info}}</td>
						     <td>
                                                                                                                        <a href="" ng-click="getData(this)" class='btn btn-success btn-sm' data-toggle='modal' data-target='#update'>Update</a>
                                                                                                                        <a href="" ng-click="deletePerson(pro.pro_id)"  class='btn btn-danger btn-sm'>Delete</a>
                                                                                                                    </td>
						</tr>
					</table>
	   	    	</div> 
	   	   	</div>
	   	</div>
            <!--replace by the sweetalert end-->      
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

       <!-- angular app -->
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/admin/js/angular/angular.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/admin/js/angular/app.js"></script>
        <script src="${pageContext.request.contextPath }/resources/admin/js/jquery/jquery.js"></script>
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