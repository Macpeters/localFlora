angular.module('flapperNews', [])
  .controller('MainCtrl', ['$scope', '$http', function($scope, $http){
    $http.defaults.headers.common['Accept'] = 'application/json';
    $http.defaults.headers.common['Content-Type'] = 'application/json';
  }])
  .controller('PlantCtrl', ['$scope', '$http', function($scope, $http){
     $http.get('/').then(function(response){
       $scope.plants = response.data;
     });
  }]);