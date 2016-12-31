App.controller('EquipaController', ['$scope', 'dataService', function ($scope, dataService) {
    
	$scope.get_equipa = function(){
		dataService.getEquipa().then(function(response)
		{
			$scope.equipa = response.data;
			console.log($scope.equipa);
			$scope.$watch('terapeutaMain', function() {
				$scope.slides = $scope.terapeutaMain.img;
			});      
			
			//Get All info
			for ( $scope.allIndex = 0; $scope.equipa.length; $scope.allIndex++ ) 
			{
				if( $scope.equipa[$scope.allIndex].equipa == 'zz')
				{
					break;
				}
			}
			
			$scope.terapeutaMain = $scope.equipa[$scope.terapeutaSelected];
			$scope.terapeutaBefore;  
			
			//Get nutri info
			for ( $scope.nutriIndex = 0; $scope.equipa.length; $scope.nutriIndex++ ) 
			{
				if( $scope.equipa[$scope.nutriIndex].equipa == 'nu')
				{
					break;
				}
			}
			$scope.nutriSlides = $scope.equipa[$scope.nutriIndex].img;  
		 });
	}
	
	//main
    $scope.$parent.setColors(document.getElementById('equipa-btn'));//selecionar côr do butao
    $scope.terapeutaSelected = 0;
    $scope.funcIndex = -1;
    $scope.terapeutaHover = null;


    $scope.administrativas = [];
    $scope.slides = [];
    $scope.fullCV = false;
    $scope.fullCVNutri = false;
	
	$scope.get_equipa();
	
       
	//BUTONS, CLICK e HOVER FUNCTIONS
	$scope.changeTerapeuta = function(index, parentIndex)
	{            
		if(parentIndex > 0)
		{
			index = parentIndex + index;
		}
		$scope.terapeutaBefore = $scope.terapeutaMain;
		$scope.terapeutaMain  = $scope.equipa[index];
		$scope.terapeutaSelected = index;      
		$scope.terapeutaSelectedId = $scope.terapeutaMain.id;      
		console.log($scope.terapeutaMain);
	};   


	$scope.hoverTerapeuta = function(index, parentIndex)
	{
		if(parentIndex > 0)
		{
			index = parentIndex + index;
		}
		$scope.terapeutaBefore = $scope.terapeutaMain;
		$scope.terapeutaMain  = $scope.equipa[index];
		$scope.terapeutaHover = $scope.terapeutaMain.id;




	}; 

	$scope.undoHoverTerapeuta = function()
	{
		$scope.terapeutaMain  = $scope.terapeutaBefore;
		$scope.terapeutaHover = null;          
	}
	
	  //AUX
	$scope.changeActiveFlags = function(nome){   

		nbrTerapeutas = $scope.equipa.length;
		for( var i = 0; i++; i < nbrTerapeutas){

			$scope.equipa[i].activeFlag = false;
			if($scope.equipa[i].nome == nome){
				$scope.equipa[i].activeFlag = true;
			}
		}
	}
}]);	