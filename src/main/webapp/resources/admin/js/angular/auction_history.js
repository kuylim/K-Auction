/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var app = angular.module('app', []);
app.controller('ctrl', function ($scope, $filter, $http) {
    
    check = true;
    currentPage = 1;
    
    $scope.showData = function (currentPage) {

        //$http.defaults.headers.common['Authorization'] = 'Basic ZGV2OiFAI2FwaQ==';
        $scope.id = auc_id;
        $http({url: 'http://localhost:9999/api/auction/get-history-view-by-admin/'+ $scope.id +'?page='+currentPage+'&limit=10',
            method: 'GET'
        }).then(function (response) {
            //console.log(response.data);
            $scope.auction = response.data.DATA;   
            if (check) {
                setPagination(response.data.PAGINATION.TOTAL_PAGES, currentPage);
                check = false;
            }
        }, function () {
            swal(
                    'Problem',
                    'Please check your internet connection',
                    'error'
               );
        });
    }
    
    
    setPagination = function (totalPage, currentPage) {
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
        });
    };

    $("#pagination").on("page", function (event, currentPage) {
        check = false;
        getCurrentPage = currentPage;
        $scope.showData(currentPage);
    });

    $scope.showData(currentPage);
    
});


