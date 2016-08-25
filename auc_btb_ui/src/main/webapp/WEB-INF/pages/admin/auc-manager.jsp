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
      <div class="main_container"  ng-app="AuctionApp">
        <!-- top navigation -->
         <%@ include file="left-side.jsp" %>
        <!-- /top navigation -->
         <div class="clearfix"></div>
        <!-- page content -->
        <div class="right_col" role="main" >
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
                </select>                <br>
                                    <span>Product</span>
	   	<select  class="form-control" ng-model="proid" style="padding-left:6px;" 
                                             ng-options="pro.pro_id as pro.name for pro in products">
        		</select><br>
	   	<span>Condition</span><input type="text" ng-model="productcondition"  class="form-control" placeholder="condition"><br>
	   	<span>Started Price</span><input type="number" class="form-control"  ng-model="startprice" placeholder="starting price"><br>
	   	<span>Buy Price</span><input type="number" ng-model="buyprice"  class="form-control" placeholder="buy price"><br>
	   	<span>Bid Increase Price</span><input type="number" class="form-control"  ng-model="bidincrementprice" placeholder="increase price per bid"><br>
	   	<span>Current Price</span><input type="number" ng-model="currentprice"  class="form-control" placeholder="current price"><br>
	   	<span>Started Date</span><input type="date" class="form-control"  ng-model="startdate" placeholder="starting date"><br>
	   	<span>End Date</span><input type="date" ng-model="enddate" class="form-control" placeholder="end date"><br>
	   	<span>User ID</span><input type="number" class="form-control"  ng-model="usrid" placeholder="userid"><br>
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
                                <h4 class="modal-title" ><ul class="fa-facebook">Update Auction</ul> </h4>
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
	   	<span>Condition</span><input type="text" ng-model="productcondition"  class="form-control" placeholder="condition"><br>
	   	<span>Started Price</span><input type="number" class="form-control"  ng-model="startprice" placeholder="starting price"><br>
	   	<span>Buy Price</span><input type="number" ng-model="buyprice"  class="form-control" placeholder="buy price"><br>
	   	<span>Bid Increase Price</span><input type="number" class="form-control"  ng-model="bidincrementprice" placeholder="increase price per bid"><br>
	   	<span>Current Price</span><input type="number" ng-model="currentprice"  class="form-control" placeholder="current price"><br>
	   	<span>Started Date</span><input type="text" class="form-control"  ng-model="startdate" placeholder="starting date"><br>
	   	<span>End Date</span><input type="text" ng-model="enddate" class="form-control" placeholder="end date"><br>
	   	<span>User ID</span><input type="number" class="form-control"  ng-model="usrid" placeholder="userid"><br>			
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
                                   <div class="form-group">
                                       <span>By Name : </span><input   ng-model="searchName" ng-change="searchAuctions()" style=" height: 30px; " placeholder="product name">
                                     <span>By Category : </span><select ng-model="searchCat"style="padding-left:8px; height: 30px;" ng-change="searchAuctions()"
                                                       ng-options="cat.cat_id as cat.name for cat in category | filter: listOnlySubCategory('parent_id', 0)">
                                       </select>
                                       <button  ng-json-export-excel data="auctions" report-fields="{auc_id: 'Auction ID', firstname: 'Supplier firstname', lastname: 'Supplier lastname', phone: 'Supplier phone', name: 'Product name', product_condition: 'Product condition', current_price: 'Current price', start_date: 'Start Date', end_date: 'End Date'}" filename="'Auction Report'" class="btn-sm btn-primary">Export Excel</button>
                                       <button type="button" style="margin-top:5px; margin-left:1px; height: 30px;" id="print">Print</button>
                                       <button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#add"  >Add Auction Item</button>
                                   </div>
                              
                                  
                                   <table class="table table-striped jambo_table bulk_action" id="tblauction">
                               <thead
                                 <tr​​>
                                     
                                     <th >AuctID </th>
                                     <th >Owner </th>
                                     <th >Product </th>
                                     
                                     
                                     
                                     <th >Number of Bids</th>
                                     <th >Current Price </th>
                                     <th >Start Date </th>
                                     <th >End Date </th>
                                     
                                     <th >Action </th>
                                 </tr
                               </thead>
                               <tbody>
                                 <tr ng-repeat="au in auctions | orderBy:'auc_id':'reverse':'DESC' ">	   
                                    
                                    <td>{{au.auc_id}}</td>
                                    <td>{{au.firstname}} {{au.lastname}}</td>
                                    <td>{{au.name}} </td>
                                    		    
                                    
                                    
                                    <td>{{au.number_of_bids}}</td>
                                    <td >{{au.current_price}} </td>
                                   <td >{{au.start_date  | date:'medium'}} </td>
                                   <td >{{au.end_date  | date:'medium'}} </td>
                                   
                                   
                                   <td>
                                    <a href="" ng-click="getCurrentObject(this)" class='btn btn-success btn-sm' data-toggle='modal' data-target='#update'>Update</a>
                                     <a href="" ng-click="deleteAuction(au.auc_id)"  class='btn btn-danger btn-sm'>Delete</a>
                                     <a href="${pageContext.request.contextPath }/auc-admin/manage/info/{{au.auc_id}}" target="_new"  class='btn btn-info btn-sm'>View</a>
                                     
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
    <script src="${pageContext.request.contextPath }/resources/admin/js/angular/angular.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/js/angular/auctionApp.js"></script>
        
    <!--Export to excel-->
    <script src="${pageContext.request.contextPath }/resources/admin/js/excel/json-export-excel.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/js/excel/FileSaver.js"></script>
        
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

    <!--pop up product detail-->
    <script src="${pageContext.request.contextPath }/resources/js/jquery.colorbox.js"></script>
    <script>
      $(document).ready(function() {
        function printData()
            {
               var divToPrint=document.getElementById("tblauction");
               newWin= window.open("");
               newWin.document.write(divToPrint.outerHTML);
               newWin.print();
               newWin.close();
            }

            $('#print').on('click',function(){
            printData();
            });
      });
    </script>
    
  </body>
</html>
