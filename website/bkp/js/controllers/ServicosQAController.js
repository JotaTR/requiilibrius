App.controller('ServicosQAController', ['$scope', 'dataService', '$location', '$sce', '$timeout', function ($scope, dataService, $location, $filter, $timeout) {
    
    $scope.$parent.setColors(document.getElementById('servicos-btn'));//selecionar côr do butao
    
    $('body').scrollTop(0);
    $scope.path = $location.path();
    $scope.slides;
        
	$scope.get_service_content = function($pagina){
		
		dataService.getServico($pagina).then(function(response) {
			
			$scope.servicos = response.data;   
			console.log($scope.servicos);
			$scope.titulo =  $scope.servicos[0].titulo;
			$scope.itemsQA = $scope.servicos[0].itemsQA;
			$scope.slides = $scope.servicos[0].img;
			
			$scope.showAnswer = [];
			for (var i = 0; i < $scope.itemsQA.length; i++){
				$scope.showAnswer[i] = false;
			}
		});
	}
	
	switch($scope.path) {
		case '/alteracoes-posturais':
			$scope.get_service_content('ap');
			break;
		case '/danca':
			$scope.get_service_content('fd');
			break;
		case '/desporto':
			$scope.get_service_content('d');
			break;
		case '/musculo-esqueletica':
			$scope.get_service_content('me');
			break;
		case '/nutricao':
			$scope.get_service_content('n');
			break;
		case '/neuro-muscular':
			$scope.get_service_content('nm');
			break;
		case '/saude-crianca':
			$scope.get_service_content('sc');
			break;
		case '/saude-idoso':
			$scope.get_service_content('si');
			break;
		case '/saude-mulher':
			$scope.get_service_content('sm');
			break; 
		case '/fisioterapia-domicilio':
			$scope.get_service_content('do');
			break;
		default:
			break;
	}

	
}]);