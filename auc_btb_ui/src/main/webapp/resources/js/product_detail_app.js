
var app = angular.module('app', []);
app.controller('ctrl', function ($scope, $filter, $http, $timeout, datetime) {


    //testing customer
    $scope.cus;
    //fetch persons
    $scope.getCus = function (bidder_id) {    
        $http({
            method: 'GET',
            url: 'http://localhost:9999/api/user/search/' + bidder_id
        })
                .then(function (response) {
                    $scope.cus = response.data.DATA;
                    //console.log(response.data.DATA);
                }, function (response) {

                });
    }
    //end testing

    //fetch categories
    $scope.getCategories = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:9999/api/category/get'
        })
                .then(function (response) {
                    $scope.categories = response.data.DATA;
                    //console.log(response.data.DATA);
                }, function (response) {

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


    $scope.getAuction_detail = function (id) {
        
        $http({
            method: 'GET',
            url: 'http://localhost:9999/api/auction/search/' + id
        })
                .then(function (response) {
                    $scope.auc_detail = response.data.DATA;
                    processAuctionItems($scope.auc_detail);
                    //console.log(response.data.DATA);
                }, function (response) {

                });
    }

    // bidding function
    $scope.bidding = function (id) {
        //alert(bidder_id);


        if ($scope.cus.credit <= 0) {
            alert("You don't have enought credit to bit. please charge your balance");
        } else {

            $scope.Nowsday = new Date();
            $scope.bid_log;
            //alert(id);
            $http({
                method: 'GET',
                url: 'http://localhost:9999/api/auction/search/' + id
            })
                    .then(function (response) {
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
                        $scope.bid_log.cus_id = $scope.cus.cus_id;
                        $scope.bid_log.date = $scope.Nowsday;
                        $scope.auction.current_price = $scope.bid_log.current_price;

                        $http.post('http://localhost:9999/api/bid-log/add', $scope.bid_log)
                                .success(function ()
                                {

                                    $http({
                                        method: 'PUT',
                                        url: 'http://localhost:9999/api/auction/update-current-price/' + $scope.auction.auc_id + '/' + $scope.auction.current_price
                                    })
                                            .success(function () {
                                                //console.log($scope.auction);
                                                //alert("update price");
                                                $scope.cus.credit = $scope.cus.credit - 500;
                                                $http.put('http://localhost:9999/api/user/update-balance', $scope.cus)

                                                        .success(function () {
                                                            //$scope.getAuction();
                                                            $scope.getAuction_detail(id);
                                                            //$scope.showData(currentPage);
                                                            alert("You bid succesfully!");
                                                        })
                                                        .error(function ()
                                                        {

                                                        });
                                            })
                                            .error(function () {

                                            });
                                    //alert("done bidding");
                                })
                                .error(function ()
                                {
                                    //alert("error bidding"); 
                                });

                    }, function (response) {

                    });

        }

    }
    // end bidding

//    //=================pagination===========================
//    check = true;
//    currentPage = 1;



//    $scope.showData = function (currentPage) {
//
//        //$http.defaults.headers.common['Authorization'] = 'Basic ZGV2OiFAI2FwaQ==';
//
//        $http({url: 'http://localhost:9999/api/auction/get?page=' + currentPage + '&limit=6',
//            method: 'GET'
//        }).then(function (response) {
//            console.log(response.data);
//            $scope.auctions = response.data.DATA;
//            if (check) {
//                setPagination(response.data.PAGINATION.TOTAL_PAGES, currentPage);
//                check = false;
//            }
//        }, function () {
//            alert('Error');
//        });
//
//
//    }

//    setPagination = function (totalPage, currentPage) {
//        $('#pagination').bootpag({
//            total: totalPage,
//            page: currentPage,
//            maxVisible: 5,
//            leaps: true,
//            firstLastUse: true,
//            first: 'First',
//            last: 'Last',
//            wrapClass: 'pagination',
//            activeClass: 'active',
//            disabledClass: 'disabled',
//            nextClass: 'next',
//            prevClass: 'prev',
//            lastClass: 'last',
//            firstClass: 'first'
//        });
//    };
//
//    $("#pagination").on("page", function (event, currentPage) {
//        check = false;
//        getCurrentPage = currentPage;
//        $scope.showData(currentPage);
//    });
//
//    $scope.showData(currentPage);

    //==============================================
    var tick = function () {
        $scope.currentTime = moment();
        processAuctionItems($scope.auc_detail);
        $timeout(tick, 1000);
    }
    var processAuctionItems = function (data) {
        //angular.forEach(data, function (item) {
            data.remainingTime = datetime.getRemainigTime(data.end_date);
        //});
    }

    $scope.currentTime = moment();

    $timeout(tick, 1000);

    $timeout($scope.auc_detail, 10000);
    //==============================================

});

app.factory('datetime', ['$timeout', function ($timeout) {

        var duration = function (timeSpan) {
            var days = Math.floor(timeSpan / 86400000);
            var diff = timeSpan - days * 86400000;
            var hours = Math.floor(diff / 3600000);
            diff = diff - hours * 3600000;

            var minutes = Math.floor(diff / 60000);
            diff = diff - minutes * 60000;

            var secs = Math.floor(diff / 1000);

            return {'days': days, 'hours': hours, 'minutes': minutes, 'seconds': secs};
        };

        function getRemainigTime(referenceTime) {
            var now = moment().utc();
            return moment(referenceTime) - now;
        }
        return {
            duration: duration,
            getRemainigTime: getRemainigTime
        };
    }]);

app.filter('durationview', ['datetime', function (datetime) {
        return function (input, css) {
            var duration = datetime.duration(input);
            return duration.days + "d:" + duration.hours + "h:" + duration.minutes + "m:" + duration.seconds + "s";
        };
    }]);




