var app = angular.module('app', []);
app.controller('ctrl', function ($scope, $filter, $http) {
    $scope.feedback = function(user){
        $http.post('http://localhost:9999/api/user/feedback', user)
            .success(function(respone){
                swal(
                        'Feedback!',
                        'Your comment send to our team successfully',
                        'success'
                    );
            })
            .error(function()
            {    
                
            });
    };
});




