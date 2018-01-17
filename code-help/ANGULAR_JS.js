/***
 * v1.0.0.0
 */
 

// Tooltip
<md-tooltip md-direction="bottom">Főoldal</md-tooltip>

// Disabled button
ng-class="{'disabled': loading}"
pub.DeleteAction = function (param1, param2, $event) {
	if ($event && angular.element($event.currentTarget).hasClass("disabled"))
		return;

	...
};


// filter 
<input type="text" class="width100 max-width-none mb5" placeholder="Keresés..." 
           ng-model="CPCWrap.search.name" />
<div ng-repeat="process in processes | filter:CPCWrap.search as filteredProcesses"></div> // CPCWrap.search or filteredProcesses don't need to be initialized (CPCWrap does)
<span class="middlegray" ng-show="filteredProcesses.length == 0 && !loading">Nincs találat.</span>


// $http call hívása
$scope.loading = true;
$scope.GetAllActionTypes(function(response1){
	
	$scope.actionTypes = response1.data;
	$scope.loading = false;
	
});
// $http call (param1 és param2 csak példa, jelzi, hogy a callback az utolsó param)
$scope.GetAllActionTypes = function (param1, param2, callback) {
	callback = (typeof callback !== 'undefined' && callback) ? callback : (function () { ; });

	$http({
		method: 'POST',
		url: '/api/Action/GetAllActionTypes',
		data: {}
	}).then(function successCallback(response) {
		
		callback(response);

	}, function errorCallback(response) {

		NotifyClientFromError($mdToast, response);
		console.error(response.data);

	});
};


// document ready
angular.element(document).ready(function () {
	
});


// Service, inicvializálás
app.service("dbAPIService", function ($q, $http) {

    this.PostServerData = function (url, d) {
        var deferred = $q.defer();

        $http({
            method: "post",
            url: url,
            data: d
        }).then(function (response) {
            deferred.resolve(response);
        }, function (response) {
            deferred.reject(response);
        });

        return deferred.promise;
    }
});
// behivatkozás
app.controller("entitySearchController", function ($scope, $http, dbAPIService) { ... }
// meghívás
var job = dbAPIService.GetServerData("/api/entity/GetTopEntityTypes", "limit=" + 5);
job.then(
	function (response) {
		$scope.topEntityResults = response.data;
		$scope.entitySearchResults = response.data;
	},
	function (response) {
		console.error(response);
	}
);