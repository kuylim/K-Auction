var app = angular.module('AuctionApp', []);
app.controller('AuctionController', function($scope, $http, $timeout, datetime){
    $scope.getTopBidder = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:9999/api/top-bidder/get-top-bidder'
        })
                .then(function (response) {
                    $scope.Top_Bidder = response.data.DATA;

                    //console.log(response.data.DATA);
                }, function (response) {

                });
    };
    $scope.getTopBidder();
    
    
    $scope.getNumberOfProduct = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:9999/api/product/get-number-of-product'
        })
                .then(function (response) {
                    $scope.Number_of_Product = response.data.DATA;

                    //console.log(response.data.DATA);
                }, function (response) {

                });
    };
    
    $scope.getNumberOfProduct();
    
    $scope.getNumberOfUser = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:9999/api/user/get-number-of-user'
        })
                .then(function (response) {
                    $scope.Number_of_User = response.data.DATA;

                    //console.log(response.data.DATA);
                }, function (response) {

                });
    };
    
    $scope.getNumberOfUser();
    
    $scope.getNumberOfActiveAuctions = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:9999/api/auction/get-active-auctions'
        })
                .then(function (response) {
                    $scope.Number_of_Active_Auctions = response.data.DATA;

                    //console.log(response.data.DATA);
                }, function (response) {

                });
    };
    
    $scope.getNumberOfActiveAuctions();
    
    $scope.getNumberOfDisableAuctions = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:9999/api/auction/get-disable-auctions'
        })
                .then(function (response) {
                    $scope.Number_of_Disable_Auctions = response.data.DATA;

                    //console.log(response.data.DATA);
                }, function (response) {

                });
    };
    
    $scope.getNumberOfDisableAuctions();
    
    $scope.getTopAndLowAuction = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:9999/api/auction/get-top-and-low-auctions'
        })
                .then(function (response) {
                    $scope.TopLowAuction = response.data.DATA;

                    //console.log(response.data.DATA);
                }, function (response) {

                });
    };
    
    $scope.getTopAndLowAuction();
    
     var tick = function () {
        $scope.currentTime = moment();
        processAuctionItems($scope.TopLowAuction);
        $timeout(tick, 1000);
    }
    var processAuctionItems = function (data) {
        angular.forEach(data, function (item) {
            item.remainingTime = datetime.getRemainigTime(item.end_date);
        });
    }

    $scope.currentTime = moment();

    $timeout(tick, 1000);

    $timeout($scope.TopLowAuction, 100);
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

