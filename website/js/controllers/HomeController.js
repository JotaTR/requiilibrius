App.controller('HomeController', ['$scope', 'dataService',function ($scope,dataService) {
    
    $scope.$parent.setColors(document.getElementById('home-btn'));//selecionar côr do butao
    
    //getDATA
   dataService.getTecnicas().then(function(response) {
        $scope.tecnicas = response.data;      
    });
    
    dataService.getTopDestaques().then(function(response) {
        
        $scope.destaques = response.data;
        console.log($scope.destaques);
        $scope.destaqueIndex = 0;
        
         $scope.setCurrentSlideIndex = function (index) {
            $scope.direction = (index > $scope.destaqueIndex) ? 'left' : 'right';
            $scope.destaqueIndex = index;
        };

        $scope.isCurrentSlideIndex = function (index) {            
            return $scope.destaqueIndex === index;
        };

        $scope.prevDestaque = function () {
            $scope.direction = 'left';
            $scope.destaqueIndex = ($scope.destaqueIndex < $scope.destaques.length - 1) ? ++$scope.destaqueIndex : 0;
        };

        $scope.nextDestaque = function () {
            $scope.direction = 'right';
            $scope.destaqueIndex = ($scope.destaqueIndex > 0) ? --$scope.destaqueIndex : $scope.destaques.length - 1;
        };
         
    });
    
    
    
    
    //Services
    $scope.servicoHover = 0;
    $scope.hoverServico = function(servicoId){
        $scope.servicoHover = servicoId;
        $scope.showMoreFlag[servicoId - 1] = true;
    }
    
    $scope.unhoverServico = function(index){
        $scope.showMoreFlag[index] = false;    
    }
    
    $scope.unhoverServicos = function(){
        $scope.servicoHover = 0;
    }
    
    $scope.showMoreFlag = [false,false,false,false];
    
    
    
    
    //Map
    $scope.map = { center: { latitude: 38.68450896, longitude: -9.31698292 }, 
                   zoom: 15,
                   options:{
                        panControl : true,
                        zoomControl : true,
                        scaleControl : true,
                        draggable: false,
                        scrollwheel:false
                   }
                 };
     $scope.marker = { id: '1', coord: { latitude: 38.68450896, longitude: -9.31698292 }, data: 'R\'equilibrius', icon: 'https://maps.google.com/mapfiles/ms/icons/green-dot.png'}
}]);
