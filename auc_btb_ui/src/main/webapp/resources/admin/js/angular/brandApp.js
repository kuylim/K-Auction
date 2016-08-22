/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var app = angular.module('AuctionApp', []);
app.controller('BrandController', function($scope, $http, $filter, $window, $rootScope){
    $scope.getBrand = function(){
            $http({
                url:'http://localhost:9999/api/brand/get',
                method:'GET'
            }).then(function(response){
                $scope.brand = response.data.DATA;
                console.log("Brand => ",response.data.DATA);
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
                                   swal(
                                    'Success!',
                                    'Add successfully!',
                                    'success'
                                  );
                    //console.log(response.data);
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
});


