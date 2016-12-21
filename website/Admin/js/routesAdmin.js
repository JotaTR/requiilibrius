/****************************
ROUTES
****************************/
App.config(function ($stateProvider, $urlRouterProvider) {

   $urlRouterProvider.otherwise('homeAdmin');

    $stateProvider.state('homeAdmin', {
            url: '/homeAdmin',
            templateUrl: 'views/homeAdmin.html',
            controller: 'HomeControllerAdmin',
            data: {
            }
        })
        .state('destaquesAdmin', {
            url: '/destaquesAdmin:destaques_id?destaque_id',
            templateUrl: 'views/conteudosAdmin.html',
            controller: 'DestaquesControllerAdmin',
            data: {
            },
            params: {
                destaque_id: null
            }
        }).state('equipaAdmin', {
            url: '/equipaAdmin',
            templateUrl: 'views/equipaAdmin.html',
            controller: 'EquipaControllerAdmin',
            data: {
            }
        }).state('mmAdmin', {
            url: '/mmAdmin',
            templateUrl: 'views/multimediaAdmin.html',
            controller: 'MultimediaControllerAdmin',
            data: {
            }
        })
});