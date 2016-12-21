App.controller('EspacoController', ['$scope', 'dataService', function ($scope, dataService) {
    
    $scope.$parent.setColors(document.getElementById('espaco-btn'));//selecionar côr do butao
     $scope.fotos = [
            {image: 'img/espaco/IMG_7267.jpg', description: 'Image 00'},
            {image: 'img/espaco/IMG_7268.jpg', description: 'Image 01'},
            {image: 'img/espaco/IMG_7269.jpg', description: 'Image 02'},
            {image: 'img/espaco/IMG_7270.jpg', description: 'Image 03'},
            {image: 'img/espaco/IMG_7272.jpg', description: 'Image 04'},
            {image: 'img/espaco/IMG_7273.jpg', description: 'Image 04'},
            {image: 'img/espaco/IMG_7282.jpg', description: 'Image 04'},
            {image: 'img/espaco/IMG_7276.jpg', description: 'Image 04'}
        ];
     dataService.getEspaco().then(function(response) {

        $scope.fotos = response.data;
        $scope.slides = $scope.fotos;//must be named slides for photoslider controller
     });
    
}]);