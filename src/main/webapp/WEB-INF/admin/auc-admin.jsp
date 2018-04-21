<%-- 
    Document   : auc-admin
    Created on : Aug 3, 2016, 9:07:01 AM
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

    <title>K-Auction | Dashboard</title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- jVectorMap -->
    <link href="css/maps/jquery-jvectormap-2.0.3.css" rel="stylesheet"/>

    <!-- Custom Theme Style -->
    <link href="build/css/custom.css" rel="stylesheet">
    
    <link href="build/css/auction.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="au-admin.html" class="site_title"><i class="fa fa-paw"></i> <span>K-Auction</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
               <img src="production/images/img.jpg" alt="..." class="img-circle profile_img"/>
              </div>
              <div class="profile_info">
                <span>សូមស្វាគមន៍,</span>
                <h2>ទិត្យ គុយលីម</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br/>

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> ទំព័រដើម <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="au-admin.html">ផ្ទាំងគ្រប់គ្រង</a></li>
                    </ul>
                  </li>
                  <li><a href="production/user.html"><i class="fa fa-user"></i>អ្នកប្រើប្រាស់</a></li>
                  <li><a><i class="fa fa-edit"></i> ប្រភេទផលិតផល <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">គ្រឿងអេឡិចត្រូនិច <span class="fa fa-chevron-down"></span></a>
                      	<ul class="nav child_menu">
                          <li><a href="#">ទូរស័ព្ទ</a></li>
                          <li><a href="#">កុំព្យូទ័រ</a></li>
                          <li><a href="#">ម៉ាស៊ីនបោកខោអាវ</a></li>
                          <li><a href="#">ទូទឹកកក</a></li>
                          <li><a href="#">ម៉ាស៊ីនត្រជាក់</a></li>
                        </ul>
                      </li>
                      <li><a href="#">យានយន្ដ <span class="fa fa-chevron-down"></span></a>
                      	<ul class="nav child_menu">
                          <li><a href="#">រថយន្ដ</a></li>
                          <li><a href="#">ម៉ូតូ</a></li>
                        </ul>
                      </li>
                      <li><a href="#">អចលនទ្រព្យ <span class="fa fa-chevron-down"></span></a>
                      	<ul class="nav child_menu">
                          <li><a href="#">ដីលូ</a></li>
                          <li><a href="#">ផ្ទះល្វែង</a></li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                  <li><a href="production/product.html"><i class="fa fa-legal"></i>ផលិតផល</a></li>
                  <li><a href="production/auction.html"><i class="fa fa-plus"></i>ដាក់ផលិតផលដេញថ្លៃ</a>
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
                    <img src="production/images/img.jpg" alt="">ទិត្យ គុយលីម
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

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="row top_tiles">
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-caret-square-o-right"></i></div>
                  <div class="count">179</div>
                  <p></p>
                  <h4>អ្នកចុះឈ្មោះថ្មី</h4>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-comments-o"></i></div>
                  <div class="count">500</div>
                  <p></p>
                  <h4>អ្នកប្រើប្រាស់សរុប</h4>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-sort-amount-desc"></i></div>
                  <div class="count">179</div>
                  <p></p>
                  <h4>ផលិតផលដាក់ដេញថ្លៃ</h4>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-check-square-o"></i></div>
                  <div class="count">50</div>
                  <p></p>
                  <h4>ផលិតផលចប់ការដេញថ្លៃ</h4>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-4">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Top Profiles </h2>
                    <div class="x_content ">
                  <!--  <ul class="nav navbar-right panel_toolbox">-->
                    	<!--<ul class="list-unstyled top_profiles scroll-view">-->
                          <article class="media event">
                            <a class="pull-left border-aero profile_thumb">
                              <i class="fa fa-user aero"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">ទិត្យ គុយលីម</a>
                              <p>ចំនាយអស់ <strong>2300 Credit </strong>ក្នុងថ្ងៃនេះ</p>
                              <p> <small>បាន Bids ចំនួន 12 ដង</small>
                              </p>
                            </div>
                          </article>
                          <article class="media event">
                            <a class="pull-left border-green profile_thumb">
                              <i class="fa fa-user green"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">ជុន ចំរើន</a>
                              <p>ចំនាយអស់ <strong>2300 Credit </strong>ក្នុងថ្ងៃនេះ</p>
                              <p> <small>បាន Bids ចំនួន 12 ដង</small>
                              </p>
                            </div>
                          </article>
                          <article class="media event">
                            <a class="pull-left border-blue profile_thumb">
                              <i class="fa fa-user blue"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">ជា ណាវី</a>
                              <p>ចំនាយអស់ <strong>2300 Credit </strong>ក្នុងថ្ងៃនេះ</p>
                              <p> <small>បាន Bids ចំនួន 12 ដង</small>
                              </p>
                            </div>
                          </article>
                          <article class="media event">
                            <a class="pull-left border-aero profile_thumb">
                              <i class="fa fa-user aero"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">ស៊ីម វិច្ឋិរា</a>
                              <p>ចំនាយអស់ <strong>2300 Credit </strong>ក្នុងថ្ងៃនេះ</p>
                              <p> <small>បាន Bids ចំនួន 12 ដង</small>
                              </p>
                            </div>
                          </article>
                          <article class="media event">
                            <a class="pull-left border-green profile_thumb">
                              <i class="fa fa-user green"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">ងាន ឋានៈ</a>
                              <p>ចំនាយអស់ <strong>2300 Credit </strong>ក្នុងថ្ងៃនេះ</p>
                              <p> <small>បាន Bids ចំនួន 12 ដង</small>
                              </p>
                            </div>
                          </article>
                        <!--</ul>-->
 					<!--</ul>-->
                    </div>
                    <div class="clearfix"></div>
                  </div>

                </div>
              </div>
              
              <div class="col-md-4">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Top Product</h2>
                    <div class="x_content">
                    <!--<ul class="nav navbar-right panel_toolbox">
                    	<ul class="list-unstyled top_profiles scroll-view">-->
                          <article class="media event">
                          <a class="pull-left border-green profile_thumb">
                              <i class="fa fa-legal"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">Galaxy S6</a>
                              <p>ទទួលការ bid ចំនួន <strong>50 ដង</strong></p>
                              <p> <small>នៅសល់ 7 ថ្ងៃទៀត ចប់ការដេញថ្លៃ</small>
                              </p>
                            </div>
                          </article>
                          <article class="media event">
                            <a class="pull-left border-green profile_thumb">
                              <i class="fa fa-legal"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">Galaxy S6</a>
                              <p>ទទួលការ bid ចំនួន <strong>50 ដង</strong></p>
                              <p> <small>នៅសល់ 7 ថ្ងៃទៀត ចប់ការដេញថ្លៃ</small>
                              </p>
                            </div>
                          </article>
                          <article class="media event">
                            <a class="pull-left border-green profile_thumb">
                              <i class="fa fa-legal"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">Galaxy S6</a>
                              <p>ទទួលការ bid ចំនួន <strong>50 ដង</strong></p>
                              <p> <small>នៅសល់ 7 ថ្ងៃទៀត ចប់ការដេញថ្លៃ</small>
                              </p>
                            </div>
                          </article>
                          <article class="media event">
                            <a class="pull-left border-green profile_thumb">
                              <i class="fa fa-legal"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">Galaxy S6</a>
                              <p>ទទួលការ bid ចំនួន <strong>50 ដង</strong></p>
                              <p> <small>នៅសល់ 7 ថ្ងៃទៀត ចប់ការដេញថ្លៃ</small>
                              </p>
                            </div>
                          </article>
                          <article class="media event">
                            <a class="pull-left border-green profile_thumb">
                              <i class="fa fa-legal"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">Galaxy S6</a>
                              <p>ទទួលការ bid ចំនួន <strong>50 ដង</strong></p>
                              <p> <small>នៅសល់ 7 ថ្ងៃទៀត ចប់ការដេញថ្លៃ</small>
                              </p>
                            </div>
                          </article>
               <!--         </ul>
 					</ul>-->
                    </div>
                    <div class="clearfix"></div>
                  </div>

                </div>
              </div>
              
              <div class="col-md-4">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Lowest Product</h2>
                    <div class="x_content">
                   <!-- <ul class="nav navbar-right panel_toolbox">
                    	<ul class="list-unstyled top_profiles scroll-view">-->
                          <article class="media event">
                            <a class="pull-left border-green profile_thumb">
                              <i class="fa fa-legal"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">Iphone 6</a>
                              <p>ទទួលការ bid ចំនួន <strong>0 ដង</strong></p>
                              <p> <small>នៅសល់ 7 ថ្ងៃទៀត ចប់ការដេញថ្លៃ</small>
                              </p>
                            </div>
                          </article>
                          <article class="media event">
                            <a class="pull-left border-green profile_thumb">
                              <i class="fa fa-legal"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">Iphone 6</a>
                              <p>ទទួលការ bid ចំនួន <strong>0 ដង</strong></p>
                              <p> <small>នៅសល់ 7 ថ្ងៃទៀត ចប់ការដេញថ្លៃ</small>
                              </p>
                            </div>
                          </article>
                          <article class="media event">
                            <a class="pull-left border-green profile_thumb">
                              <i class="fa fa-legal"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">Iphone 6</a>
                              <p>ទទួលការ bid ចំនួន <strong>0 ដង</strong></p>
                              <p> <small>នៅសល់ 7 ថ្ងៃទៀត ចប់ការដេញថ្លៃ</small>
                              </p>
                            </div>
                          </article>
                          <article class="media event">
                            <a class="pull-left border-green profile_thumb">
                              <i class="fa fa-legal"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">Iphone 6</a>
                              <p>ទទួលការ bid ចំនួន <strong>0 ដង</strong></p>
                              <p> <small>នៅសល់ 7 ថ្ងៃទៀត ចប់ការដេញថ្លៃ</small>
                              </p>
                            </div>
                          </article>
                          <article class="media event">
                            <a class="pull-left border-green profile_thumb">
                              <i class="fa fa-legal"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">Iphone 6</a>
                              <p>ទទួលការ bid ចំនួន <strong>0 ដង</strong></p>
                              <p> <small>នៅសល់ 7 ថ្ងៃទៀត ចប់ការដេញថ្លៃ</small>
                              </p>
                            </div>
                          </article>
               <!--         </ul>
 					</ul>-->
                    </div>
                    <div class="clearfix"></div>
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
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- jQuery Sparklines -->
    <script src="vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <!-- Flot -->
    <script src="vendors/Flot/jquery.flot.js"></script>
    <script src="vendors/Flot/jquery.flot.pie.js"></script>
    <script src="vendors/Flot/jquery.flot.time.js"></script>
    <script src="vendors/Flot/jquery.flot.stack.js"></script>
    <script src="vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="production/js/flot/jquery.flot.orderBars.js"></script>
    <script src="production/js/flot/date.js"></script>
    <script src="production/js/flot/jquery.flot.spline.js"></script>
    <script src="production/js/flot/curvedLines.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="production/js/moment/moment.min.js"></script>
    <script src="production/js/datepicker/daterangepicker.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>

    <!-- Flot -->
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
