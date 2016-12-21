App.controller('TestemunhosController', ['$scope', 'dataService', function ($scope, dataService) {
    
    $scope.testemunhos = dataService.getTestemunhos();    
    
    
    var transformT = function(testemunhosPerRow){
        
        var testemunhosPequenos = []; 
        var testemunhoSmallLength = $scope.testemunhos.small.length;
        
        var i,j;
        for (i=0,j=testemunhoSmallLength; i<j; i+=testemunhosPerRow) {
            var temp = $scope.testemunhos.small.slice(i,i+testemunhosPerRow);
            testemunhosPequenos.push(temp);
        }   
        return  testemunhosPequenos;
    }
    $scope.testemunhosPequenos = transformT(2);
        
    $scope.slides = $scope.testemunhos.big;
    
}]);