
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Product Details | K-Auction</title>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
    <link href=${pageContext.request.contextPath }/resources/"css/animate.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">
	

    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-57-precomposed.png">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mystyle.css">
   	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/auction.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/account.css">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +855 92 391 577</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> kuylim.tith@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index"><img src="images/home/logochange.gif" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="account"><i class="fa fa-user"></i> គណនីយ</a></li>
								<li><a href="wishlist"><i class="fa fa-star"></i> របស់ដែលអ្នកប្រាថ្នា</a></li>
								<li><a href="cart"><i class="fa fa-shopping-cart"></i> កន្រ្តក</a></li>
								<li><a href="login"><i class="fa fa-lock"></i> ចូលទៅកាន់</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index" class="active">ទំព័រដើម</a></li>
								<li class="dropdown"><a href="#">K-Auction<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.html">ផលិតផល</a></li> 
										<li><a href="login">ចូលទៅកាន់</a></li> 
                                    </ul>
                                </li> 
								<li><a href="contact-us">ទំនាក់ទំនង</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	<section>
		<div class="container">
		<div class="row ">

					<div class="col-sm-12"><img src="${pageContext.request.contextPath }/resources/images/home/logothanak1.jpg" alt="" style="height:250px; width:98.5%; margin-left:15px;"></div>
				</div>
			<div class="row">
				<div class="col-sm-12 padding-right">
					<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li><a href="#details" data-toggle="tab"​ style="color:white">ផលិតផលដែលអ្នកបានBid</a></li>
								<li><a href="#companyprofile" data-toggle="tab" style="color:white">ពត៍មានរបស់ខ្ញុំ</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade" id="details" >
									<div class="table-responsive cart_info">
				<table class="table table-condensed" style="border: 1px solid rgb(78, 156, 80); border-radius: 20px; ">
					<thead>
						<tr class="cart_menu" style=" background-color: rgb(78, 156, 80); color:white">
							<td class="image">ទំនិញ</td>
							<td class="description"></td>
							<td class="price">តំលៃ</td>
							<td class="quantity">ចំនួនការ BID</td>
							<td class="total">សរុប</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="cart_product">
								<a href=""><img src="${pageContext.request.contextPath }/resources/images/cart/one.png" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href="">អារនារីទាន់សម័យ</a></h4>
								<p>Web ID: 108977</p>
							</td>
							<td class="cart_price">
								<p>$59</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">$59</p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
							</td>
						</tr>

						<tr>
							<td class="cart_product">
								<a href=""><img src="${pageContext.request.contextPath }/resources/images/cart/two.png" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href="">អាវនារី សាំហ្គាពូ</a></h4>
								<p>Web ID: 1089772</p>
							</td>
							<td class="cart_price">
								<p>$59</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">$59</p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
							</td>
						</tr>
						<tr>
							<td class="cart_product">
								<a href=""><img src="${pageContext.request.contextPath }/resources/images/cart/three.png" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href="">អាវនារី​ Cool jean</a></h4>
								<p>Web ID: 1089772</p>
							</td>
							<td class="cart_price">
								<p>$59</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">$59</p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
							</div>
							
							<div class="tab-pane fade" id="companyprofile" >
								<div class="panel-group">
									<div class="panel panel-primary " style="border:1px solid rgb(78, 156, 80)">
								      <div class="panel-heading" style="background:rgb(78, 156, 80);">ការកំណត់ព័ត៌មានរបស់ខ្ញុំ</div>
								      <div class="panel-body">
								      	<div class="row">
								      		
								      		<div class=" col-sm-6">
								      			<form class="form-horizontal" role="form">
											    <div class="form-group">
											      <label class="control-label col-sm-4" for="email">ឈ្មោះអ្នកប្រើប្រាស់<sup>*</sup>:</label>
											      <div class="col-sm-8">
											        <input type="email" class="form-control" id="email" value="nganthanak@gmail.com">
											      </div><br>
											    </div>
											    <div class="form-group">
											      <label class="control-label col-sm-4" for="pwd">អ៊ីមែល<sup>*</sup>:</label>
											      <div class="col-sm-8">
											        <input type="password" class="form-control" id="pwd" value="1234567">
											      </div>
											    </div>
											   <div class="form-group">
													<label class="control-label col-sm-4 " for="pwd">នាយកដ្ឋាន<sup>*</sup>:</label>
													<div class="col-sm-8">
													 <select class="form-control" id="sel1">
												        <option>Computer Science</option>
												        <option>Administrator</option>
												        <option>IFL</option>
												        <option>NORTON</option>
												      </select>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-sm-4 " for="pwd">សាកលវិទ្យាល័យ*<sup>*</sup>:</label>
													<div class="col-sm-8">
													 <select class="form-control" id="sel1">
												        <option>RUPP</option>
												        <option>SETEC</option>
												        <option>IFL</option>
												        <option>NORTON</option>
												      </select>
													</div>
												</div>
												<div class="from-group">
											     <label class="control-label col-sm-4" for="pwd">ភេទ:</label>
											     <div class="col-sm-8">
												    <div class="radio​​ "​>
												      <label><input type="radio" name="optradio">ប្រុស</label>
												    </div>
												    <div class="radio">
												      <label><input type="radio" name="optradio">ស្រី</label>
												    </div>
											    </div>
											    </div>
											    <div class="form-group">
											      <label class="control-label col-sm-4" for="pwd">ថ្ងៃខែឆ្នាំកំណើត<sup>*</sup>:</label>
											      <div class="col-sm-8">
											        <input type="password" class="form-control">
											      </div>
											    </div>
											    <div class="form-group">
											      <label class="control-label col-sm-4" for="pwd">លេខទូរស័ព្ទ<sup>*</sup>:</label>
											      <div class="col-sm-8">
											        <input type="email" class="form-control">
											      </div>
											    </div>
											    <div class="form-group">
											      <div class="col-sm-offset-2 col-sm-10">
											        <button type="submit" class="btn btn-primary"​ style="background:rgb(78, 156, 80)">កែប្រែ</button>
											      </div>
											    </div>
											  </form>

								      		</div>

								      		<div class="col-sm-6">
								      			<div class=" col-sm-12 col-sm-offset-6"><img class="img-thumbnail" src="${pageContext.request.contextPath }/resources/images/home/thanak.jpg" alt="" style="width:130px;">
								      			 </div>
								      			 <div class="col-sm-12 col-sm-offset-6">
								      			 <button type="submit" class="btn btn-default "​ style="width:130px;">កែប្រែ</button>
								      			 </div>
								      		</div>
								      	</div>

								      </div>
								    </div>

								    
							    </div>
							</div>		
						</div>
					</div><!--/category-tab-->
					
				</div>
			</div>
		</div>

		<footer id="footer"><!--Footer-->
		<div class="footer-top">
			
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>សេវាកម្ម</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Online Help</a></li>
								<li><a href="contact-us">ទំនាក់ទំនងយើងខ្ញុំ</a></li>
								<!-- <li><a href="">កម្មង់</a></li> -->
								<li><a href="">ផ្លាស់ប្ដូរការដេញថ្លៃ</a></li>

								<!-- <li><a href="">FAQ’s</a></li> -->
							</ul>
						</div>
					</div>
					<!-- <div class="col-sm-2">
						<div class="single-widget">
							<h2>Quock Shop</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">T-Shirt</a></li>
								<li><a href="">Mens</a></li>
								<li><a href="">Womens</a></li>
								<li><a href="">Gift Cards</a></li>
								<li><a href="">Shoes</a></li>
							</ul>
						</div>
					</div> -->
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>គោលការណ៍</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">របៀបចូលរួមដេញថ្លៃ</a></li>
								<li><a href="">ដាក់ផលិតផលដេញថ្លៃ</a></li>
								<li><a href="">សេវាកម្ម</a></li>
								<!-- <li><a href="">Refund Policy</a></li>
								<li><a href="">Billing System</a></li>
								<li><a href="">Ticket System</a></li> -->
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>អំពីយើងខ្ញុំ</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">គេហទំព័ររបស់យើងខ្ញុំ</a></li>
									<li><a href="">ការផ្លស់ប្តូរ</a></li>
								<!-- <li><a href="">មុខងារ និងតួនាទី</a></li> -->
								<li><a href="https://www.google.com.kh/maps/place/Korea+Software+HRD+Center/@11.575766,104.889167,15z/data=!4m5!3m4!1s0x0:0x2c2974b77cdaff4b!8m2!3d11.575766!4d104.889167">ទីតាំង</a></li>
								<!-- <li><a href="">Affillate Program</a></li> -->
								<!-- <li><a href="">Copyright</a></li> -->
							</ul>
						</div>
					</div>
					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>អំពីលោកអ្នក</h2>
							<form action="#" class="searchform">
								<input type="text" placeholder="Email របស់លោកអ្នក" />
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
								<p>ទទួលបានការកែប្រែថ្មីៗរបស់<br />គេហទំព័ររបស់យើងខ្ញុំ </p>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2013 K-Auction. All rights reserved.</p>
					
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->


	</section>
	
	
	

  
    <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</body>
</html>