var app = angular.module('login', []);
app.controller('ctrl', function ($scope, $filter, $http) {
        
    $scope.user_login = function(user){
        $scope.email;
        $scope.result = false;
        $http.post('http://localhost:9999/api/user/find-user-by-email', user)
            .success(function(respone){
                if(respone.DATA != null)
                {
                    $scope.email = respone.DATA.email;
                    if($scope.email == user.email)
                    {
                        swal({
                            title: 'Duplicate Email',
                            type: 'warning',
                            text: 'Your email already exiting! please try with another one.',
                            timer: 5000
                          });
                        $scope.result = true;
                    }
                }
                
                else if($scope.email == null)
                {
                    if(user.comfirm_pass != user.password)
                    {
                        swal({
                            title: 'Password does not match',
                            type: 'warning',
                            text: 'Please type your password again!',
                            timer: 5000
                          });
                    }
                    else
                    {
                        $http.post('http://localhost:9999/api/user/add-user', user)
                        .success(function(){
                            swal({
                                title: 'Register successfully!',
                                text: 'Login to K-Auction to start bidding.',
                                timer: 2000
                              });
                            $scope.result = false;
                        })
                        .error(function()
                        {    

                        }); 
                    }    
                }
            })
            .error(function()
            {    
                
            });   
    }
                   
});


