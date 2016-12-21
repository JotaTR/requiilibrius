App.controller('FormacaoController', ['$scope', '$sce', 'dataService', function ($scope, $sce, dataService) {
        
    $scope.titulo = "Apoio à comunidade e Investigação";
    $scope.contentSelected = -1;       
    $scope.conteudo = dataService.getFormacao();
    $scope.contedoSize = $scope.conteudo.length;
    console.log($scope.conteudo[1].video[0].type);
    
    $scope.showMore = function(index){

        $scope.contentSelected = index;
        document.body.style.overflow="hidden";
       // $('.teste').openDOMWindow({ eventType:'click', loader:1, loaderImagePath:'animationProcessing.gif', loaderHeight:16, loaderWidth:17 });
    }
    $scope.showNoMore = function(){
        document.body.style.overflowY="visible";
        document.body.style.overflowX="hidden";
        $scope.contentSelected = -1;
    }
    
    $scope.showNext = function(){    
        if( ($scope.contentSelected + 1) == $scope.contedoSize ){
            $scope.contentSelected = 0;
        }else{
            $scope.contentSelected = $scope.contentSelected + 1;
        }
    }
    
    $scope.showPrevious = function(){    
        if( ($scope.contentSelected + 1) == 0 ){
            $scope.contentSelected = $scope.contedoSize;
        }else{
            $scope.contentSelected = $scope.contentSelected - 1;
        }
    }
    
}]);