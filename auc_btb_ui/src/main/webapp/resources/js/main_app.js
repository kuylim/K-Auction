
var app = angular.module('app', []);
app.controller('ctrl', function ($scope, $filter, $http) {
		
                
                
                $scope.cus;
                //fetch persons
		$scope.getCus = function(){
			$http({
				method: 'GET',
				url: 'http://localhost:9999/api/customer/search/2'
			})
			.then(function(response){
				$scope.cus = response.data.DATA;
                                $scope.cus.credit = $scope.cus.credit-500;
				console.log(response.data.DATA);
			}, function(response){
				
			});
		}
                
                
                
                
                
                
		
                
                
		//fetch persons
		$scope.getCategories = function(){
			$http({
				method: 'GET',
				url: 'http://localhost:9999/api/category/get'
			})
			.then(function(response){
				$scope.categories = response.data.DATA;
				console.log(response.data.DATA);
			}, function(response){
				
			});
		}
		$scope.getCategories();
                
                $scope.getAuction = function(){
                        $scope.date = new Date();
			$http({
				method: 'GET',
				url: 'http://localhost:9999/api/auction/get'
			})
			.then(function(response){
				$scope.auctions = response.data.DATA;
				console.log(response.data.DATA);
			}, function(response){
				
			});
		}
                $scope.getAuction();
                
                $scope.bidding = function(id){
                        $scope.Nowsday = new Date();
                        $scope.bid_log;
                        alert(id);
			$http({
				method: 'GET',
				url: 'http://localhost:9999/api/auction/search/'+id
			})
			.then(function(response){
                            $scope.auction = response.data.DATA; 
                            $scope.bid_log = {
                                auc_id: 1,
                                current_price: 1.0,
                                cus_id: 1,
                                date: "1"
                            }
                            
                            console.log($scope.auction.auc_id);
                            $scope.bid_log.auc_id = $scope.auction.auc_id;
                            $scope.bid_log.current_price = $scope.auction.current_price + $scope.auction.bid_increment_price; 
                            $scope.bid_log.cus_id = 2;
                            $scope.bid_log.date = $scope.Nowsday; 
                            $scope.auction.current_price = $scope.bid_log.current_price;
                            
                            $http.post('http://localhost:9999/api/bid-log/add', $scope.bid_log)
                                    .success(function()
                                        {
                                            
                                            $http({
                                                    method: 'PUT',
                                                    url: 'http://localhost:9999/api/auction/update-current-price/'+$scope.auction.auc_id+'/'+$scope.auction.current_price
                                                })
                                                    .success(function(){
                                                        console.log($scope.auction);
                                                        alert("update price");
                                                        $http.post('http://localhost:9999/api/customer/update-balance', $scope.cus)
                                                        
                                                                .success(function(){
                                                                    alert("update user balance");
                                                                })
                                                                .error(function()
                                                                    {

                                                                    });
                                                    })
                                                            .error(function(){
                                                                
                                                            });
                                            alert("done bidding");
                                        })
                                    .error(function()
                                        {
                                            
                                            alert("error bidding"); 
                                        });
                            
			}, function(response){
				
			});
		}		
});
