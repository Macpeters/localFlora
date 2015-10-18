angular.module('LocalFlora', [])
  .controller('MainCtrl', ['$scope', '$http', function($scope, $http){
    $http.defaults.headers.common['Accept'] = 'application/json';
    $http.defaults.headers.common['Content-Type'] = 'application/json';
  }])

  .controller('PlantsCtrl', ['$scope', '$http', function($scope, $http){
     $http.get('/').then(function(response){
       $scope.plants = response.data;
     });
  }])

  .controller('PlantCtrl', ['$scope', '$http', function($scope, $http){
    $scope.plant_id = window.location.pathname.split("/")[2]
    $scope.plant_url = '/plants/' + $scope.plant_id;

     $scope.getPlantData = function(){
        $http.get($scope.plant_url).then(function(response){
          $scope.plant = response.data.plant;
          $scope.flower = response.data.flower;
          $scope.fruit = response.data.fruit;
          $scope.master = response.data.plant;
          
          $scope.locations = response.data.locations;
          $scope.sizes = response.data.sizes;
          $scope.colours = response.data.colours;
          $scope.months = response.data.months;
          $scope.arrangements = response.data.arrangements;
          $scope.margins = response.data.margins;
          $scope.tip_shapes = response.data.tip_shapes;
          $scope.base_shapes = response.data.base_shapes;
          $scope.root_types = response.data.root_types;
          $scope.stalk_shapes = response.data.stalk_shapes;
        });
     };
     $scope.getPlantData();

      $scope.update = function(plant) {
        $scope.master = angular.copy(plant);
        $http.patch($scope.plant_url, {
            plant: $scope.plant, 
            flower: $scope.flower,
            fruit: $scope.fruit,
            leaf: $scope.leaf,
            stalk: $scope.stalk,
            root: $scope.root
        }).then(function(response) {
          $scope.plant = response.data.plant;
          $scope.flower = response.data.flower;
          $scope.fruit = response.data.fruit;
          $scope.leaf = response.data.leaf;
          $scope.root = response.data.root;
          $scope.stalk = response.data.stalk;

          $scope.master = response.data.plant;
        }, function(response) {
          console.log("error: ", response)
        });
      };

      $scope.reset = function() {
        $scope.plant = angular.copy($scope.master);
      };
  }]);