/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var app = angular.module('AuctionApp', []);
app.controller('AdminController', function($scope, $http, $filter, $window, $rootScope){
//       $scope.addUsers = function(){
//                 $http({
//                    url:'http://localhost:9999/api/user/add-admin',
//                    method:'POST',
//                    data:{ 
//                            "firstname":$scope.firstname,
//                            "lastname": $scope.lastname,
//                            "username":$scope.username,
//                           "password":$scope.password,
//                            "email": $scope.email,
//                            "phone": $scope.phone,
//                             "address": $scope.address,
//                             "role": $scope.role
//                          }
//                    }).then(function(response){
//                              swal(
//                                        'Success!',
//                                        'Administrator account has been inserted successfully!',
//                                        'success'
//                                      );
//                    });
//        }; 
       $scope.deleteBidder = function(id){
                swal({   
                title: "Are you sure to delete this Bidder?",   
                text: "It may worstly effect Bidder Account!",   
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
                                            url:'http://localhost:9999/api/user/delete/'+id,
                                            method:'PUT'
                                    }).then(function(response){
                                        swal("Deleted!", "Current Bidder has been deleted :)", "success");  
                                        $scope.findAllUsers();
                        },function(response){
                        }); 
                        } else {     
                                swal("Cancelled", "Current Bidder has not been deleted :(", "error");   
                        } 
                 });
        };
        $scope.activateBidder = function(id){
                swal({   
                title: "Are you willing to activate this Bidder?",   
                text: "This will aprove request for online!",   
                type: "warning",   
                showCancelButton: true,   
                confirmButtonColor: "#ED0909",   
                confirmButtonText: "Yes",   
                cancelButtonText: "No",   
                closeOnConfirm: false,   
                closeOnCancel: false}, 
                function(isConfirm){   
                if (isConfirm) {     
//                                   $http({
//                                            url:'http://localhost:9999/api/user/delete/'+id,
//                                            method:'PUT'
//                                    }).then(function(response){
//                                        swal("Deleted!", "Current Bidder has been deleted :)", "success");  
//                                        $scope.findAllUsers();
                              swal("Error!", "Function scope blank :)", "error"); 
//                        },function(response){
//                        }); 
                        } else {     
                                swal("Cancelled", "Current Bidder has not been deleted :(", "error");   
                        } 
                 });
        };
       $scope.dataList = [
                    {
                        id: 1,
                        name: 'github',
                        price: '200$',
                        publisher: {
                            name: 'hieutran',
                            company: 'Dtag-VN'
                        }
                    },
                    {
                        id: 2,
                        name: 'google',
                        price: '300$',
                        publisher: {
                            name: 'tran',
                            company: 'Vietname'
                        }
                    }
        ];
//    $scope.searchUsersEmail =function(){
//        alert($scope.searchEmail);
//       $http({
//                url:'http://localhost:9999/api/user/find-user-by-email',
//                method:'POST',
//                data:{ 
//                        "email": $scope.searchEmail
//                      }
//                }).then(function(response){
//                          $scope.users = response.DATA;
//                          $scope.setPagination(1);
//                          },function(response){
//
//                });
//    };
    $scope.filter ={
            page : 1,
            limit : 10,
            name : ''
        };
        
    $scope.findAllUsers = function(){
//        $scope.role = 'USER_ROLE';
         $scope.role = 'ADMIN_ROLE';
        $http({
            url : "http://localhost:9999/api/user/get-all",
            method: "GET",
            params : $scope.filter
        }).success(function(response){
            $scope.users = response.DATA;
            $scope.setPagination(response.PAGINATION.TOTAL_PAGES);
             console.log("Find All =>",response);
        });
    };
    
    $scope.searchUsers = function(){
        $scope.filter.name = $scope.searchName;
        $scope.filter.page = 1;
        $scope.findAllUsers();
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
            $scope.findAllUsers();
   });
     $scope.findAllUsers();    
});


