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
        <!--    sweetaler style-->
        <link href="${pageContext.request.contextPath }/resources/admin/js/sweetalert/sweetalert.css" rel="stylesheet">
        <script src="${pageContext.request.contextPath }/resources/admin/js/sweetalert/sweetalert.min.js"></script>
        <!--    sweetaler style--> 
        <!--    Cloak style-->
        <link href="${pageContext.request.contextPath }/resources/admin/css/cloak/cloakstyle.css" rel="stylesheet">
        <!--    Cloak style-->
        
        
        <!--Stylesheets-->
	<link href="${pageContext.request.contextPath }/resources/imageupload/css/jquery.filer.css" type="text/css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath }/resources/imageupload/css/themes/jquery.filer-dragdropbox-theme.css" type="text/css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/imageupload/fancybox/source/jquery.fancybox.css?v=2.1.5">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/imageupload/fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5">
        
    </head>

    <body class="nav-md "  ng-app="AuctionApp" ng-cloak="cloak">
        <div class="container body">
            <div class="main_container">
                <%@ include file="left-side.jsp" %>
                <!-- /top navigation -->
                <div class="clearfix"></div>
                <!-- page content -->
                <div class="right_col" role="main" ng-controller="ProductController">
                    <div class="">

                        <!--replace by the sweetalert start-->

                        <!--modal​ add-------------------------------------------------------------------------------------------------------------------------->

                        <div class="modal fade" id="add" role="dialog">
                            <div class="modal-dialog" id="content">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Add New</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <form ng-submit="addProduct()"  my-filter>
                                                <span>Name</span><input type="type" ng-model="name"  class="form-control" placeholder="Product name"><br>
                                                <span>Type</span>
                                                <select  class="form-control" ng-model="catid" style="padding-left:6px;">
                                                    <option  ng-repeat="cat in category| filter: listOnlySubCategory('parent_id', 0)" value="{{cat.cat_id}}" >
                                                        {{cat.name}}
                                                    </option>
                                                </select>
                                                <br>
                                                <span>Brand</span>
                                                <select  class="form-control" ng-model="brandid" style="padding-left:6px;">
                                                    <option  ng-repeat="bra in brand" value="{{bra.brand_id}}">
                                                        {{bra.name}} 
                                                    </option>
                                                </select>
                                                <br>
                                                <span>Product Info</span><textarea class="form-control"  ng-model="proinfo" placeholder="Product information"> </textarea><br>
                                                <span>Image</span> <input type="file" id="img" name="file[]"  multiple>

                                                <!--<a href="" ng-click="addProduct()" type="button" id="add" class="btn btn-success" data-toggle="modal" data-target="#upload_img">Add</a>-->
                                                <input type="submit" class="btn btn-default"  value="Add"/>
                                            </form>
                                            <!--<a href="" ng-click="addProduct()" type="button" id="add" class="btn btn-success" data-toggle="modal" data-target="#upload_img">Add</a>-->
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
                                        <h4 class="modal-title">Update Product</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <span>Product Name</span><input type="type" ng-model="name"  class="form-control" placeholder="Product name"><br>
                                            <span>Category </span>
                                            <!--						<select  class="form-control" ng-model="catid" style="padding-left:6px;">
                                                                                                                                                                 <option  ng-repeat="cat in category | filter: listOnlyMainCategory('parent_id', 0)" value="{{cat.cat_id}}" >
                                                                                                                                                                         {{cat.name}} {{own.lastname}}
                                                                                                                                                                   </option>
                                                                                                                                                         </select>-->
                                            <select  class="form-control" ng-model="catid"style="padding-left:8px; padding-top: 2px;" 
                                                     ng-options="cat.cat_id as cat.name for cat in category">
                                            </select><br>
                                            <br>
                                            <span>Brand</span>
                                            <!--                                                                                                                <select  class="form-control" ng-model="brandid" style="padding-left:6px;">
                                                                                                                                                                 <option  ng-repeat="bra in brand" value="{{bra.brand_id}}">
                                                                                                                                                                         {{bra.name}} 
                                                                                                                                                                   </option>
                                                                                                                                                         </select>-->
                                            <select  class="form-control" ng-model="brandid" style="padding-left:8px; padding-top: 2px;" 
                                                     ng-options="bra.brand_id as bra.name for bra in brand">
                                            </select><br>
                                            <br>
                                            <span>Product Info</span><input type="text" class="form-control"  ng-model="proinfo" placeholder="Product information"><br>
                                            <a href="" ng-click="updateProduct()" class="btn btn-success" >Update</a>
                                            <button type="button" class="btn btn-default" id="btnclose" data-dismiss="modal">Close</button>
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
                            <h1 >Product Manager</h1>
                            <div >
                                
                               <div class="table-responsive" style="border:none;">
                                   <h3 class="pull-left"></h3>
                                     <span>By Name : </span><input   ng-model="searchProName" style=" height: 30px; " placeholder=" product name">
                                    <span>By Category : </span>
                                    <select ng-model="searchBra"style="padding-left:8px; height: 30px;" ng-change="searchAuctions()"
                                             ng-options="bra.brand_id as bra.name for bra in brand">
                                     </select>
                                   <button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#add"  >Add Product</button>
                               <table class="table table-striped jambo_table bulk_action">
                               <thead
                                 <tr​​>
                                     <th>No </th>
                                     <th >PID </th>
                                     <th >Name </th>
                                     <th >Brand </th>
                                     <th >Category </th>
                                     <th >Information </th>
                                     <th >Action </th>
                                 </tr
                               </thead>
                               <tbody>
                                 <tr ng-repeat="pro in products | orderBy:'pro_id':'reverse':'DESC' ">	   
                                    <td>{{$index+1}} </td>
                                    <td>{{pro.pro_id}}</td>
                                    <td>{{pro.name}}</td>
                                    <td>{{pro.brand_id}} </td>
                                    <td>{{pro.cat_id}}</td>
                                    <td>{{pro.pro_info}}</td>		    
                                   <td>
                                    <a href="" ng-click="getProductObject(this)" class='btn btn-success btn-sm' data-toggle='modal' data-target='#update'>Update</a>
                                     <a href="" ng-click="deleteProduct(pro.pro_id)"  class='btn btn-danger btn-sm'>Delete</a>
                                   </td>
                                  </tr>
                                 </tbody>
                               </table>
                             </div>
                             <div   id="pagination" class="pull-right" ></div> 
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
<script src="${pageContext.request.contextPath }/resources/admin/js/angular/productApp.js"></script>
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

<!-- Image Upload -->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/imageupload/fancybox/source/jquery.fancybox.js?v=2.1.5"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/imageupload/fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/imageupload/js/jquery.filer.js?v=1.0.5"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/imageupload/js/custom.js?v=1.0.5"></script>

<script type="text/javascript">
        $(".filer-fancybox").fancybox({
            padding: 0,

            openEffect : 'elastic',
            openSpeed  : 150,

            closeEffect : 'elastic',
            closeSpeed  : 150,

            closeClick : true,

            helpers : {
                overlay : null
            }
        });
    </script>

<script>
//        function fullDate() {
//                
//                var date = new Date(milis);
//                var dateToStr = date.toUTCString().split(' ');
//                var cleanDate =dateToStr[3] + ' ' + dateToStr[2]+ ' ' + dateToStr[1];
//               
//        }
                                                            $(document).ready(function () {
                                                                var handleDataTableButtons = function () {
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

                                                                TableManageButtons = function () {
                                                                    "use strict";
                                                                    return {
                                                                        init: function () {
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
