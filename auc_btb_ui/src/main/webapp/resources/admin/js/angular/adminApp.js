/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var app = angular.module('AuctionApp', []);
app.controller('AdminController', function($scope, $http, $filter, $window, $rootScope){
       $scope.addUsers = function(){
                $http({
                url:'http://localhost:9999/api/user/add-user',
                method:'POST',
                data:{ 
                        "firstname":$scope.firstname,
                        "lastname": $scope.lastname,
                        "username":$scope.username,
                       "password":$scope.password,
                        "email": $scope.email,
                        "phone": $scope.phone,
                         "address": $scope.address,
                         "role": $scope.role
                      }
                }).then(function(response){
                          swal(
                                    'Success!',
                                    'Add successfully!',
                                    'success'
                                  );
                          $scope.findAllUsers();
                          },function(response){
                });
        }; 
       $scope.deleteUser = function(id){
                swal({   
                title: "Are you sure to delete this user?",   
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
                                            url:'http://localhost:9999/api/user/delete/'+id,
                                            method:'PUT'
                                    }).then(function(response){
                                        swal("Deleted!", "Current user has been deleted :)", "success");  
                                        $scope.findAllUsers();
                        },function(response){
                        }); 
                        } else {     
                                swal("Cancelled", "Current user has not been deleted :(", "error");   
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
        $http({
            url : "http://localhost:9999/api/user/get-all",
            method: "GET",
            params : $scope.filter
        }).success(function(response){
            $scope.users = response.DATA;
            $scope.setPagination(response.PAGINATION.TOTAL_PAGES);
             console.log("Find All =>",response);
        });
        alert("FindAll");
    };
    
    $scope.searchUsers = function(){
        $scope.filter.name = $scope.searchName;
        $scope.filter.page = 1;
        $scope.findAllUsers();
        alert("SearchAuction");
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
                alert("Pagination buttom");
    };
    
   PAGINATION.on("page", function(event, currentPage){
            $scope.filter.page = currentPage;
            $scope.findAllUsers();
            alert("Pagination On");
   });
     $scope.findAllUsers();    
});


