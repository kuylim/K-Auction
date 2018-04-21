<%-- 
    Document   : user
    Created on : Aug 3, 2016, 9:13:34 AM
    Author     : Kuylim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" ng-app="app">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Account | K-Auction</title>
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
        <script>
        var user_id = '${id}';
        </script>
        <div class="container body" ng-controller="ctrl">
            <div class="main_container">
                <!-- top navigation -->
                <%@ include file="left-side.jsp" %>
                <!-- /top navigation -->
                <div class="clearfix"></div>
                <!-- page content -->
                <div class="right_col" role="main" >
                    <div class="row" ng-cloak="cloak">
                            <h1 >Account</h1>
                            <div >
                                <div class="col-sm-3">
                                    <div class="panel panel-success ">
                                        <div class="panel-heading">.</div>
                                        <div class="panel-body tabbable tabs-left" id="rootwizard">
                                            <ul>
                                                <li><a href="#tab1" data-toggle="tab">Contact Information</a></li>
                                                <li><a href="#tab2" data-toggle="tab">Change Password</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-sm-9">
                                    <div class="panel panel-success">
                                        <div class="panel-heading">Information</div>
                                        <div class="panel-body">

                                            <div class="tab-content  ">
                                                <div class="tab-pane" id="tab1">
                                                    <form class="form-horizontal" role="form" ng-submit="updateUserInfo()">

                                                        <div class="form-group">
                                                            <label class="control-label col-sm-4">ID:</label>
                                                            <div class="col-sm-8">
                                                                <input type="text" class="form-control"  ng-model="user.cus_id" readonly>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="control-label col-sm-4">Firstname :</label>
                                                            <div class="col-sm-8">
                                                                <input type="text" class="form-control"  ng-model="user.firstname">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-sm-4">Lastname :</label>
                                                            <div class="col-sm-8">
                                                                <input type="text" class="form-control" ng-model="user.lastname">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-sm-4">Address :</label>
                                                            <div class="col-sm-8">
                                                                <input type="text" class="form-control" ng-model="user.address">
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="control-label col-sm-4">Phone :</label>
                                                            <div class="col-sm-8">
                                                                <input type="phone" class="form-control" ng-model="user.phone">
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="control-label col-sm-4">Email :</label>
                                                            <div class="col-sm-8">
                                                                <input type="email" class="form-control" ng-model="user.email">
                                                            </div>
                                                        </div>
                                                        <div class="form-group"> 
                                                            <div class="col-sm-offset-4 col-sm-8">
                                                                <button type="submit" class="btn btn-success">Update</button>
                                                            </div>
                                                        </div>

                                                    </form>
                                                </div>
                                                <div class="tab-pane" id="tab2">
                                                    <!--place ng-submit here-->
                                                    <form class="form-horizontal" role="form" ng-submit="updatePassword()">
                                                        <div class="form-group">
                                                            <label class="control-label col-sm-4" for="email">Old Password :</label>
                                                            <div class="col-sm-8">
                                                                <input type="password" class="form-control"  placeholder="Old Password" ng-model="usr.oldpassword">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-sm-4" for="pwd">New Password :</label>
                                                            <div class="col-sm-8"> 
                                                                <input type="password" class="form-control"  placeholder="New Password" ng-model="usr.password">
                                                            </div>
                                                        </div>

                                                        <div class="form-group"> 
                                                            <div class="col-sm-offset-4 col-sm-8">
                                                                <button type="submit" class="btn btn-success">Change</button>
                                                            </div>
                                                        </div>
                                                    </form>
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
                        <script src="${pageContext.request.contextPath }/resources/admin/js/angular/account_admin_app.js"></script>

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


                        <!--pop up product detail-->
                        <script src="${pageContext.request.contextPath }/resources/js/jquery.colorbox.js"></script>
    </body>
</html>
