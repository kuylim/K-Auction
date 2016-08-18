
var app = angular.module('app', []);
app.controller('ctrl', function ($scope, $filter, $http) {


    //testing customer
    
    //fetch persons
    
    $scope.test = function ()
    {
        alert("funtion work;");
    }
    
    $scope.getCus = function () {
        $scope.usr_id = user_id;
        $http({
            method: 'GET',
            url: 'http://localhost:9999/api/user/search/'+$scope.usr_id
        })
                .then(function (response) {
                    $scope.user = response.data.DATA;
                    //alert(user_id);
                    console.log(response.data.DATA);
                }, function (response) {

                });
    } 
    
    $scope.getCus();
});







