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
var app = angular.module('AuctionApp', []);
app.controller('AdminController', function($scope,$http){
    $scope.getBidCustomers = function(){
        $http({
                           url:'http://localhost:9999/api/bid-log/get',
                           method:'GET'           
                 }).then(function(response){
                                   $scope.bidcustomers = response.data.DATA;
                                    console.log(response.data.DATA);
                           },function(response){
                                    console.log(response.data.MESSAGE);
                  });
    };
    $scope.getTopCustomers = function(){
        $http({
                           url:'http://localhost:9999/api/customer/get?page=1&limit=12',
                           method:'GET'           
                 }).then(function(response){
                                   $scope.topcustomers = response.data.DATA;
                                    console.log(response.data.DATA);
                           },function(response){
                                    console.log(response.data.MESSAGE);
                  });
    };
    $scope.getTopCustomers();
    $scope.getBidCustomers();
});

/************************************************** AUCTION CONTROLLER**********************************************************/
app.controller('AuctionController', function($scope, $http){
         $scope.getAuction = function(){
                    $http({
                                url:'http://localhost:9999/api/auction/get',
                                method:'GET'
                    }).then(function(response){
                                $scope.auctions = response.data.DATA;
//                                $scope.auctionid = response.data.DATA[0].auc_id;
//                                
//                                $scope.startdate = '12-12-2018';//start_date;
//                                $scope.enddate = response.data.DATA[0].end_date;
//                                $scope.startprice = response.data.DATA[0].start_price;
//                                $scope.currentprice = response.data.DATA[0].current_price;
                                console.log(response.data.DATA);
                    });
         };
         
         $scope.getProduct = function(){
                    $http({
                                url:'http://localhost:9999/api/product/get',
                                method:'GET'
                    }).then(function(response){
                                $scope.products = response.data.DATA;
                                console.log(response.data.DATA);
                    });
         };
         $scope.getOwner = function(){
                    $http({
                                url:'http://localhost:9999/api/product-owner/get',
                                method:'GET'
                    }).then(function(response){
                                $scope.owners = response.data.DATA;
                                console.log(response.data.DATA);
                    });
         };
        $scope.addAuctionItem = function(){
                 $http({
                           url:'http://localhost:9999/api/auction/add',
                           method:'POST',
                           data:{	
                                    'auc_id': $scope.aucid,
                                    'bid_increment_price': $scope.bidincrementprice,
                                    'buy_price': $scope.buyprice,
                                    'current_price': $scope.currentprice,
                                    'end_date':$scope.enddate ,
                                    'image': $scope.image,
                                    'name': $scope.name,
                                    'owner_id': $scope.ownerid,
                                    'pro_id': $scope.proid,
                                    'product_condition': $scope.productcondition,
                                    'start_date': $scope.startdate,
                                    'start_price': $scope.startprice,
                                    'status': $scope.status,
                                    'usr_id': $scope.usrid     
                           }            
                 }).then(function(response){
                            alert("Message : "+response.data.MESSAGE);
                                   // $scope.getAuction();
                                    //console.log(response.data.MESSAGE);
                           },function(response){
                                    //console.log(response.data.DATA);
                  });
        };
        $scope.deleteAuctionItem = function(id){	
	$http({
		url:'http://localhost:9999/api/auction/delete/'+id,
		method:'PUT'    
                           }).then(function(response){    
                                    $scope.getAuction();
                                    console.log(response.data.MESSAGE);
                           },function(response){
                                    //console.log(response.data.DATA);  
                                    //$scope.getAuction();            
	});          
         };
         $scope.findAuctionItemUpdate = function(obj){
                  $scope.item = obj.auc.auc_id;    
         };
         $scope.updateAuctionItem = function(){	
	$http({
                            url:'http://localhost:9999/api/auction/edit',
                            method:'PUT',
                            data:{
                                    'auc_id': $scope.aucid,
                                    'bid_increment_price': $scope.bidincrementprice,
                                    'buy_price': $scope.buyprice,
                                    'current_price': $scope.currentprice,
                                    'end_date':$scope.enddate ,
                                    'image': $scope.image,
                                    'name': $scope.name,
                                    'owner_id': $scope.ownerid,
                                    'pro_id': $scope.proid,
                                    'product_condition': $scope.productcondition,
                                    'start_date': $scope.startdate,
                                    'start_price': $scope.startprice,
                                    'status': $scope.status,
                                    'usr_id': $scope.usrid
                            }
                           }).then(function(response){
                                    $scope.getAuction();
                                      alert(response.data.MESSAGE);
                                    console.log(response.data.MESSAGE);
                           },function(response){
                                     alert(response.data.MESSAGE);    
	});          
         };
        $scope.getAuction();
        $scope.getOwner();
        $scope.getProduct();
});




var globalID = 1;
app.controller('UserController', function($scope, $http){
         $scope.getUser = function(){
                    $http({
                                url:'http://localhost:9999/api/user/get',
                                method:'GET'
                    }).then(function(response){
                                $scope.users = response.data.DATA; 
//                                $scope.userid = response.data.DATA[0].id;
//                                $scope.username = response.data.DATA[0].username;
//                                $scope.password = response.data.DATA[0].password;
//                                $scope.phone = response.data.DATA[0].phone;
//                                $scope.email = response.data.DATA[0].email;
                                console.log(response.data.DATA);
                    });
         };
         $scope.getUserSelect = function(id){
         globalID = id;
           $http({
                                url:'http://localhost:9999/api/user/search/'+id,
                                method:'GET'
                    }).then(function(response){
                                $scope.selector = response.data.DATA; 
//                                $scope.userid = response.data.DATA[0].id;
//                                $scope.username = response.data.DATA[0].username;
//                                $scope.password = response.data.DATA[0].password;
//                                $scope.phone = response.data.DATA[0].phone;
//                                $scope.email = response.data.DATA[0].email;
                                console.log(response.data.DATA);
                    });   
         };
         
           $scope.revokeUser = function(id){	
	$http({
		url:'http://localhost:9999/api/user/delete/'+id,
		method:'PUT'    
                           }).then(function(response){    
                                    $scope.getUser(); 
                                    console.log(response.data.MESSAGE);
                           },function(response){
                                    //console.log(response.data.DATA);  
                                    //$scope.getAuction();            
	});          
         };
         $scope.updateUser = function(){
                 $http({
                           url:'http://localhost:9999/api/user/edit',
                           method:'POST',
                           data:{
                                    'email':$scope.email,
                                    'id': $scope.userid,
                                    'password': $scope.password,
                                    'phone': $scope.phone,
                                    'status': true,
                                    'username': $scope.username
                           }            
                 }).then(function(response){
                                    console.log(response.data);
                           },function(response){      
                                    console.log(response.data);
                  });
        };
         $scope.getUser(); 
          $scope.getUserSelect(globalID); 
});

