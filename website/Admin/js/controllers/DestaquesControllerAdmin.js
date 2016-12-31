App.controller('DestaquesControllerAdmin', ['$scope', '$sce', '$stateParams','dataServiceAdmin', '$window', function ($scope, $sce, $stateParams, dataServiceAdmin, $window) {
      
    $scope.$parent.setColors(document.getElementById('destaques-btn'));//selecionar côr do butao do navbar
    $scope.titulo = "Destaques";
    $scope.width = $window.outerWidth;//para ordenar notocias
    $scope.contentSelected = -1; 
    $scope.selectedIndex = -1; 
    $scope.selectedVideoIndex = -1; 
    document.body.style.overflowY="visible";
    document.body.style.overflowX="hidden";
	
    $(window).resize(function() {
         $scope.width = $window.outerWidth;//para ordenar notocias
    });
    
	
	//edit image purposes
	$scope.get_entities = function(){
		dataServiceAdmin.getDestaques().then(function(response) 
        {   
            $scope.conteudo = response.data;
            console.log(response.data);
			return $scope.conteudo;
        });
	}
		
    $scope.showMore = function(index){
        $scope.contentSelected = index;
        document.body.style.overflow="hidden";
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
    
    $scope.saveDestaque = function(destaque)
	{    
        dataServiceAdmin.saveDestaque(destaque).then(function(response) 
        {
            if(response.data == true){
                alert("Dados alterados");
            }else{
                alert("Erro");
            }
        });
    }
	
	$scope.deleteDestaque = function(destaqueId)
	{    
		var confirmation = confirm("Tem a certeza que pretende eliminar o video?");
		if(!confirmation)
		{
			return;
		}
        dataServiceAdmin.deleteDestaque(destaqueId).then(function(response) 
        {
            if(response.data == true){
                $scope.get_entities();
            }else{
                alert("Erro");
            }
        });
	}
	
	$scope.addDestaque = function()
	{    
        dataServiceAdmin.addDestaque().then(function(response) 
        {
            if(response.data == true){
                $scope.get_entities();
            }else{
                alert("Erro");
            }
        });
    }
    
    //Calling multimediaa editors
    $scope.editFotos = function(entidade_id)
    {    
		console.log(entidade_id);
        for ( $scope.selectedIndex = 0; $scope.selectedIndex < $scope.conteudo.length; $scope.selectedIndex++ ) 
        {
            if( $scope.conteudo[$scope.selectedIndex].id == entidade_id)
            {
				document.body.style.overflow="hidden";
                break;
            }
        }
		
    }
    
    
    $scope.editVideos = function(entidade_id)
    {    
		console.log(entidade_id);
        for ( $scope.selectedVideoIndex = 0; $scope.selectedVideoIndex < $scope.conteudo.length; $scope.selectedVideoIndex++ ) 
        {
            if( $scope.conteudo[$scope.selectedVideoIndex].id == entidade_id)
            {
				document.body.style.overflow="hidden";
                break;
            }
        }
    }
    
    
    
    //MAIN
    console.log(dataServiceAdmin.destaques);
    if(dataServiceAdmin.destaques == null)
    {
        dataServiceAdmin.getDestaques().then(function(response) 
        {            
            $scope.conteudo = response.data;
            console.log($scope.conteudo);
            dataServiceAdmin.setDestaques($scope.conteudo);

            //Se for passado parametro pelo URL
            if( !(typeof $stateParams.destaque_id === 'undefined' || $stateParams.destaque_id === null) && ($stateParams.destaque_id > 0) )
            {    
                console.log($stateParams);
                var nbr_destaques = $scope.conteudo.length;
                for( var i=0 ; i<nbr_destaques; i++ ){
                    if($scope.conteudo[i].id == $stateParams.destaque_id){
                        $stateParams.destaque_id = -1;
                        $scope.contentSelected = i;
                        break;
                    }
                }
                $scope.showMore( $scope.contentSelected );
            }
            else
            {
                document.body.style.overflowY="visible";
                document.body.style.overflowX="hidden";
            }
        });
    }
    else
    {
        $scope.conteudo = dataServiceAdmin.destaques;  
        //Se for passado parametro pelo URL
        if( !(typeof $stateParams.destaque_id === 'undefined' || $stateParams.destaque_id === null) && ($stateParams.destaque_id > 0) )
        {    
            console.log($stateParams);
            var nbr_destaques = $scope.conteudo.length;
            for( var i=0 ; i<nbr_destaques; i++ ){
                if($scope.conteudo[i].id == $stateParams.destaque_id){
                    $stateParams.destaque_id = -1;
                    $scope.contentSelected=i;
                    break;
                }
            }
            $scope.showMore( $scope.contentSelected );
        }
        else
        {
            document.body.style.overflowY="visible";
            document.body.style.overflowX="hidden";
        }
    }
}]);