/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var app = angular.module('AuctionApp', []);
app.controller('ProductController', function($scope, $http, $filter, $window, $rootScope){
      $scope.getProduct = function(){
        $http({
            url:'http://localhost:9999/api/product/get',
            method:'GET'
        }).then(function(response){
            $scope.products = response.data.DATA;
            console.log("Product response => ",response.data.DATA);
        });
    };
    $scope.getProduct();  
    
    $scope.addProduct = function(){
		var frmData = new FormData();
		
		for(var i=0; i<newFiles['img'].length; i++){
			frmData.append("images", newFiles['img'][i]);
		}
		
		frmData.append('name', $scope.name);
		frmData.append('cat_id', $scope.catid);
                                    frmData.append('brand_id', $scope.brandid);
                                    frmData.append('pro_info', $scope.proinfo);
		
		$http({
			url:'http://localhost:9999/api/product/add',
			method: 'POST',
			data: frmData,
			transformRequest: angular.identity,
                            headers: {'Content-Type': undefined}
		}).then(function(response){
			//console.log(response.data);
			//$scope.getRest();
                        swal(
                                'Success!',
                                'Add successfully!',
                                'success'
                              );
                        $scope.getProduct();
		}, function(error){
			//console.log(error.data);
			//alert('failed to upload data');
			//$scope.getRest();
                        swal(
                                'Error!',
                                'Cannot add produt!',
                                'error'
                              );
		});
    };
    $scope.getBrand = function(){
        $http({
            url:'http://localhost:9999/api/brand/get',
            method:'GET'
        }).then(function(response){
            $scope.brand = response.data.DATA;
            console.log("Brand response =>",response.data.DATA);
        });
    };
      $scope.getBrand();
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
   $scope.getCategory = function(){
        $http({
            url:'http://localhost:9999/api/category/get',
            method:'GET'
        }).then(function(response){
            
            $scope.category = response.data.DATA;
            console.log('Category response => ', response.data.DATA);
        });
    };
    $scope.getCategory();
    $scope.getProductObject = function(rec){
	$scope.catid = rec.pro.cat_id;
                 $scope.name= rec.pro.name;
	$scope.brandid = rec.pro.brand_id;
	$scope.proinfo = rec.pro.pro_info;
                  $scope.productObject = rec.pro;
    };
    $scope.updateProduct = function(){
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
                            url:'http://localhost:9999/api/product/edit',
                            method:'PUT',
                            data:{
                                    "pro_id" : $scope.proid,
		"name": $scope.name,
		"cat_id": $scope.catid,
		"brand_id": $scope.brandid,
		"pro_info":$scope.proinfo
                    }
                    }).then(function(response){
                           $scope.productObject.name = $scope.name ;
                           $scope.productObject.cat_id = $scope.catid;
                           $scope.productObject.brand_id = $scope.brandid;
                           $scope.productObject.pro_info = $scope.prinfo;
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
        $scope.deleteProduct = function(id){
            swal({   
            title: "Are you sure to delete this product?",   
            text: "It may worstly effect to rational auction item!",   
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
                                        url:'http://localhost:9999/api/product/delete/'+id,
                                        method:'PUT'
                                }).then(function(response){
                                    swal("Deleted!", "Current product has been deleted :)", "success");  
                                    $scope.getProduct();
                    },function(response){
                    }); 
                    } else {     
                            swal("Cancelled", "Current product has not been deleted :(", "error");   
                    } 
             });
    };   
});

app.directive('myFilter', [function() {
            return {
                restrict: 'A',       
                link: function(scope, element) {
                    // wait for the last item in the ng-repeat then call init
                    angular.element(document).ready(function() {
                        initJqueryFiler(['#img'], [[]]);
                    });
                    // OR use $braodcast & $on in Controller
                }
            };
            /**** Usable array ****/
            // If your input file, id = '#gallery' use:
          
            // => deletedImageIDs['gallery']

        }]);


