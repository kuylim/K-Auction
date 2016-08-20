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

    <title>K-Auction | Brand</title>

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
    <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
 <!--    sweetaler style--> 
  </head>

  <body class="nav-md">
    <div class="container body" ng-app="AuctionApp">
      <div class="main_container">
        
    <%@ include file="left-side.jsp" %>
        
         <div class="clearfix"></div>
        <!-- page content -->
        <div class="right_col" role="main"  >
          <div class="" ng-controller="BrandController" ng-cloak="cloak">
	<!--add new product-->
        
                  <!--replace by the sweetalert start-->
           	<!--modal​ add-->
	<div class="modal fade" id="addbrand" role="dialog">
	   <div class="modal-dialog">
	    <div class="modal-content">
                        <div class="modal-header">
	   	<button type="button" class="close" data-dismiss="modal">&times;</button>
	   	<h4 class="modal-title">Add New Brand</h4>
	     </div>
                       <div class="modal-body">
	         <div class="form-group">
<!--	   	<span>Owner</span><input type="number" ng-model="ownerid"  class="form-control" placeholder="Input name"><br>-->
	   	<span>Brand Name </span><input type="text" ng-model="brandname"  class="form-control" placeholder="New brand name"><br>
	   	<span>Description</span><input type="text" class="form-control"  ng-model="description" placeholder="Brand description"><br>
	   	
	   	<a href="" ng-click="addBrand()" type="button" id="add" class="btn btn-success" ng-disabled="!brandname || !description">Add</a>
	   	<button type="button" class="btn btn-default"   data-dismiss="modal">Close</button>

                            </div>     	  
	       </div>
	    </div>
                    </div>	 	  	     		
	</div>
	<!--end modal add -->
	<!--modal​ update-->
	 <div class="modal fade" id="updatebrand" role="dialog">
	   <div class="modal-dialog">
                        <div class="modal-content">
                           <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
	   	<h4 class="modal-title">Update Brand</h4>
                           </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <span>Brand ID </span><input type="id" ng-model="brandid"  class="form-control" readonly="true"><br>
<!--                                    <select  class="form-control" ng-model="" style="padding-left:5px;" 
                                             ng-options="pro.pro_id as pro.name for pro in products">
        		</select><br>-->
	   	<span>Brand Name </span><input type="text" ng-model="brandname"  class="form-control" placeholder="New brand name"><br>
	   	<span>Description</span><input type="text" class="form-control"  ng-model="description" placeholder="Brand description"><br>
	   	<a href="" ng-click="updateBrand()" type="button" id="add" class="btn btn-success" ng-disabled="!brandname || !description">Update</a>
	   	<button type="button" class="btn btn-default"   data-dismiss="modal">Close</button>							
                                </div>    	  
                            </div>
                        </div>
                     </div>	 	  	     		
	</div>
	<!--end modal update-->  
                    <div class="row">
                     <h1 >Branding Manager</h1>
                        <div >
                            <div >                  
                               <div class="table-responsive" style="border:none;">
                                   <h3 class="pull-left">Filter Here..</h3>
                                   <button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#addbrand"  >Add New Brand</button>
                               <table class="table table-striped jambo_table bulk_action">
                               <thead
                                 <tr​​>
                                     <th>No </th>
                                     <th >Brand ID </th>
                                     <th >Brand Name </th>
                                     <th >Description</th>
                                     <th >Action </th>
                                 </tr
                               </thead>
                               <tbody>
                                 <tr ng-repeat="bra in brand | orderBy:'brand_id':'reverse':'DESC' ">	   
                                    <td>{{$index+1}} </td>
                                    <td>{{bra.brand_id}}</td>
                                    <td>{{bra.name}}</td>
                                    <td>{{bra.description}} </td>                          
                                   <td>
                                    <a href="" ng-click="getBrandObject(this)" class='btn btn-success btn-sm' data-toggle='modal' data-target='#updatebrand'>Update</a>
                                     <a href="" ng-click="deleteBrand(bra.brand_id)"  class='btn btn-danger btn-sm'>Delete</a>
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
<!--        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>-->
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