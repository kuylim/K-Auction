/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



//app.controller('AppController', function($scope, $http){
///************************************************** LOADING SCOPE **********************************************************/
//         $scope.getAuction = function(){
//                    $http({
//                                url:'http://localhost:9999/api/auction/get',
//                                method:'GET'
//                    }).then(function(response){
//                                $scope.auctions = response.data.DATA;
//                                console.log(response.data.DATA);
//                    });
//         };
////                  $http({
////                            url:'http://localhost:9999/api/bid-log/get',
////                            method:'GET'
////                   }).then(function(response){
////                            $scope.biding = response.data.DATA;
////                            console.log(response.data.DATA);
////	});
//	
//        $scope.getAuction();
//});
//
//app.controller('CategoryController', function($scope, $http){
///************************************************** LOADING SCOPE **********************************************************/
//    
//        $scope.getAuction();
//});

// 13th, Aug, 2016---------------------------------------------------------------------------------------------------------------
//
//var app = angular.module('AuctionApp', []);
//app.controller('AdminController', function($scope,$http){
//    $scope.getBidCustomers = function(){
//        $http({
//                           url:'http://localhost:9999/api/bid-log/get',
//                           method:'GET'           
//                 }).then(function(response){
//                                   $scope.bidcustomers = response.data.DATA;
//                                    console.log(response.data.DATA);
//                           },function(response){
//                                    console.log(response.data.MESSAGE);
//                  });
//    };
//    $scope.getTopCustomers = function(){
//        $http({
//                           url:'http://localhost:9999/api/customer/get?page=1&limit=12',
//                           method:'GET'           
//                 }).then(function(response){
//                                   $scope.topcustomers = response.data.DATA;
//                                    console.log(response.data.DATA);
//                           },function(response){
//                                    console.log(response.data.MESSAGE);
//                  });
//    };
//    $scope.getTopCustomers();
//    $scope.getBidCustomers();
//});
//
///************************************************** AUCTION CONTROLLER**********************************************************/
//app.controller('AuctionController', function($scope, $http){
//         $scope.getAuction = function(){
//                    $http({
//                                url:'http://localhost:9999/api/auction/get',
//                                method:'GET'
//                    }).then(function(response){
//                                $scope.auctions = response.data.DATA;
////                                $scope.auctionid = response.data.DATA[0].auc_id;
////                                
////                                $scope.startdate = '12-12-2018';//start_date;
////                                $scope.enddate = response.data.DATA[0].end_date;
////                                $scope.startprice = response.data.DATA[0].start_price;
////                                $scope.currentprice = response.data.DATA[0].current_price;
//                                console.log(response.data.DATA);
//                    });
//         };
//         
//         $scope.getProduct = function(){
//                    $http({
//                                url:'http://localhost:9999/api/product/get',
//                                method:'GET'
//                    }).then(function(response){
//                                $scope.products = response.data.DATA;
//                                console.log(response.data.DATA);
//                    });
//         };
//         $scope.getOwner = function(){
//                    $http({
//                                url:'http://localhost:9999/api/product-owner/get',
//                                method:'GET'
//                    }).then(function(response){
//                                $scope.owners = response.data.DATA;
//                                console.log(response.data.DATA);
//                    });
//         };
//        $scope.addAuctionItem = function(){
//                 $http({
//                           url:'http://localhost:9999/api/auction/add',
//                           method:'POST',
//                           data:{	
//                                    'auc_id': $scope.aucid,
//                                    'bid_increment_price': $scope.bidincrementprice,
//                                    'buy_price': $scope.buyprice,
//                                    'current_price': $scope.currentprice,
//                                    'end_date':$scope.enddate ,
//                                    'image': $scope.image,
//                                    'name': $scope.name,
//                                    'owner_id': $scope.ownerid,
//                                    'pro_id': $scope.proid,
//                                    'product_condition': $scope.productcondition,
//                                    'start_date': $scope.startdate,
//                                    'start_price': $scope.startprice,
//                                    'status': $scope.status,
//                                    'usr_id': $scope.usrid     
//                           }            
//                 }).then(function(response){
//                            alert("Message : "+response.data.MESSAGE);
//                                   // $scope.getAuction();
//                                    //console.log(response.data.MESSAGE);
//                           },function(response){
//                                    //console.log(response.data.DATA);
//                  });
//        };
//        $scope.deleteAuctionItem = function(id){	
//	$http({
//		url:'http://localhost:9999/api/auction/delete/'+id,
//		method:'PUT'    
//                           }).then(function(response){    
//                                    $scope.getAuction();
//                                    console.log(response.data.MESSAGE);
//                           },function(response){
//                                    //console.log(response.data.DATA);  
//                                    //$scope.getAuction();            
//	});          
//         };
//         $scope.findAuctionItemUpdate = function(obj){
//                  $scope.item = obj.auc.auc_id;    
//         };
//         $scope.updateAuctionItem = function(){	
//	$http({
//                            url:'http://localhost:9999/api/auction/edit',
//                            method:'PUT',
//                            data:{
//                                    'auc_id': $scope.aucid,
//                                    'bid_increment_price': $scope.bidincrementprice,
//                                    'buy_price': $scope.buyprice,
//                                    'current_price': $scope.currentprice,
//                                    'end_date':$scope.enddate ,
//                                    'image': $scope.image,
//                                    'name': $scope.name,
//                                    'owner_id': $scope.ownerid,
//                                    'pro_id': $scope.proid,
//                                    'product_condition': $scope.productcondition,
//                                    'start_date': $scope.startdate,
//                                    'start_price': $scope.startprice,
//                                    'status': $scope.status,
//                                    'usr_id': $scope.usrid
//                            }
//                           }).then(function(response){
//                                    $scope.getAuction();
//                                      alert(response.data.MESSAGE);
//                                    console.log(response.data.MESSAGE);
//                           },function(response){
//                                     alert(response.data.MESSAGE);    
//	});          
//         };
//        $scope.getAuction();
//        $scope.getOwner();
//        $scope.getProduct();
//});
//
//
//
//
//var globalID = 1;
//app.controller('UserController', function($scope, $http){
//         $scope.getUser = function(){
//                    $http({
//                                url:'http://localhost:9999/api/user/get',
//                                method:'GET'
//                    }).then(function(response){
//                                $scope.users = response.data.DATA; 
////                                $scope.userid = response.data.DATA[0].id;
////                                $scope.username = response.data.DATA[0].username;
////                                $scope.password = response.data.DATA[0].password;
////                                $scope.phone = response.data.DATA[0].phone;
////                                $scope.email = response.data.DATA[0].email;
//                                console.log(response.data.DATA);
//                    });
//         };
//         $scope.getUserSelect = function(id){
//         globalID = id;
//           $http({
//                                url:'http://localhost:9999/api/user/search/'+id,
//                                method:'GET'
//                    }).then(function(response){
//                                $scope.selector = response.data.DATA; 
////                                $scope.userid = response.data.DATA[0].id;
////                                $scope.username = response.data.DATA[0].username;
////                                $scope.password = response.data.DATA[0].password;
////                                $scope.phone = response.data.DATA[0].phone;
////                                $scope.email = response.data.DATA[0].email;
//                                console.log(response.data.DATA);
//                    });   
//         };
//         
//           $scope.revokeUser = function(id){	
//	$http({
//		url:'http://localhost:9999/api/user/delete/'+id,
//		method:'PUT'    
//                           }).then(function(response){    
//                                    $scope.getUser(); 
//                                    console.log(response.data.MESSAGE);
//                           },function(response){
//                                    //console.log(response.data.DATA);  
//                                    //$scope.getAuction();            
//	});          
//         };
//         $scope.updateUser = function(){
//                 $http({
//                           url:'http://localhost:9999/api/user/edit',
//                           method:'POST',
//                           data:{
//                                    'email':$scope.email,
//                                    'id': $scope.userid,
//                                    'password': $scope.password,
//                                    'phone': $scope.phone,
//                                    'status': true,
//                                    'username': $scope.username
//                           }            
//                 }).then(function(response){
//                                    console.log(response.data);
//                           },function(response){      
//                                    console.log(response.data);
//                  });
//        };
//         $scope.getUser(); 
//          $scope.getUserSelect(globalID); 
//});
// 13th, Aug, 2016---------------------------------------------------------------------------------------------------------------//
var app = angular.module('AuctionApp', []);
app.controller('AuctionController', function($scope, $http, $filter){
    
    //-------------------------------------------------------------------------------------------------Auction Manager block---------------//
    $scope.getAuction = function(){
        $http({
        	url:'http://localhost:9999/api/auction/get',
                  method:'GET'
        }).then(function(response){
            $scope.auctions = response.data.DATA;
            console.log(response.data.DATA);
        });
    };
    $scope.getAuction();

    $scope.addAuction = function(){
            $http({
            url:'http://localhost:9999/api/auction/add',
            method:'POST',
            data:{
                "bid_increment_price": $scope.bidincrementprice,
                "buy_price": $scope.buyprice,
                "current_price": $scope.currentprice,
                "end_date":$scope.enddate, 
                "owner_id": $scope.ownerid,
                "pro_id": $scope.proid,
                "product_condition": $scope.productcondition,
                "start_date":  $scope.startdate,
                "start_price": $scope.startprice,
                "usr_id": $scope.usrid
           }
            }).then(function(response){
                      console.log(response.data);
                            //alert(response.data.MESSAGE);
//                      $scope.getAuction();
                      $scope.showData(currentPage);
                            // $scope.name = "";
                            // $scope.age = "";
                      },function(response){
            });
    };
    $scope.deleteAuction = function(id){
            swal({   
            title: "Are you sure to delete this Auction?",   
            text: "Bider will not see this item anymore!",   
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#ED0909",   
            confirmButtonText: "Yes",   
            cancelButtonText: "No",   
            closeOnConfirm: false,   
            closeOnCancel: false}, 
            function(isConfirm){   
            if (isConfirm) {     
                               $http({
                    url:'http://localhost:9999/api/auction/delete/'+id,
                                        method:'PUT'
                                }).then(function(response){
                                    alert(document.getElementById("pagination").value);
                    swal("Deleted!", "Auction item has been deleted :)", "success");  
                    $scope.getAuction();
                    },function(response){
                    }); 
            } else {     
                    swal("Cancelled", "This Auction item has not been deleted :(", "error");   
            } 
             });
    };
    $scope.getCurrentObject = function(rec){
            $scope.ownerid =rec.au.owner_id,
            $scope.proid =rec.au.pro_id,
            $scope.bidincrementprice = rec.au.bid_increment_price,
            $scope.buyprice =rec.au.buy_price,
            $scope.currentprice =rec.au.current_price,
            $scope.enddate = $filter('date')(rec.au.end_date,'yyyy-MM-dd'),
            $scope.productcondition =rec.au.product_condition,
            $scope.startdate = $filter('date')(rec.au.start_date,'yyyy-MM-dd'),
            $scope.startprice =rec.au.start_price,
            $scope.usrid =	1,//rec.au.usr_id,
            $scope.aucid =rec.au.auc_id;
            $scope.currentObject = rec.au;
    };
    $scope.updateAuction = function(){
           // alert("Owner is "+$scope.ownerid+" , product is"+$scope.proid);
            swal({   
            title: "Are you sure to update this record?",   
            text: "You will not be able to roll back!",   
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#E98106",   
            confirmButtonText: "Yes",   
            cancelButtonText: "No",   
            closeOnConfirm: false,   
            closeOnCancel: false }, 
            function(isConfirm){   
            if(isConfirm) {     
                    $http({
                            url:'http://localhost:9999/api/auction/edit',
                            method:'PUT',
                            data:{					
                                     "auc_id": $scope.aucid,
                                     "bid_increment_price": $scope.bidincrementprice,
                                     "buy_price": $scope.buyprice,
                                     "current_price": $scope.currentprice,
                                     "end_date":$scope.enddate, 
                                     "owner_id": $scope.ownerid,
                                     "pro_id": $scope.proid,
                                     "product_condition": $scope.productcondition,
                                     "start_date":  $scope.startdate,
                                     "start_price": $scope.startprice,
                                      "usr_id":1 //$scope.usrid 
                    }
                    }).then(function(response){
                            $scope.currentObject.bid_increment_price = $scope.bidincrementprice;
                            $scope.currentObject.buy_price = $scope.buyprice;
                            $scope.currentObject.current_price = $scope.currentprice;
                            $scope.currentObject.end_date = $scope.enddate; 
                            $scope.currentObject.owner_id = $scope.ownerid;
                            $scope.currentObject.pro_id = $scope.proid;
                            $scope.currentObject.product_condition = $scope.productcondition;
                            $scope.currentObject.start_date = $scope.startdate;
                            $scope.currentObject.start_price = $scope.startprice;
                            swal("Updated!", "Auction item has been updated :)", "success"); 
                            $('#btnclose').trigger('click');
                           //$scope.getAuction();
                             },function(response){
                             });	  
                     }else {     
                           swal("Cancelled", "Auction item has not been updated :(", "error");   
                     } 
             });
    };
//-------------------------------------------------------------------------------------------------Auction Manager block end----------//
//-------------------------------------------------------------------------------------------------Owner Manager  block---------------//
    $scope.getOwner = function(){
            $http({
                url:'http://localhost:9999/api/product-owner/get',
                    method:'GET'
            }).then(function(response){
                    $scope.owners = response.data.DATA;
                console.log(response.data.DATA);
            });
    };
    $scope.getOwner();
   $scope.addOwner = function(){
            $http({
            url:'http://localhost:9999/api/product-owner/add',
            method:'POST',
            data:{
                    "address": $scope.address,
                    "company_profile":$scope.company ,
                    "email": $scope.email,
                    "firstname":$scope.firstname,
                    "lastname": $scope.lastname,
                    "phone": $scope.phone
                  }
            }).then(function(response){
                      console.log(response.data);
                      $scope.getOwner();
                      },function(response){
            });
    }; 
        $scope.deleteOwner = function(id){
            swal({   
            title: "Are you sure to delete this owner?",   
            text: "It may worstly effect to rational product!",   
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#ED0909",   
            confirmButtonText: "Yes",   
            cancelButtonText: "No",   
            closeOnConfirm: false,   
            closeOnCancel: false}, 
            function(isConfirm){   
            if (isConfirm) {     
                               $http({
                                        url:'http://localhost:9999/api/product-owner/delete/'+id,
                                        method:'PUT'
                                }).then(function(response){
                                    swal("Deleted!", "Current owner has been deleted :)", "success");  
                                    $scope.getOwner();
                    },function(response){
                    }); 
                    } else {     
                            swal("Cancelled", "Current owner has not been deleted :(", "error");   
                    } 
             });
    };
    $scope.getOwnerObject = function(rec){
            $scope.ownerid = rec.owner.owner_id;
            $scope.address = rec.owner.address;
            $scope.company = rec.owner.company_profile;
            $scope.email = rec.owner.email;
            $scope.firstname = rec.owner.firstname;
            $scope.lastname = rec.owner.lastname;
            $scope.phone = rec.owner.phone;
            $scope.OwnerObject = rec.owner;
    };
    $scope.updateOwner = function(){
            swal({   
            title: "Are you sure to update this owner?",   
            text: "This will be effective to existing information!",   
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#E98106",   
            confirmButtonText: "Yes",   
            cancelButtonText: "No",   
            closeOnConfirm: false,   
            closeOnCancel: false }, 
            function(isConfirm){   
            if(isConfirm) {     
                    $http({
                            url:'http://localhost:9999/api/product-owner/edit',
                            method:'PUT',
                            data:{	
                                    "owner_id": $scope.ownerid,
                                    "address": $scope.address,
                                    "company_profile":$scope.company ,
                                    "email": $scope.email,
                                    "firstname":$scope.firstname,
                                    "lastname": $scope.lastname,
                                    "phone": $scope.phone
                    }
                    }).then(function(response){
                               $scope.OwnerObject.company_profile = $scope.company;
                               $scope.OwnerObject.address = $scope.address;
                               $scope.OwnerObject.email = $scope.email;
                               $scope.OwnerObject.firstname = $scope.firstname;
                               $scope.OwnerObject.lastname = $scope.lastname;
                              $scope.OwnerObject.phone = $scope.phone;
                            swal("Updated!", "Record has been updated :)", "success"); 
                            $('#btnclose').trigger('click');
                           //$scope.getAuction();
                             },function(response){
                             });	  
                     }else {     
                           swal("Cancelled", "Record has not been updated :(", "error");   
                     } 
             });
    };
//-------------------------------------------------------------------------------------------------Owner  Manager block end-----------//    
//-------------------------------------------------------------------------------------------------Owner Manager  block---------------//
    $scope.getUser = function(){
            $http({
                url:'http://localhost:9999/api/user/get',
                    method:'GET'
            }).then(function(response){
                    $scope.users = response.data.DATA;
                console.log(response.data.DATA);
            });
    };
    $scope.getUser();
//-------------------------------------------------------------------------------------------------Owner  Manager block end-----------//    
//-------------------------------------------------------------------------------------------------Product Manager block-----------------//   
    $scope.getProduct = function(){
        $http({
            url:'http://localhost:9999/api/product/get',
            method:'GET'
        }).then(function(response){
            $scope.products = response.data.DATA;
            console.log(response.data.DATA);
        });
    };
    $scope.getProduct();
    $scope.addProduct = function(){
        alert($scope.name+"  "+$scope.catid+"  "+$scope.brandid);
         $http({
	url:'http://localhost:9999/api/product/add',
                            method:'POST',
                        data:{
		"name": $scope.name,
		"cat_id": $scope.catid,
		"brand_id": $scope.brandid,
		"pro_info":$scope.proinfo
                           }
		}).then(function(response){
			console.log(response.data);
			$scope.getProduct();
			}, function(response){			
		});
    };
    //-------------------------------------------------------------------------------------------------Product Manager block end-----------------//   
    //-------------------------------------------------------------------------------------------------Category Manager block-----------------//   
    $scope.getCategory = function(){
        $http({
            url:'http://localhost:9999/api/category/get',
            method:'GET'
        }).then(function(response){
            
            $scope.category = response.data.DATA;
            console.log('CAT', response.data.DATA);
        });
    };
    $scope.getCategory();
    $scope.addCategory = function(){ 
        $http({
	url:'http://localhost:9999/api/category/add',
                  method:'POST',
                  data:{ 
                           "parent_id": $scope.parentid,
                           "name": $scope.categoryname,
                           "description":$scope.description
                  }
	}).then(function(response){
                           $scope.categoryname = "";
                           $scope.description = "";
                           console.log(response.data);
                           $scope.getCategory();
	}, function(response){			
	});
    };
        $scope.deleteCategory = function(id){
            swal({   
            title: "Are you sure to delete this Category?",   
            text: "It may worstly effect to existing relational product!",   
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#ED0909",   
            confirmButtonText: "Yes",   
            cancelButtonText: "No",   
            closeOnConfirm: false,   
            closeOnCancel: false}, 
            function(isConfirm){   
            if (isConfirm) {     
                  $http({
                        url:'http://localhost:9999/api/category/delete/'+id,
                         method:'PUT'
                        }).then(function(response){
                            swal("Deleted!", " Current catgory has been deleted :)", "success");  
                            $scope.getCategory();
                    }); 
            } else {     
                    swal("Cancelled", "Current category has not been deleted :(", "error");   
            } 
             });
    };
    $scope.getCategoryObject = function(rec){
            alert("CateID : "+rec.cat.cat_id+"  ParrentID"+rec.cat.parent_id);
            $scope.categoryname ="";
            $scope.catid =rec.cat.cat_id;
            if(rec.cat.parent_id === 0)
            {
                $scope.parentid =rec.cat.cat_id;
            }
            //$scope.categorytype=1;
            $scope.categoryname =rec.cat.name;
            $scope.parentid =rec.cat.parent_id;
            $scope.description =rec.cat.description;
            $scope.categoryObject = rec.cat;
    };
    $scope.updateCategory = function(){
         alert("CateID : "+$scope.catid+"  ParrentID :"+ $scope.parentid+" Categoryname : "+ $scope.categoryname+" Description"+ $scope.description);
            swal({   
            title: "Are you sure to update this record?",   
            text: "You will not be able to roll back!",   
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#E98106",   
            confirmButtonText: "Yes",   
            cancelButtonText: "No",   
            closeOnConfirm: false,   
            closeOnCancel: false }, 
            function(isConfirm){   
            if(isConfirm) {     
                    $http({
                            url:'http://localhost:9999/api/category/edit',
                            method:'PUT',
                            data:{
                                "cat_id": $scope.catid,
                                "parent_id": $scope.parentid,
                                "name": $scope.categoryname,
                                "description":$scope.description
                              }
                    }).then(function(response){
                                $scope.categoryObject.name=$scope.categoryname;
                                 $scope.categoryObject.parent_id=$scope.parentid;
                                  $scope.categoryObject.description=$scope.description;
//                            $scope.brandObject.name = $scope.brandname;
//                            $scope.brandObject.description = $scope.description;
                            swal("Updated!", "Current brand has been updated :)", "success"); 
                            $('#btnclose').trigger('click');
                             },function(response){
                             });	  
                     }else {     
                           swal("Cancelled", "Current brand has not been updated :(", "error");   
                     } 
             });
    };
    //-------------------------------------------------------------------------------------------------Category Manager block end-----------------//   
    //-------------------------------------------------------------------------------------------------Brand Manager block-----------------//   
    $scope.getBrand = function(){
        $http({
            url:'http://localhost:9999/api/brand/get',
            method:'GET'
        }).then(function(response){
            $scope.brand = response.data.DATA;
            console.log(response.data.DATA);
        });
    };
    $scope.getBrand();
$scope.addBrand = function(){
         $http({
	url:'http://localhost:9999/api/brand/add',
                  method:'POST',
                  data:{
                                    "description": $scope.description,
                                    "name": $scope.brandname
                           }
                           }).then(function(response){
		console.log(response.data);
		$scope.getBrand();
                            }, function(response){			
                            });
    };  
    $scope.deleteBrand = function(id){
            swal({   
            title: "Are you sure to delete this Brand?",   
            text: "Bider will not see this item anymore!",   
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#ED0909",   
            confirmButtonText: "Yes",   
            cancelButtonText: "No",   
            closeOnConfirm: false,   
            closeOnCancel: false}, 
            function(isConfirm){   
            if (isConfirm) {     
                  $http({
                        url:'http://localhost:9999/api/brand/delete/'+id,
                         method:'PUT'
                        }).then(function(response){
                            swal("Deleted!", " Current brand has been deleted :)", "success");  
                            $scope.getBrand();
                    }); 
            } else {     
                    swal("Cancelled", "Current brand has not been deleted :(", "error");   
            } 
             });
    };
     $scope.getBrandObject = function(rec){
            $scope.brandid =rec.bra.brand_id;
            $scope.brandname =rec.bra.name;
            $scope.description =rec.bra.description;
            $scope.brandObject = rec.bra;
    };
    $scope.updateBrand = function(){
            swal({   
            title: "Are you sure to update this record?",   
            text: "You will not be able to roll back!",   
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#E98106",   
            confirmButtonText: "Yes",   
            cancelButtonText: "No",   
            closeOnConfirm: false,   
            closeOnCancel: false }, 
            function(isConfirm){   
            if(isConfirm) {     
                    $http({
                            url:'http://localhost:9999/api/brand/edit',
                            method:'PUT',
                            data:{
                                "brand_id": $scope.brandid,
                                "name": $scope.brandname,
                                "description": $scope.description
                              }
                    }).then(function(response){
                            $scope.brandObject.name = $scope.brandname;
                            $scope.brandObject.description = $scope.description;
                            swal("Updated!", "Current brand has been updated :)", "success"); 
                            $('#btnclose').trigger('click');
                             },function(response){
                             });	  
                     }else {     
                           swal("Cancelled", "Current brand has not been updated :(", "error");   
                     } 
             });
    };
//-------------------------------------------------------------------------------------------------Brand Manager block-----------------//   
    //=========================upload image===================================
    var FILE = {};			
			//TODO: on submit event, multiple file
    $scope.upload = function(event){
				event.preventDefault();

				var frmData = new FormData();
				var files = angular.element('#file')[0].files;
				for(var i=0; i<files.length; i++)
					frmData.append("files", files[i]);
				
				FILE.upload(frmData);
			};
			//TODO: upload file to server
   FILE.upload = function(frmData){
				$http({
					url: 'http://localhost:9999/api/image/upload',
					params: {
						folder: $scope.folder
					},
					method: 'POST',
					data: frmData,
					transformRequest: angular.identity,
		            headers: {'Content-Type': undefined}
					
				}).then(function(response){
					var files = response.data;
					$scope.message = files.message;
					$scope.filePath = files.projectPath;
					
					$scope.images = [];
					for(var i=0; i<files.names.length; i++){
						$scope.images.push(files.names[i]);
					}
					console.log(response);
				}, function(response){
					console.log(response);
				});
			};                       
//=================pagination===========================
            check = true;
            currentPage = 1;
   $scope.showData = function(currentPage){
                //$http.defaults.headers.common['Authorization'] = 'Basic ZGV2OiFAI2FwaQ==';  
                $http({url: 'http://localhost:9999/api/auction/get?page='+ currentPage +'&limit=6',
                       method: 'GET'
                }).then(function(response){
                        console.log(response.data);
                        $scope.auctions = response.data.DATA;
                        if(check){
                                setPagination(response.data.PAGINATION.TOTAL_PAGES,currentPage);
                                check=false;
                            }
                }, function(){
                        alert('Error');
                }); 
            };
   setPagination = function(totalPage, currentPage){
                       $('#pagination').bootpag({
                               total: totalPage,
                               page: currentPage,
                               maxVisible: 5,
                               leaps: true,
                               firstLastUse: true,
                               first: 'First',
                               last: 'Last',
                               wrapClass: 'pagination',
                               activeClass: 'active',
                               disabledClass: 'disabled',
                               nextClass: 'next',
                               prevClass: 'prev',
                               lastClass: 'last',
                               firstClass: 'first'
                           }).on("page", function(event, currentPage){
                               check = false;
                               getCurrentPage = currentPage;
                               $scope.showData(currentPage);
                           }); 	
                       };
   $scope.showData(currentPage);
   
   $scope.listOnlyMainCategory = function (prop, value){
       return function(item){
           if (item[prop] === value){
               return true;
           }
       };
   };
   
   
});

// $('#add').modal({
//            backdrop: 'static',
//            keyboard: false
//        });
//        
//  $('#update').modal({
//            backdrop: 'static',
//            keyboard: false
//        });


