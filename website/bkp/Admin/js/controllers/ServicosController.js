App.controller('ServicosController', ['$scope', 'dataService', '$location', '$sce', '$timeout', function ($scope, dataService, $location, $filter, $timeout) {
    
    $scope.$parent.setColors(document.getElementById('servicos-btn'));//selecionar côr do butao
    
    $('body').scrollTop(0);
    $scope.path = $location.path();
	
    dataService.getServico("ALL").then(function(response) {
        $scope.servicos = response.data;   
        console.log($scope.servicos);
        $scope.set_content($scope);
    });
     


    $scope.set_content = function(){
        switch($scope.path) {
            case '/alteracoes-posturais':
                $scope.get_service_content('ap',$scope);
                break;
            case '/danca':
                $scope.get_service_content('fd',$scope);
                break;
            case '/desporto':
                $scope.get_service_content('d',$scope);
                break;
            case '/musculo-esqueletica':
                $scope.get_service_content('me',$scope);
                break;
            case '/nutricao':
                $scope.get_service_content('n',$scope);
                break;
            case '/neuro-muscular':
                $scope.get_service_content('nm',$scope);
                break;
            case '/saude-crianca':
                $scope.get_service_content('sc',$scope);
                break;
            case '/saude-idoso':
                $scope.get_service_content('si',$scope);
                break;
            case '/saude-mulher':
                $scope.get_service_content('sm',$scope);
                break; 
            case '/fisioterapia-domicilio':
                $scope.get_service_content('do',$scope);
                break;
            default:
                break;
        }
    }


    $scope.get_service_content = function($pagina){

        var servicosNbr = $scope.servicos.length;

        console.log($pagina);
        for( var i = 0; i < servicosNbr; i++ ){
            console.log($scope.servicos[i].pagina);
            if($pagina == $scope.servicos[i].pagina){
                $scope.titulo =  $scope.servicos[i].titulo;
                $scope.path = $location.path();
                $scope.mainText = $scope.servicos[i].texto;
                $scope.mainList =  $scope.servicos[i].items;
                $scope.video =  $scope.servicos[i].video;
                $scope.slides = $scope.servicos[i].img;
                console.log( $scope.slides);
                break;

            }
        }
    }
        
}]);