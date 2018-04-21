var app = angular.module('app', []);
app.controller('ctrl', function ($scope, $filter, $http) {
    
    $scope.result = false;
    $scope.verify_mail = function()
    {
        
        $http({
            method: 'GET',
            url: 'http://localhost:9999/api/user/verifykey/' + key
        })
                .then(function (response) {
                    $scope.user = response.data.DATA;
                    //console.log(response.data.DATA);
                    $scope.result = true;
                }, function (response) {

                });
    };
});
