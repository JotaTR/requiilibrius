App.controller('EquipaControllerAdmin', ['$scope', 'dataServiceAdmin', function ($scope, dataServiceAdmin) {
    
    $scope.$parent.setColors(document.getElementById('equipa-btn'));//selecionar côr do butao
    $scope.terapeutaSelected = 1;
    $scope.terapeutaHover = null;
    $scope.nutricionista = null;
    $scope.administrativas = [];
    $scope.slides = null;
    $scope.fullCV = false;
    $scope.fullCVNutri = false;
    
   
    
    dataServiceAdmin.getEquipa().then(function(response) {

        $scope.equipa = response.data;
        console.log($scope.equipa);
        $scope.$watch('terapeutaMain', function() {
            $scope.slides = $scope.terapeutaMain.img;
        });      
        
        $scope.terapeutaMain = $scope.equipa[$scope.terapeutaSelected - 1];
        $scope.terapeutaBefore;  
        
        //Get nutri info
        for ( $scope.nutriIndex = 0; $scope.equipa.length; $scope.nutriIndex++ ) 
        {
            if( $scope.equipa[$scope.nutriIndex].equipa == 'nu')
            {
                break;
            }
        }
        $scope.nutricionista = $scope.equipa[$scope.nutriIndex];
        $scope.nutriSlides = $scope.nutricionista.img;  
        
       
        //BUTONS, CLICK e HOVER FUNCTIONS
        $scope.changeTerapeuta = function(index){
            $scope.terapeutaBefore = $scope.terapeutaMain;
            $scope.terapeutaMain  = $scope.equipa[index - 1];
            $scope.terapeutaSelected = index;      
            console.log($scope.terapeutaMain);
        };   

        $scope.hoverTerapeuta = function(index){
            $scope.terapeutaBefore = $scope.terapeutaMain;
            $scope.terapeutaMain  = $scope.equipa[index - 1];
            $scope.terapeutaHover = index;
        }; 

        $scope.undoHoverTerapeuta = function(index){
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
       
        $scope.saveFuncionario = function(funcionario){    
            dataServiceAdmin.saveFuncionario(funcionario).then(function(response) 
            {
                if(response.data == true){
                    alert("Dados alterados");
                }else{
                    alert("Erro");
                }
            });
    }
        
     });
    
    
}]);