App.directive('editVideo', function () {
    return {
        templateUrl: 'directives/editVideo.html',
		controller:'EditVideoControllerAdmin',
        restrict: 'E',
        replace: false,
        scope: {    
            index: "@",
            entityList:"=",
            entity:"@"
       }       
    };

});


App.directive('editFoto', function () {
    return {
        templateUrl: 'directives/editFoto.html',
		controller:'EditFotoControllerAdmin',
        restrict: 'E',
        replace: false,
        scope: {    
            index: "@",
            entityList:"=",
            entity:"@"
       }       
    };

});
