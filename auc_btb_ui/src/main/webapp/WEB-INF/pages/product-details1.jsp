

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
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
    <link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
   <link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
      <link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">
    

    <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-57-precomposed.png">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mystyle.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/contactUs.css">

   <script type="text/javascript" src="${pageContext.request.contextPath }/resources/jsslide/jssor.slider.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/jsslide/myjs.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/images/motor/myslide.css">
   
    <style>
    	
		.cart,.view-product h3,.item-control i ,a#scrollUp,.recommended-item-control i,.searchform button,.nav-tabs  li.active  a, .nav-tabs  li.active  a:hover, .nav-tabs  li.active  a:focus,button.add-to-cart:hover,.searchform button:hover,.category-tab ul li a:hover,.category-tab ul li a:hover{
			background-color:  #009688;
		}
		.product-information span span,.left-sidebar h2, .brands_products h2,.productinfo h2,h2.title,.mainmenu ul li a:hover, .mainmenu ul li a.active, .shop-menu ul li a.active,.shop-menu ul li a:hover,.companyinfo h2  span,.footer-bottom p span a{
			color:#009688;
		}
		
		
		#similar-product img{
			width:85px;
			height: 84px;
		}
		.category-tab ul{
			border-bottom: 1px solid  #009688;
		}



		ul{
			list-style: none outside none;
		    padding-left: 0;
            margin: 0;
		}
        .demo .item{
            margin-bottom: 60px;
        }
		.content-slider li{
		    background-color: #ed3020;
		    text-align: center;
		    color: #FFF;
		}
		.content-slider h3 {
		    margin: 0;
		    padding: 70px 0;
		}
		.demo{
			width: 100%;
		}


    </style>

   	
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
                                                                                    <li><a href=""><i class="fa fa-dribbble"></i></a></li>
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
							<a href="index.html"><img src="${pageContext.request.contextPath }/resources/images/home/logochange.gif" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
						</div>
					</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
                                                                                                <ul class="nav navbar-nav">
                                                                                                        <li><a href="account"><i class="fa fa-user"></i> គណនីយ</a></li>
                                                                                                  
                                                                                                        <li><a href="login"><i class="fa fa-lock"></i> ចូលគណនីយ</a></li>
                                                                                                </ul>
					</div>
				</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
                                                                            <div class="col-sm-7">
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
                                                                                            <li><a href="index">ទំព័រដើម</a></li>
                                                                                            <li class="dropdown"><a href="#">K-Auction<em class="fa fa-angle-down"></em></a>
                                                                                              <ul role="menu" class="sub-menu">
                                                                                                     <li><a href="shop">ផលិតផល</a></li>
                                                                                                    <li><a href="login">ចូលគណនីយ</a></li> 
                                                                                                 </ul>
                                                                                             </li> 
                                                                                            <li> <a href="contactUs">ទំនាក់ទំនង</a></li>
                                                                                    </ul>
                                                                            </div>
				</div>
					
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	 
	 <div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		
	    		<div class="col-sm-12">    			   			
					<div class="col-sm-12 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-6" style="margin-top:50px;">
							
							 <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 800px; height: 456px; overflow: hidden; visibility: hidden; background-color: white;">
					        <!-- Loading Screen -->
					        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
					            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
					            <div style="position:absolute;display:block;background:url('${pageContext.request.contextPath }/resources/img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
					        </div>
					        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 800px; height: 356px; overflow: hidden;">
					            <div data-p="144.50" style="display: none;">
					                <img src="${pageContext.request.contextPath }/resources/images/motor/Untitled-1-Recovered.jpg">
					                <img data-u="thumb" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-3thumbnail.jpg" />
					            </div>
					            <div data-p="144.50" style="display: none;">
					                <img data-u="image" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-2-Recovered.jpg"/>
					                <img data-u="thumb" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-4thumbnail.jpg" />
					            </div>
					            <div data-p="144.50" style="display: none;">
					                <img data-u="image" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-3-Recovered.jpg" />
					                <img data-u="thumb" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-4thu.jpg" />
					            </div>
					            <div data-p="144.50" style="display: none;">
					                <img data-u="image" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-4-Recovered.jpg" />
					                <img data-u="thumb" src="${pageContext.request.contextPath }/resources/images/motor/Untitled-4thumbnal.jpg"/>
					            </div>
					           
					            <a data-u="add" href="http://www.jssor.com" style="display:none">Jssor Slider</a>
				              	        
					        </div>
					        <!-- Thumbnail Navigator -->
					        <div data-u="thumbnavigator" class="jssort01" style="position:absolute;left:0px;bottom:0px;width:800px;height:100px;" data-autocenter="1">
					            <!-- Thumbnail Item Skin Begin -->
					            <div data-u="slides" style="cursor: default;">
					                <div data-u="prototype" class="p">
					                    <div class="w">
					                        <div data-u="thumbnailtemplate" class="t"></div>
					                    </div>
					                    <div class="c"></div>
					                </div>
					            </div>
					            <!-- Thumbnail Item Skin End -->
					        </div>
					        <!-- Arrow Navigator -->
					        <span data-u="arrowleft" class="jssora05l" style="top:158px;left:8px;width:40px;height:40px;"></span>
					        <span data-u="arrowright" class="jssora05r" style="top:158px;right:8px;width:40px;height:40px;"></span>
					    </div>
							
						</div>

						<div class="col-sm-6">
							<div class="product-information"><!--/product-information-->
								<!-- <img src="images/product-details/new.jpg" class="newarrival" alt="" /> -->
								<h2>Samsung Galaxy S6 Edge</h2>
								<p>Web ID: 1089772</p>
								<span>
									<span>US $200</span>
									<button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Bid
									</button>
                                                                                                                                                                            <button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Buy now
									</button>
                                                                                                                                                         <button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to wishlist
									</button>
								</span>
                                                                                                                                <p><b>ចំនួននៃការ bid:</b> 5 bids</p>
								<p><b>ចំនួនៃថ្ងដែលនៅសល់:</b> នៅសល់ ៧ ថ្ងៃទៀត</p>
								<p><b>ស្ថានភាព:</b> ថ្មី ៩០%</p>
								<p><b>ម៉ាក:</b> Samsung</p>           
								<a href=""><img src="${pageContext.request.contextPath }/resources/images/product-details/share.png" class="share img-responsive"  alt="" /></a>
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
                    
                    
                                                                      <div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li><a href="#details" data-toggle="tab">Details</a></li>
								<li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade" id="details" >
								<p>This Galaxy S6 Edge is second hand from korea. bids or click buy now to get this product.</p>
                                                                                                                                    <h3>Specification</h3>
                                                                                                                                    <p>Technology: GSM/HSPA/LTE</p>
                                                                                                                                    <p>Resolution: 1440 x 2560 pixels</p>
                                                                                                                                    <p>CPU: Quad-core 1.5 GHz Cortex-A53 &amp; Quad-Core 2.1 GHz</p>
                                                                                                                                    <p>Internal: 32GB, 3 GB RAM</p>
                                                                                                                                    <p>Camera: 16 MP</p>
                                                                                                                                    <p>Sensors: Fingerprint, accelerometer, gyro, proximity, compass, barometer, heart rate, SpO2</p>
                                                                                                                                                                    <p>Battery: 2550 mah</p>
                                                                                                                                </div>
							
							<div class="tab-pane fade" id="companyprofile" >
							<p>Sokly Phone Shop Asia started its business in early 2000, located at #44, street 67, west of Phsar Thom Thmei, Phnom Penh. With the continued supports Sokly Phone Shop Asia has opened the second shop in early 2009 located at #395E0, street 128 KampucheaKrom , Phsar Depo 3, Phnom Penh.

Sokly Phone Shop Asia offers variety of phone products including the iPhone, Sony, Microsoft, Xiaomi , LG, Asus, Oppo, Samsung, Nokia, hTc, Motorola, Blackberry, Phillips , Smart watches and all types of phone accessories etc. with the most attractive update market price. All applications will be free to all customers who purchase phone products at Sokly Phone Shop Asia. The warranty will be covered on a specific product, please check for further information with our helpful staffs.

Sokly Phone Shop Asia staffs are friendly and attentive, we always take great care of and meet our clients’ demand at all time and your satisfaction of our price and service is our success.

Our vision is to open more branches in Phnom Penh and other provinces so we all stay close together and keep our clients comfortable with our on-time service provision. Sokly Phone Shop Asia will provide soon the online sales service so our clients can place a purchase order from home or office and the products will be delivered to your door. For further detailed information.</p>
             
							</div>		
						</div>
					</div><!--/category-tab-->
                    
                    <div class="recommended_items"><!--recommended_items-->
						<h2 class="title text-center">ផលិតផលដែលអ្នកអាចនឹងចូលចិត្ដ</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">	
									<div class="col-sm-2">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${pageContext.request.contextPath }/resources/images/GalaxyS5/s-l501(1).jpg" alt="" />
													<h2>$280</h2>
													<p>ទូរស័ព្ទ Galaxy S5</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${pageContext.request.contextPath }/resources/images/WaterProof/s-l1604 (1).jpg" alt="" />
													<h2>$80</h2>
													<p>នាឡិកា WaterProof</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${pageContext.request.contextPath }/resources/images/Plugin/s-l5010.jpg" alt="" />
													<h2>$11</h2>
													<p>កាស BOBO</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${pageContext.request.contextPath }/resources/images/WaterProof/s-l1604 (1).jpg" alt="" />
													<h2>$80</h2>
													<p>នាឡិកា WaterProof</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${pageContext.request.contextPath }/resources/images/OEMAppleAdapter/s-l500.jpg" alt="" />
													<h2>$16</h2>
													<p>ឆ្នាំសាក IPhone 4/4s</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<div class="product-image-wrapper">
											<div class="single-products">
                                                                                                                                                                <div class="productinfo text-center">
                                                                                                                                                                                <img src="${pageContext.request.contextPath }/resources/images/OEMAppleAdapter/s-l500.jpg" alt="" />
                                                                                                                                                                                <h2>$16</h2>
                                                                                                                                                                                <p>ឆ្នាំសាក IPhone 4/4s</p>
                                                                                                                                                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
                                                                                                                                                                </div>
												
											</div>
										</div>
									</div>
								</div>
								<div class="item">	
									
									<div class="col-sm-2">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${pageContext.request.contextPath }/resources/images/eyeClass/s-l1600.jpg" alt="" />
													<h2>$15</h2>
													<p>វែនតា Sun Protection</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${pageContext.request.contextPath }/resources/images/Asus/s-l500.jpg" alt="" />
													<h2>$450</h2>
													<p>កុំព្យូទ័រ Asus N4532</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${pageContext.request.contextPath }/resources/images/Asus/s-l500.jpg" alt="" />
													<h2>$450</h2>
													<p>កុំព្យូទ័រ Asus N4532</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
												</div>
												
											</div>
										</div>
									</div>

									<div class="col-sm-2">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${pageContext.request.contextPath }/resources/images/Asus/s-l500.jpg" alt="" />
													<h2>$450</h2>
													<p>កុំព្យូទ័រ Asus N4532</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${pageContext.request.contextPath }/resources/images/Asus/s-l500.jpg" alt="" />
													<h2>$450</h2>
													<p>កុំព្យូទ័រ Asus N4532</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${pageContext.request.contextPath }/resources/images/Asus/s-l500.jpg" alt="" />
													<h2>$450</h2>
													<p>កុំព្យូទ័រ Asus N4532</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>ដាក់ចូល wishlist</a>
												</div>
												
											</div>
										</div>
									</div>
									
									<
								</div>
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next" >
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/recommended_items-->
				</div>   			    				    				
					
				</div>			 		
			</div>    	
    		 
    	</div>	
    </div><!--/#contact-page-->
	
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
								<li><a href="contact-us.html">ទំនាក់ទំនងយើងខ្ញុំ</a></li>
								<!-- <li><a href="">កម្មង់</a></li> -->
								<li><a href="">ផ្លាស់ប្ដូរការដេញថ្លៃ</a></li>

								<!-- <li><a href="">FAQ’s</a></li> -->
							</ul>
						</div>
					</div>
					
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>គោលការណ៍</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">របៀបចូលរួមដេញថ្លៃ</a></li>
								<li><a href="">ដាក់ផលិតផលដេញថ្លៃ</a></li>
								<li><a href="">សេវាកម្ម</a></li>
						
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>អំពីយើងខ្ញុំ</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">គេហទំព័ររបស់យើងខ្ញុំ</a></li>
									<li><a href="">ការផ្លស់ប្តូរ</a></li>
								<li><a href="https://www.google.com.kh/maps/place/Korea+Software+HRD+Center/@11.575766,104.889167,15z/data=!4m5!3m4!1s0x0:0x2c2974b77cdaff4b!8m2!3d11.575766!4d104.889167">ទីតាំង</a></li>
								
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
					<p class="pull-left">Copyright © 2016 K-Auction. All rights reserved.</p>
					
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	
  <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>

            <script>
                jssor_1_slider_init();
            </script>

			
	</body>
	</html>