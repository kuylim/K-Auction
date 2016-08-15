
var app = angular.module('app', []);
app.controller('ctrl', function ($scope, $filter, $http) {
		
                
                //testing customer
                $scope.cus;
                //fetch persons
		$scope.getCus = function(bidder_id){
                                $http({
                                        method: 'GET',
                                        url: 'http://localhost:9999/api/customer/search/'+bidder_id
                                })
                                .then(function(response){
                                        $scope.cus = response.data.DATA;

                                        //console.log(response.data.DATA);
                                }, function(response){

                                });
                        }
                //end testing
                               
		//fetch categories
		$scope.getCategories = function(){
			$http({
				method: 'GET',
				url: 'http://localhost:9999/api/category/get'
			})
			.then(function(response){
				$scope.categories = response.data.DATA;
				//console.log(response.data.DATA);
			}, function(response){
				
			});
		}
		$scope.getCategories();
                
//                $scope.getAuction = function(){
//                        $scope.date = new Date();
//			$http({
//				method: 'GET',
//				url: 'http://localhost:9999/api/auction/get'
//			})
//			.then(function(response){
//				$scope.auctions = response.data.DATA;
//				//console.log(response.data.DATA);
//			}, function(response){
//				
//			});
//		}
//                $scope.getAuction();
                
                
                $scope.getAuction_detail = function(id){
                    $http({
                        method: 'GET',
                        url: 'http://localhost:9999/api/auction/search/'+id
                    })
                        .then(function(response){
                            $scope.auc_detail = response.data.DATA;
                                                //console.log(response.data.DATA);
                        }, function(response){

                });
                }
                
                // bidding function
                $scope.bidding = function(id){
                        //alert(bidder_id);
                        
                        
                        if ($scope.cus.credit <= 0) {
                            alert("You don't have enought credit to bit. please charge your balance");
                        } else {
                            
                            $scope.Nowsday = new Date();
                            $scope.bid_log;
                            //alert(id);
                            $http({
                                    method: 'GET',
                                    url: 'http://localhost:9999/api/auction/search/'+id
                            })
                            .then(function(response){
                                $scope.auction = response.data.DATA; 
                                //define bid_log class
                                $scope.bid_log = {
                                    auc_id: 1,
                                    current_price: 1.0,
                                    cus_id: 1,
                                    date: "1"
                                }

                                //console.log($scope.auction.auc_id);
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
                                                            //console.log($scope.auction);
                                                            //alert("update price");
                                                            $scope.cus.credit = $scope.cus.credit-500;
                                                            $http.put('http://localhost:9999/api/customer/update-balance', $scope.cus)

                                                                    .success(function(){
                                                                        //$scope.getAuction();
                                                                        //$scope.getAuction_detail(id);
                                                                        $scope.showData(currentPage);
                                                                        alert("You bid succesfully!");
                                                                    })
                                                                    .error(function()
                                                                        {

                                                                        });
                                                        })
                                                        .error(function(){

                                                        });
                                                //alert("done bidding");
                                            })
                                        .error(function()
                                            {    
                                                //alert("error bidding"); 
                                            });

                            }, function(response){

                            });

                            }
                        
		}
                // end bidding
                
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


            }

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
});

