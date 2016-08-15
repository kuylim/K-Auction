var app = angular.module('login', []);
app.controller('ctrl', function ($scope, $filter, $http) {
    
   // $scope.user_login = function(user){
//        $http.post('http://localhost:9999/api/user/add-user', user)
//            .success(function()
//            {
//                    alert("Register successfully! Please login to start bidding");
//            }
//            .error(function(){
//                
//            }); 
 //       alert("function work");
   // };
    
    
    $scope.user_login = function(user){
                    $http.post('http://localhost:9999/api/user/add-user', user)
                        .success(function(){
                             alert("done");
                                })
                         .error(function()
                                            {    
                                                //alert("error bidding"); 
                                            });  
                        

                }
                
    
});


