/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var app = angular.module('AuctionApp', ["ngJsonExportExcel"]);
app.controller('AuctionController', function($scope, $http, $filter, $window, $rootScope){
//-------------------------------------------------------------------------------------------------Auction Manager block---------------//
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
                      $scope.findAllAcutions();
                            swal(
                                'Success!',
                                'Add successfully!',
                                'success'
                              );
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
            $scope.usrid =	1,
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
                    console.log("Owners response => ", response.data.DATA);
                });
        };
    $scope.getOwner();  
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
                      
//-------------------------------------------------------------------------------------------------Paginaton block-----------------//   
   check = true;
   currentPage = 1;
//   $scope.showData = function(currentPage){
//                //$http.defaults.headers.common['Authorization'] = 'Basic ZGV2OiFAI2FwaQ==';  
//                $http({url: 'http://localhost:9999/api/auction/get?page='+ currentPage +'&limit=6',
//                       method: 'GET'
//                }).then(function(response){
//                        console.log(response.data);
//                        $scope.auctions = response.data.DATA;
//                        if(check){
//                                setPagination(response.data.PAGINATION.TOTAL_PAGES,currentPage);
//                                check=false;
//                            }
//                }, function(){
//                        alert('Error');
//                }); 
//    };
//   setPagination = function(totalPage, currentPage){
//        alert("Pagination top");
//                       $('#pagination').bootpag({
//                               total: totalPage,
//                               page: currentPage,
//                               maxVisible: 5,
//                               leaps: true,
//                               firstLastUse: true,
//                               first: 'First',
//                               last: 'Last',
//                               wrapClass: 'pagination',
//                               activeClass: 'active',
//                               disabledClass: 'disabled',
//                               nextClass: 'next',
//                               prevClass: 'prev',
//                               lastClass: 'last',
//                               firstClass: 'first'
//                           }).on("page", function(event, currentPage){
//                               check = false;
//                               getCurrentPage = currentPage;
//                               $scope.showData(currentPage);
//                           }); 	
//                       };
//   //$scope.showData(currentPage);    
   $scope.listOnlyMainCategory = function (prop, value){
       return function(item){
           if (item[prop] === value){
               return true;
           }
       };
   };
   $scope.listOnlySubCategory = function (prop, value){
       return function(item){
           if (item[prop] !== value){
               return true;
           }
       };
   }; 
   //-------------------------------------------------------------------------------------------------Search Engine block-----------------//   
   $scope.searchCategory = function(searchcat,searchname){
              if(searchname !== undefined || searchcat === ""){
                alert(searchname);
                $scope.catid = 0;
               $http({
                    url:'http://localhost:9999/api/auction/search-product/'+searchname+'?page=1&limit=6',
                      method:'GET'
            }).then(function(response){
                $scope.auctions = response.data.DATA;
                console.log(response.data.DATA);
            }); 
            }
              else if(searchcat !== undefined || searchname === ""){

                alert(searchcat);
               $http({
                    url:'http://localhost:9999/api/auction/get-by-category/'+searchcat+'?page='+currentPage+'&limit=6',
                      method:'GET'
            }).then(function(response){
                $scope.auctions = response.data.DATA;
                console.log(response.data.DATA);
            }); 
            }
    };  
   $scope.clearSearchCatid = function(){
       $scope.searchname = undefined;
    };

    $scope.filter ={
            page : 1,
            limit : 15,
            name : '',
            categoryId: ''
        };
        
    $scope.findAllAcutions = function(){
        $http({
            url : "http://localhost:9999/api/auction/get-all",
            method: "GET",
            params : $scope.filter
        }).success(function(response){
            $scope.auctions = response.DATA;
            
            angular.forEach($scope.auctions, function(item, index){
                item.start_date = $filter('date')(item.start_date, 'dd/MM/yyyy HH:mm:ss');
                item.end_date = $filter('date')(item.end_date, 'dd/MM/yyyy HH:mm:ss');
                console.log(item.start_date);
            });
            
            $scope.setPagination(response.PAGINATION.TOTAL_PAGES);
             console.log("Find All =>",response);
        });
    };
    
    $scope.searchAuctions = function(){
//        alert($scope.searchName +" "+$scope.searchCat);
        $scope.filter.name = $scope.searchName;
        $scope.filter.categoryId = $scope.searchCat;
        $scope.filter.page = 1;
        $scope.findAllAcutions();
    };
    
    var PAGINATION = $("#pagination");
    $scope.setPagination = function(totalPage){
       PAGINATION.bootpag({
                    total: totalPage,
                    page: $scope.filter.page,
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
                }); 	
    };
    
   PAGINATION.on("page", function(event, currentPage){
            $scope.filter.page = currentPage;
            $scope.findAllAcutions();
   });
     $scope.findAllAcutions();
 
});


