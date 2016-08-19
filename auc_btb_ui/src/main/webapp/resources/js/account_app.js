
var app = angular.module('app', []);
app.controller('ctrl', function ($scope, $filter, $http) {

    $scope.getCus = function () {
        $scope.usr_id = user_id;
        $http({
            method: 'GET',
            url: 'http://localhost:9999/api/user/search/' + $scope.usr_id
        })
                .then(function (response) {
                    $scope.user = response.data.DATA;
                }, function (response) {

                });
    };
    $scope.getCus();

    $scope.updateUserInfo = function ()
    {
        swal({
            title: "Are you sure to update your information?",
            text: "If something wrong you can update again",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#E98106",
            confirmButtonText: "Yes",
            cancelButtonText: "No",
            closeOnConfirm: false,
            closeOnCancel: false},
                function (isConfirm) {
                    if (isConfirm) {
                        $http.put('http://localhost:9999/api/user/edit', $scope.user)

                                .success(function () {
                                    swal("Updated!", "Your information has been updated", "success");
                                    $('#btnclose').trigger('click');
                                })
                                .error(function ()
                                {
                                    swal(
                                            'Problem internet connection',
                                            'You clicked the button!',
                                            'error'
                                            );
                                });
                    } else {
                        swal("Cancelled", "Update operation has been cancelled", "error");
                    }
                });
    };

    $scope.updatePassword = function ()
    {
        swal({
            title: "Are you sure to update your password?",
            text: "If something wrong you can update again",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#E98106",
            confirmButtonText: "Yes",
            cancelButtonText: "No",
            closeOnConfirm: false,
            closeOnCancel: false},
                function (isConfirm) {
                    if (isConfirm) {

                        if ($scope.usr.oldpassword == $scope.user.password)
                        {
                            $scope.user.password = $scope.usr.password;
                            $http.put('http://localhost:9999/api/user/edit', $scope.user)

                                    .success(function () {
                                        swal("Updated!", "Your password has been updated", "success");
                                        $('#btnclose').trigger('click');
                                    })
                                    .error(function ()
                                    {
                                        swal(
                                                'Problem internet connection',
                                                'You clicked the button!',
                                                'error'
                                                );
                                    });
                        } else
                        {
                            swal(
                                    'Old password is incorrrect',
                                    'You clicked the button!',
                                    'error'
                                    );
                        }
                    } else {
                        swal("Cancelled", "Update operation has been cancelled", "error");
                    }
                });
    };
    
    $scope.topup = function ()
    {
        swal({
            title: "Are you to top up you balance?",
            text: "You cannot revert this operation",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#E98106",
            confirmButtonText: "Yes",
            cancelButtonText: "No",
            closeOnConfirm: false,
            closeOnCancel: false},
                function (isConfirm) {
                    if (isConfirm) {
                        
                        $scope.user.credit = $scope.user.credit + $scope.usr.credit;
                        
                        $http.put('http://localhost:9999/api/user/edit', $scope.user)

                                .success(function () {
                                    swal("Updated!", "Your balance has been top up", "success");
                                    $('#btnclose').trigger('click');
                                })
                                .error(function ()
                                {
                                    swal(
                                            'Problem internet connection',
                                            'You clicked the button!',
                                            'error'
                                            );
                                });
                    } else {
                        swal("Cancelled", "Top up operation has been cancelled", "error");
                    }
                });
    }


});

