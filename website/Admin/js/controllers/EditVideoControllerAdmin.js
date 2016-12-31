App.controller('EditVideoControllerAdmin', ['$scope', '$sce', '$stateParams','dataServiceAdmin', '$window', function ($scope, $sce, $stateParams, dataServiceAdmin, $window) {
    
	$scope.addLoading = false;
	$scope.deleteLoading = false;
	$scope.uploadLoading = false;
	$scope.saveLoading = false;
	$scope.videoType2Upload = "";
	$scope.videoTypes = ["link","file"];
	
    $scope.close = function(index)
    {
        $scope.$parent.selectedVideoIndex = -1;
		
        document.body.style.overflowY="visible";
        document.body.style.overflowX="hidden";
    }
    
		
  
    
    //Video
     $scope.addVideo = function()
   {
		console.log($scope.entityList);
		console.log($scope.index);
		console.log($scope.entityList[$scope.index]);
		console.log($scope.entityList[$scope.index].id);
	
		$scope.addLoading = true;	
        dataServiceAdmin.addVideo($scope.entity, $scope.entityList[$scope.index].id).then(function(response)
        {
			$scope.addLoading = false;
			$scope.entityList = $scope.$parent.get_entities();
        });
   }
   
    $scope.deleteVideo = function(videoId)
   {
	    var confirmation = confirm("Tem a certeza que pretende eliminar o video?");
		if(!confirmation)
		{
			return;
		}
		
	   	$scope.deleteLoading = true;
        dataServiceAdmin.deleteVideo(videoId).then(function(response)
        {
			$scope.deleteLoading = false;
			$scope.$parent.get_entities();
        });
   }
   
   $scope.saveVideoDetails = function(videoIndex)
   {
		$scope.saveLoading = true;
        dataServiceAdmin.saveVideoDetails($scope.entityList[$scope.index].video[videoIndex]).then(function(response)
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
    $scope.changeVideo = function(videoId)
    {
		var confirmation = confirm("Tem a certeza que pretende alterar o video?");
		if(!confirmation)
		{
			return;
		}
		var selector_text = document.getElementById("selector" + videoId).options[document.getElementById("selector" + videoId).selectedIndex].value;
		var raw_videoType2Upload = selector_text.split(":");
		$scope.videoType2Upload = raw_videoType2Upload[1];
		alert($scope.videoType2Upload);
		
		if($scope.videoType2Upload == "file")
		{	
			var f = document.getElementById('file' + videoId).files[0];
			var r = new FileReader();
			r.onloadend = function(e){
				var data = e.target.result;
				$scope.uploadLoading = true;
				dataServiceAdmin.changeVideo(videoId, data, $scope.videoType2Upload).then(function(response) 
				{
					$scope.uploadLoading = false;
					if(response.data == true){
						alert("Ficheiro Carregado");
						dataServiceAdmin.getBackups().then(function(response) 
						{
							//$scope.$parent.get_entities();
						});
					}else{
						alert("Erro");
					}
				});
			}
			r.readAsBinaryString(f);
        }
		else if($scope.videoType2Upload == "link")
		{
			var data = document.getElementById('link' + videoId).value;
			$scope.uploadLoading = true;
			dataServiceAdmin.changeVideo(videoId, data, $scope.videoType2Upload).then(function(response) 
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
    }
	
    
}]);