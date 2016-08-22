/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var app = angular.module('AuctionApp', []);
app.controller('OwnerController', function($scope, $http, $filter, $window, $rootScope){
    $scope.searchByEmail = function(){
                $http({
                    url:'http://localhost:9999/api/product-owner/get',
                        method:'GET'
                }).then(function(response){
                        $scope.owners = response.data.DATA;
                    console.log("Owners response => ", response.data.DATA);
                });
        };
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
                          //console.log(response.data);
                          swal(
                                    'Success!',
                                    'Add successfully!',
                                    'success'
                                  );
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
                ]
});


