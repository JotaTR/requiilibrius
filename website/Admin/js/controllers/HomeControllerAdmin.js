App.controller('HomeControllerAdmin', ['$scope', '$sce', '$stateParams','dataServiceAdmin', '$window', function ($scope, $sce, $stateParams, dataServiceAdmin, $window) {
    
	$scope.uploadLoading = false;
	$scope.backupLoading = false;
	$scope.downloadLoading = false;
	$scope.restoreLoading = false;
	$scope.deleteLoading = false;
	
	//Needs to be at top
	$scope.getBackups = function(){
		dataServiceAdmin.getBackups().then(function(response) 
		{
			$scope.backups = response.data; 
			console.log($scope.backups);
		});
	}
	
	//MAIN
	$scope.selected_backup = -1;
	$scope.getBackups();
	
	
	//Services
    $scope.upload_file = function()
    {
        var f = document.getElementById('file').files[0];
        var r = new FileReader();
        console.log(document.getElementById('file').files);
        console.log(document.getElementById('file').files[0]);
        r.onloadend = function(e){
            var data = e.target.result;
			$scope.uploadLoading = true;
            dataServiceAdmin.upload_file(data).then(function(response) 
			{
				$scope.uploadLoading = false;
				if(response.data == true){
                    alert("Ficheiro Carregado");
					dataServiceAdmin.getBackups().then(function(response) 
					{
						$scope.getBackups();
					});
                }else{
                    alert("Erro");
                }
			});
        }
        r.readAsBinaryString(f);
        
    }
    
    
    $scope.download_file = function()
    {
		if($scope.selected_backup < 0)
		{
			alert("Por favor, escolha um ficheiro!");
			return;
		}	

		$scope.downlaodLoading = true;
		dataServiceAdmin.download_file($scope.backups[$scope.selected_backup].filename ).then(function(response) 
		{	
			$scope.downlaodLoading = false;
			$scope.generate_file(response.data.file_data, $scope.backups[$scope.selected_backup].filename);
		});
    }
    
    $scope.delete_file = function()
    {
		if($scope.selected_backup < 0)
		{
			alert("Por favor, escolha um ficheiro!");
			return;
		}
		$scope.deleteLoading = true;
        dataServiceAdmin.delete_file($scope.backups[$scope.selected_backup].filename).then(function(response) 
        {
			$scope.deleteLoading = false;
            if(response.data == true){
				alert("Ficheiro Eliminado");
				$scope.getBackups();
			}else{
				alert("Erro");
			}
        });
    }

        
    $scope.backup_website = function()
    {
		$scope.backupLoading = true;
        dataServiceAdmin.backup_website().then(function(response) 
        {
			$scope.backupLoading = false;
            if(response.data == true){
				alert("Backup Criado.");
				$scope.getBackups();
			}else{
				alert("Erro a criar backup!");
			} 
        });
    }
   
    $scope.restore_website = function()
    {
		$scope.downlaodLoading = true;
		if($scope.selected_backup < 0)
		{
			alert("Por favor, escolha um ficheiro!");
			return;
		}
		$scope.restoreLoading = true;
        dataServiceAdmin.restore_website($scope.backups[$scope.selected_backup].filename).then(function(response) 
        {
			$scope.restoreLoading=false;
			if(response.data == true){
				alert("Website restaurado.");
				$scope.getBackups();
			}else{
				alert("Erro a resturar site!");
			} 
        });
    }
        
    $scope.getFiles = function()
    {
        dataServiceAdmin.getFiles().then(function(response) 
        {
            $scope.fileList = response.data;  
        });
    }
	
	//Internal
	$scope.select_backup = function(index)
    {
		$scope.selected_backup = index;
    }
	
	
	
	//AUXS
	$scope.generate_file = function(file_data, filename){
		
		var file = new Blob([ file_data_dec ], {
			type : 'application/json'
		});
		//trick to download store a file having its URL
		var fileURL = URL.createObjectURL(file);
		var a = document.createElement('a');
		a.href = fileURL; 
		a.target = '_blank';
		a.download = filename;
		document.body.appendChild(a);
		a.click();
	}
	
	
	$scope.timeConverter = function(UNIX_timestamp){
		 var a = new Date(UNIX_timestamp * 1000);
		 var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
		 var year = a.getFullYear();
		 var month = months[a.getMonth()];
		 var date = a.getDate();
		 var hour = a.getHours();
		 var min = a.getMinutes();
		 var sec = a.getSeconds();
		 var time = date + ' ' + month + ' ' + year + ' ' + hour + ':' + min + ':' + sec ;
		 return time;
	}
        
}]);