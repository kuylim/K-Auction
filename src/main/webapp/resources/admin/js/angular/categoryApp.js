/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var app = angular.module('AuctionApp', []);
app.controller('CategoryController', function($scope, $http, $filter, $window, $rootScope){
//    $scope.getCategory = function(){
//        $http({
//            url:'http://localhost:9999/api/category/get',
//            method:'GET'
//        }).then(function(response){
//            
//            $scope.category = response.data.DATA;
//            console.log('Category response => ', response.data.DATA);
//        });
//    };
//    $scope.getCategory();
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
                           $scope.findAllCategories();
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
                            $scope.findAllCategories();
                    }); 
            } else {     
                    swal("Cancelled", "Current category has not been deleted :(", "error");   
            } 
             });
    };
    $scope.getCategoryObject = function(rec){
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
//         alert("CateID : "+$scope.catid+"  ParrentID :"+ $scope.parentid+" Categoryname : "+ $scope.categoryname+" Description"+ $scope.description);
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
    $scope.listOnlyMainCategory = function (prop, value){
       return function(item){
           if (item[prop] === value){
               return true;
           }
       };
   };
   
    check = true;
   currentPage = 1;    
    $scope.filter ={
            page : 1,
            limit : 10,
            name : ''
        };
        
    $scope.findAllCategories = function(){
        $http({
            url : "http://localhost:9999/api/category/get-all",
            method: "GET",
            params : $scope.filter
        }).success(function(response){
            $scope.category = response.DATA;
            $scope.setPagination(response.PAGINATION.TOTAL_PAGES);
             console.log("Find All =>",response);
        });
    };
    
    $scope.searchCategories = function(){
        $scope.filter.name = $scope.searchName;
        $scope.filter.page = 1;
        $scope.findAllCategories();
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
            $scope.findAllCategories();
   });
     $scope.findAllCategories();
});


