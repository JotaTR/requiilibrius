App.controller('MultimediaControllerAdmin', ['$scope', '$sce', '$stateParams','dataServiceAdmin', '$window', function ($scope, $sce, $stateParams, dataServiceAdmin, $window) {
      
    $scope.$parent.setColors(document.getElementById('destaques-btn'));//selecionar côr do butao do navbar
    $scope.width = $window.outerWidth;//para ordenar notocias
    $scope.contentSelected = -1; 
    document.body.style.overflowY="visible";
    document.body.style.overflowX="hidden";
    
    dataServiceAdmin.getEntidadesImg().then(function(response) 
    {
        $scope.imgList = response.data;  
       
    });
    
    $scope.saveImg = function(img){    
        dataServiceAdmin.saveDestaque(img).then(function(response) 
        {
            if(response.data == true){
                alert("Dados alterados");
            }else{
                alert("Erro");
            }
        });
    }
	
    $scope.saveVideo = function(video){    
        dataServiceAdmin.saveVideo(video).then(function(response) 
        {
            if(response.data == true){
                alert("Dados alterados");
            }else{
                alert("Erro");
            }
        });
    }
   	
    $scope.insertImg = function(img){    
        dataServiceAdmin.saveVideo(img).then(function(response) 
        {
            if(response.data == true){
                alert("Dados alterados");
            }else{
                alert("Erro");
            }
        });
    }
   	
    $scope.insertVideo = function(video){    
        dataServiceAdmin.saveVideo(video).then(function(response) 
        {
            if(response.data == true){
                alert("Dados alterados");
            }else{
                alert("Erro");
            }
        });
    }
    
    $scope.deleteImg = function(imgId){    
        dataServiceAdmin.saveVideo(imgId).then(function(response) 
        {
            if(response.data == true){
                alert("Dados alterados");
            }else{
                alert("Erro");
            }
        });
    }
    
    $scope.deleteVideo = function(videoId){    
        dataServiceAdmin.saveVideo(videoId).then(function(response) 
        {
            if(response.data == true){
                alert("Dados alterados");
            }else{
                alert("Erro");
            }
        });
    }
    
    
}]);