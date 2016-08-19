<%-- 
    Document   : auction
    Created on : Aug 3, 2016, 9:09:11 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" ng-app="app">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>K-Auction</title>
    
	<!-- iCheck -->
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- jVectorMap -->
    <link href="${pageContext.request.contextPath }/resources/admin/css/maps/jquery-jvectormap-2.0.3.css" rel="stylesheet"/>
    <!-- bootstrap-wysiwyg -->
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/resources/build/css/custom.css" rel="stylesheet">
     <!-- starrr -->
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="${pageContext.request.contextPath }/resources/admin/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/build/css/auction.css" rel="stylesheet">
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
			
            <script>
                var auc_id = '${id}';
            </script>
              
          <div class="row" ng-controller="ctrl">
                     <h1 >Auction History</h1>
                     <hr>
                     <div>
                            <div>
                                <h4>Product Information</h4>
                                <hr>
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Product Name:</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].pro_name" class="form-control" readonly/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Product Infomation: </label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].pro_info" class="form-control" readonly/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Product Condition: </label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].pro_condition" class="form-control" readonly/>
                                        </div>
                                    </div>
                                </form>
                                <hr>
                           </div>
                            <div>
                                <h4>Product Owner Information</h4>
                                <hr>
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Owner Firstname:</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].owner_firstname" class="form-control" readonly/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Owner Lastname: </label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].owner_lastname" class="form-control" readonly/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Owner Phone: </label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].owner_phone" class="form-control" readonly/>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Owner Email: </label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].owner_email" class="form-control" readonly/>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Owner Address: </label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].owner_address" class="form-control" readonly/>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Owner Company Profile </label>
                                        <div class="col-sm-8">
                                            <textarea ng-model="auction[0].owner_com_profile" class="form-control" readonly></textarea>
                                        </div>
                                    </div>
                                </form>
                                <hr>
                            </div>
                            
                            <div>
                                <h4>Auction Information</h4>
                                <hr>
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Start Price: </label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].auc_start_price | currency:'$ ':0" class="form-control" readonly/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Buy Price: </label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].auc_buy_price | currency:'$ ':0" class="form-control" readonly/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Bid Increment: </label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].auc_bid_increment | currency:'$ ':0" class="form-control" readonly/>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Current Price: </label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].auc_current_price | currency:'$ ':0" class="form-control" readonly/>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Start Date: </label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].auc_start_date | date:'medium'" class="form-control" readonly/>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">End Date: </label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="auction[0].auc_end_date | date:'medium'" class="form-control" readonly/>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            
                            <div>
                                <h4>Bidding History</h4>
                                <hr>
                                <table class="table table-striped jambo_table bulk_action">
                               <thead
                                 <tr​​> 
                                     <th >Bidder</th>
                                     <th >Phone</th>
                                     <th >Email</th>
                                     <th >Bid Date</th>     
                                 </tr
                               </thead>
                               <tbody>
                                 <tr ng-repeat="au in auction | orderBy:'bid_date':'reverse':'DESC' ">	   
                                   
                                    <td>{{au.user_lastname}} {{au.user_firstname}}</td>
                                    <td>{{au.user_phone}}</td>
                                    <td>{{au.user_email}} </td> 
                                    <td >{{au.bid_date   | date:'medium'}}</td>                           
                                  </tr>
                                 </tbody>
                               </table>
                              
                                <div id="pagination" class="pull-right"></div>
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
    <!-- Chart.js -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- jQuery Sparklines -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <!-- Flot -->
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/Flot/jquery.flot.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/Flot/jquery.flot.time.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="${pageContext.request.contextPath }/resources/admin/js/flot/jquery.flot.orderBars.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/js/flot/date.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/js/flot/jquery.flot.spline.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/js/flot/curvedLines.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="${pageContext.request.contextPath }/resources/admin/js/moment/moment.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin/js/datepicker/daterangepicker.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="${pageContext.request.contextPath }/resources/build/js/custom.min.js"></script>

    <!-- Flot -->
    <!-- angular app -->
<!--        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>-->
        <script src="${pageContext.request.contextPath }/resources/admin/js/angular/angular.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/admin/js/angular/auction_history.js"></script>
        <!-- boot page -->
        <script src="${pageContext.request.contextPath }/resources/js/jquery.bootpag.min.js"></script>
    <!-- angular app -->
    <script>
      $(document).ready(function() {
        //define chart clolors ( you maybe add more colors if you want or flot will add it automatic )
        var chartColours = ['#96CA59', '#3F97EB', '#72c380', '#6f7a8a', '#f7cb38', '#5a8022', '#2c7282'];

        //generate random number for charts
        randNum = function() {
          return (Math.floor(Math.random() * (1 + 40 - 20))) + 20;
        };

        var d1 = [];
        //var d2 = [];

        //here we generate data for chart
        for (var i = 0; i < 30; i++) {
          d1.push([new Date(Date.today().add(i).days()).getTime(), randNum() + i + i + 10]);
          //    d2.push([new Date(Date.today().add(i).days()).getTime(), randNum()]);
        }

        var chartMinDate = d1[0][0]; //first day
        var chartMaxDate = d1[20][0]; //last day

        var tickSize = [1, "day"];
        var tformat = "%d/%m/%y";

        //graph options
        var options = {
          grid: {
            show: true,
            aboveData: true,
            color: "#3f3f3f",
            labelMargin: 10,
            axisMargin: 0,
            borderWidth: 0,
            borderColor: null,
            minBorderMargin: 5,
            clickable: true,
            hoverable: true,
            autoHighlight: true,
            mouseActiveRadius: 100
          },
          series: {
            lines: {
              show: true,
              fill: true,
              lineWidth: 2,
              steps: false
            },
            points: {
              show: true,
              radius: 4.5,
              symbol: "circle",
              lineWidth: 3.0
            }
          },
          legend: {
            position: "ne",
            margin: [0, -25],
            noColumns: 0,
            labelBoxBorderColor: null,
            labelFormatter: function(label, series) {
              // just add some space to labes
              return label + '&nbsp;&nbsp;';
            },
            width: 40,
            height: 1
          },
          colors: chartColours,
          shadowSize: 0,
          tooltip: true, //activate tooltip
          tooltipOpts: {
            content: "%s: %y.0",
            xDateFormat: "%d/%m",
            shifts: {
              x: -30,
              y: -50
            },
            defaultTheme: false
          },
          yaxis: {
            min: 0
          },
          xaxis: {
            mode: "time",
            minTickSize: tickSize,
            timeformat: tformat,
            min: chartMinDate,
            max: chartMaxDate
          }
        };
        var plot = $.plot($("#placeholder33x"), [{
          label: "Email Sent",
          data: d1,
          lines: {
            fillColor: "rgba(150, 202, 89, 0.12)"
          }, //#96CA59 rgba(150, 202, 89, 0.42)
          points: {
            fillColor: "#fff"
          }
        }], options);
      });
    </script>
    <!-- /Flot -->

    <!-- jQuery Sparklines -->
    <script>
      $(document).ready(function() {
        $(".sparkline_one").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 4, 5, 6, 3, 5, 4, 5, 4, 5, 4, 3, 4, 5, 6, 7, 5, 4, 3, 5, 6], {
          type: 'bar',
          height: '125',
          barWidth: 13,
          colorMap: {
            '7': '#a1a1a1'
          },
          barSpacing: 2,
          barColor: '#26B99A'
        });

        $(".sparkline11").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 6, 2, 4, 3, 4, 5, 4, 5, 4, 3], {
          type: 'bar',
          height: '40',
          barWidth: 8,
          colorMap: {
            '7': '#a1a1a1'
          },
          barSpacing: 2,
          barColor: '#26B99A'
        });

        $(".sparkline22").sparkline([2, 4, 3, 4, 7, 5, 4, 3, 5, 6, 2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 6], {
          type: 'line',
          height: '40',
          width: '200',
          lineColor: '#26B99A',
          fillColor: '#ffffff',
          lineWidth: 3,
          spotColor: '#34495E',
          minSpotColor: '#34495E'
        });
      });
    </script>
    <!-- /jQuery Sparklines -->

    <!-- Doughnut Chart -->
    <script>
      $(document).ready(function() {
        var canvasDoughnut,
            options = {
              legend: false,
              responsive: false
            };

        new Chart(document.getElementById("canvas1i"), {
          type: 'doughnut',
          tooltipFillColor: "rgba(51, 51, 51, 0.55)",
          data: {
            labels: [
              "Symbian",
              "Blackberry",
              "Other",
              "Android",
              "IOS"
            ],
            datasets: [{
              data: [15, 20, 30, 10, 30],
              backgroundColor: [
                "#BDC3C7",
                "#9B59B6",
                "#E74C3C",
                "#26B99A",
                "#3498DB"
              ],
              hoverBackgroundColor: [
                "#CFD4D8",
                "#B370CF",
                "#E95E4F",
                "#36CAAB",
                "#49A9EA"
              ]

            }]
          },
          options: options
        });

        new Chart(document.getElementById("canvas1i2"), {
          type: 'doughnut',
          tooltipFillColor: "rgba(51, 51, 51, 0.55)",
          data: {
            labels: [
              "Symbian",
              "Blackberry",
              "Other",
              "Android",
              "IOS"
            ],
            datasets: [{
              data: [15, 20, 30, 10, 30],
              backgroundColor: [
                "#BDC3C7",
                "#9B59B6",
                "#E74C3C",
                "#26B99A",
                "#3498DB"
              ],
              hoverBackgroundColor: [
                "#CFD4D8",
                "#B370CF",
                "#E95E4F",
                "#36CAAB",
                "#49A9EA"
              ]

            }]
          },
          options: options
        });

        new Chart(document.getElementById("canvas1i3"), {
          type: 'doughnut',
          tooltipFillColor: "rgba(51, 51, 51, 0.55)",
          data: {
            labels: [
              "Symbian",
              "Blackberry",
              "Other",
              "Android",
              "IOS"
            ],
            datasets: [{
              data: [15, 20, 30, 10, 30],
              backgroundColor: [
                "#BDC3C7",
                "#9B59B6",
                "#E74C3C",
                "#26B99A",
                "#3498DB"
              ],
              hoverBackgroundColor: [
                "#CFD4D8",
                "#B370CF",
                "#E95E4F",
                "#36CAAB",
                "#49A9EA"
              ]

            }]
          },
          options: options
        });
      });
    </script>
    <!-- /Doughnut Chart -->












    <!-- bootstrap-daterangepicker -->
    <script type="text/javascript">
      $(document).ready(function() {

        var cb = function(start, end, label) {
          console.log(start.toISOString(), end.toISOString(), label);
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        };

        var optionSet1 = {
          startDate: moment().subtract(29, 'days'),
          endDate: moment(),
          minDate: '01/01/2012',
          maxDate: '12/31/2015',
          dateLimit: {
            days: 60
          },
          showDropdowns: true,
          showWeekNumbers: true,
          timePicker: false,
          timePickerIncrement: 1,
          timePicker12Hour: true,
          ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
          },
          opens: 'left',
          buttonClasses: ['btn btn-default'],
          applyClass: 'btn-small btn-primary',
          cancelClass: 'btn-small',
          format: 'MM/DD/YYYY',
          separator: ' to ',
          locale: {
            applyLabel: 'Submit',
            cancelLabel: 'Clear',
            fromLabel: 'From',
            toLabel: 'To',
            customRangeLabel: 'Custom',
            daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
            monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
            firstDay: 1
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
    <!-- /bootstrap-daterangepicker -->
  </body>
</html>
