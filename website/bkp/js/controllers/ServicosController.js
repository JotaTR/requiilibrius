App.controller('ServicosController', ['$scope', 'dataService', '$location', '$sce', '$timeout', function ($scope, dataService, $location, $filter, $timeout) {
    
    $scope.slides = [];
    
    $scope.$watch('slides', function() {
        console.log($scope.slides);
        $scope.slides = $scope.slides;
        console.log($scope.slides.length);
    });    

                                      
    $scope.$parent.setColors(document.getElementById('servicos-btn'));//selecionar cOR do butao
    
    $('body').scrollTop(0);
    $scope.path = $location.path();
	
    dataService.getServico("ALL").then(function(response) {
        $scope.servicos = response.data;   
        console.log($scope.servicos);
        $scope.slides = $scope.set_content($scope);
        console.log($scope.slides);
    });
     


    $scope.set_content = function(){
        switch($scope.path) {
            case '/alteracoes-posturais':
                $scope.slides = $scope.get_service_content('ap');
                break;
            case '/danca':
                $scope.slides = $scope.get_service_content('fd');
                break;
            case '/desporto':
                $scope.slides = $scope.get_service_content('d');
                break;
            case '/musculo-esqueletica':
                $scope.slides = $scope.get_service_content('me');
                break;
            case '/nutricao':
                $scope.slides = $scope.get_service_content('n');
                break;
            case '/neuro-muscular':
                $scope.slides = $scope.get_service_content('nm');
                break;
            case '/saude-crianca':
                $scope.slides = $scope.get_service_content('sc');
                break;
            case '/saude-idoso':
                $scope.slides = $scope.get_service_content('si');
                break;
            case '/saude-mulher':
                $scope.slides = $scope.get_service_content('sm');
                break; 
            case '/fisioterapia-domicilio':
                $scope.slides = $scope.get_service_content('do');
                break;
            default:
                break;
        }
        return $scope.slides;
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
        return $scope.slides;
    }
        
}]);