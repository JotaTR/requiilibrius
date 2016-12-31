'use strict';
var App = angular.module("App", ['ngResource', 
                                 'angular-md5', 
                                 'ui.router', 
                                 'naif.base64', 
                                 'uiGmapgoogle-maps',
                                 'ngAnimate',
                                 'ngTouch',
                                 'ngSanitize'
                                ]);

App.directive('servicoTemplate', function () {
    return {
        templateUrl: 'directives/servicoTemplate.html',
        restrict: 'E',
        replace: false,
        scope: {    
            titulo: "@",
            mainPhoto: "@",
            mainText: "@",
            mainList: "=",
            slides:"=",
            video:"="
        },
       
    };

});


App.directive('servicoQaTemplate', function () {
    return {
        templateUrl: 'directives/servicoTemplate_QA.html',
        restrict: 'E',
        replace: false,
        scope: {    
            titulo: "@",
            items:"=",
            slides:"=",
            video:"="
       },
       
    };

});

    
App.directive('resizeSmallImg', function() {
    return function(scope, element, attrs) {
        $scope.resizeElement(element);//alterar o tamanho de cada ng-repeat. colocar " resize-small-img" como atributo do div com ng-repeat
    };
});






App.directive("contenteditable", function () {
    
    return {
      restrict: "A",  //A for Attribute, E for Element, C for Class & M for comment
      require: "ngModel",  //requiring ngModel to bind 2 ways.
      link: linkFunc
    }
    //----------------------------------------------------------------------//
    function linkFunc(scope, element, attributes,ngModelController) {
        // From Html to View Model
        // Attaching an event handler to trigger the View Model Update.
        // Using scope.$apply to update View Model with a function as an
        // argument that takes Value from the Html Page and update it on View Model
        element.on("keyup blur change", function () {
          scope.$apply(updateViewModel)
        })
        
        function updateViewModel() {
          var htmlValue = element.text()
          ngModelController.$setViewValue(htmlValue)
        }
              // from View Model to Html
              // render method of Model Controller takes a function defining how
              // to update the Html. Function gets the current value in the View Model
              // with $viewValue property of Model Controller and I used element text method
              // to update the Html just as we do in normal jQuery.
              ngModelController.$render = updateHtml
              
              function updateHtml() {
                var viewModelValue = ngModelController.$viewValue
                element.text(viewModelValue)
              }
    // General Notes:- ngModelController is a connection between backend View Model and the 
    // front end Html. So we can use $viewValue and $setViewValue property to view backend
    // value and set backend value. For taking and setting Frontend Html Value, Element would suffice.
        
    }
  });


  
App.directive('fileModel', ['$parse', function ($parse) {
	return {
		restrict: 'A',
		link: function(scope, element, attrs) {
			var model = $parse(attrs.fileModel);
			var modelSetter = model.assign;
			element.bind('change', function(){
				scope.$apply(function(){
					modelSetter(scope, element[0].files[0]);
				});
			});
		}
	};
}]);

App.filter("trustUrl", ['$sce', function ($sce) {
     return function (recordingUrl) {
         if(typeof recordingUrl === 'undefined' || recordingUrl === null){
            return recordingUrl;
        }else{
            return $sce.trustAsResourceUrl(recordingUrl);
        }
     };
}]);


App.filter('tituloFuncionario', function() {
     return function(equipa) {
         /*
         if(equipa == 'ft'){
             return 'Fisioterapeuta'
         }else if(equipa == 'nu'){
             return 'Nutricionista';
         }
         */
         return "";
     };
});

App.filter('textFromDB', function() {
    return function(texto) {       
        if(typeof texto === 'undefined' || texto === null){
            return texto;
        }else{
            return '<p>' + texto.replace(new RegExp('<br>','g'), '</p><p>') + '</p>';
        }
     };
});


App.filter('destaqueImageFilter', function() {
    return function(path) {       
        if(typeof path === 'undefined' || path === null || path == ""){
            return 'img/logo-quad.jpg';
        }else{
            return path;
        }
     };
});

