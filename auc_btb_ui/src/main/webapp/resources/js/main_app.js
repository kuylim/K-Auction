
var app = angular.module('app', []);
app.controller('ctrl', function ($scope, $filter, $http) {
		
		 $scope.filters = { };
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
						
});