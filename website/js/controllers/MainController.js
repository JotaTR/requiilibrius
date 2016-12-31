App.controller('MainController', ['$scope', '$location',function ($scope, $location) {
    
    //If mobile change css settings!
   // $scope.cssMain = getStyleSheet('main');
    
    $scope.path = $location.path();
    console.log($scope.path);
    document.body.style.overflow="hidden";

    window.onload = function () {  
        document.body.style.overflowY="visible";
        document.body.style.overflowX="hidden";
    }
    

    //inicializa header 
    if($scope.path == '')
    {
        console.log(window.innerHeight+'px');
        $('body').css('padding-top', window.innerHeight+'px');
        $('header').css('height', window.innerHeight+'px');       
    }
    else
    {
        //$('body').css('padding-top', '0px');
    }

    //MENU OPTION SELECTION
    $(".nav li").on("click", function() {
        //Garantir que a cor da opção selecionados no menu se mantem
        $scope.setColors(this);
                
        //Retirar header       
        $('body').css('padding-top', '0px');

        //Scroll to top
        $('body').scrollTop(0);
        
        //Garantir que se o user carrega no menu com conteudo de destaque ou formação aberto se desbloqueia o scroll
        document.body.style.overflowY="visible";//previne que o scroll fique bloqueado depois de sair de um setaque
        document.body.style.overflowX="hidden";//previne que o scroll fique bloqueado depois de sair de um setaque


    });


    $(window).resize(function() {
 
        //actualiza o path
        $scope.path = $location.path();

        
        //Resize ao header
        if($scope.path == ''){
            $('body').css('padding-top', window.innerHeight+'px');
            $('header').css('height', window.innerHeight+'px');       
        }else{
             $('body').css('padding-top', '0px');
        }
    });





     //PARALLAX
    $(window).scroll(function() {

        //home, navbar
        if($scope.path == ''){
            
            $scope.hdr = $('.header').height(); 
            var hdrImg = document.getElementById("header-image");
            hdrImg.style.top = -(window.pageYOffset/2)+"px";
    //TODO:  RETIRAR AS 3 linhas de baixo e colocar no resize window. Ver se tem acesso as variavies 
            $scope.mn = $(".navbar");
            $scope.mns = "navbar-scrolled"; 
            if( $(this).scrollTop() > $scope.hdr ) {
                $scope.mn.addClass($scope.mns);
            } else {
                $scope.mn.  removeClass($scope.mns);
            }
        }
    });
   
    
    $scope.goToPreviousPage = function()
    {
        if (/Mobi/.test(navigator.userAgent))
		{
			if($location.path() == '/equipa')
			{ 
				$location.url('/');
				$scope.setColors(document.getElementById('home-btn'));
			}
			else if($location.path() == '/espaco')
			{ 
				$location.url('/equipa');
				$scope.setColors(document.getElementById('equipa-btn'));
			}
			else if($location.path() == '/destaques')
			{ 
				$location.url('/espaco');
				$scope.setColors(document.getElementById('espaco-btn'));
			}
			else if($location.path() == '/contactos')
			{ 
				$location.url('/destaques');
				$scope.setColors(document.getElementById('destaques-btn'));
			 }
			else if( $location.path() == '' || $location.path() == '/' || $location.path() == '/#'  )
			{//home
				$location.url('/contactos');
				$scope.setColors(document.getElementById('contactos-btn'));
			}
		}
    }
     
    $scope.goToNextPage = function()
    {
        if (/Mobi/.test(navigator.userAgent))
		{
			if($location.path() == '/equipa')
			{ 
				$location.url('/espaco');
				$scope.setColors(document.getElementById('espaco-btn'));
			}
			else if($location.path() == '/espaco')
			{ 
				$location.url('/destaques');
				$scope.setColors(document.getElementById('destaques-btn'));
			}
			else if($location.path() == '/destaques')
			{ 
				$location.url('/contactos');
				$scope.setColors(document.getElementById('contactos-btn'));
			}
			else if($location.path() == '/contactos')
			{ 
				$location.url('/');
				$scope.setColors(document.getElementById('home-btn'));
			}
			else if( $location.path() == '' || $location.path() == '/' || $location.path() == '/#'  )
			{//home
				$location.url('/equipa');
				$scope.setColors(document.getElementById('equipa-btn'));
			}
        }
    }
      
    //Class manipulation methods
    $scope.getStyleSheet = function(unique_title)
    {
        for(var i=0; i < document.styleSheets.length; i++) 
        { 
            if(document.styleSheets[i].title == unique_title) 
            {
                return document.styleSheets[i];
            }
        }
    }
    
    //Colocar a cor correta na upbar
    $scope.setColors = function(element)
    {
        //Permite manter a cor na opção selecionada depois de se clicar em outra coisa
        $(".nav li").removeClass("active");
        $(element).addClass("active");

    }
    
    
}]);