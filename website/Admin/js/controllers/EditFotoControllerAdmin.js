App.controller('EditFotoControllerAdmin', ['$scope', '$sce', '$stateParams','dataServiceAdmin', '$window', function ($scope, $sce, $stateParams, dataServiceAdmin, $window) {
    
	$scope.addLoading = false;
	$scope.deleteLoading = false;
	$scope.uploadLoading = false;
	$scope.saveLoading = false;
	
    $scope.close = function(index)
    {
        $scope.$parent.selectedIndex = -1;
		
        document.body.style.overflowY="visible";
        document.body.style.overflowX="hidden";
    }
    
   $scope.addFoto = function()
   {
		$scope.addLoading = true;	
        dataServiceAdmin.addFoto($scope.entity, $scope.entityList[$scope.index].id).then(function(response)
        {
			$scope.addLoading = false;
			$scope.entityList = $scope.$parent.get_entities();
        });
   }
   
    $scope.deleteFoto = function(imgId)
   {
	   var confirmation = confirm("Tem a certeza que pretende eliminar a foto?");
	   if(!confirmation)
		{
			return;
		}
	   	$scope.deleteLoading = true;

        dataServiceAdmin.deleteFoto(imgId).then(function(response)
        {
			$scope.deleteLoading = false;
			$scope.$parent.get_entities();
        });
   }
   
   $scope.saveFotoDetails = function(imgIndex)
   {
		$scope.saveLoading = true;
        dataServiceAdmin.saveFotoDetails($scope.entityList[$scope.index].img[imgIndex]).then(function(response)
        {
			$scope.saveLoading = false;
            if(response.data == true){
                   alert("Dados alterados");
			}else{
				alert("Erro");
			}
        });
   }
   
   //Services
    $scope.changeFoto = function(imgId)
    {
		var confirmation = confirm("Tem a certeza que pretende alterar a foto?");
		if(!confirmation)
		{
			return;
		}
        var f = document.getElementById('file' + imgId).files[0];
        var r = new FileReader();
        r.onloadend = function(e){
            var data = e.target.result;
			$scope.uploadLoading = true;
            dataServiceAdmin.changeFoto(imgId, data).then(function(response) 
			{
				$scope.uploadLoading = false;
				if(response.data == true){
                    alert("Ficheiro Carregado");
					dataServiceAdmin.getBackups().then(function(response) 
					{
						$scope.$parent.get_entities();
					});
                }else{
                    alert("Erro");
                }
			});
        }
        r.readAsBinaryString(f);
        
    }
	
    
    
    
    
	
    
}]);