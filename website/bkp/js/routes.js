/****************************
ROUTES
****************************/
App.config(function ($stateProvider, $urlRouterProvider) {

   $urlRouterProvider.otherwise('/');

    $stateProvider.state('/', {
            url: '/',
            templateUrl: 'views/home.html',
            controller: 'HomeController',
            data: {
                requiresAuth: false
            }
        })
        .state('equipa', {
            url: '/equipa',
            templateUrl: 'views/equipa.html',
            controller: 'EquipaController',
            data: {
            }
        }).state('espaco', {
            url: '/espaco',
            templateUrl: 'views/espaco.html',
            controller: 'EspacoController',
            data: {
            }
        }).state('formacao', {
            url: '/formacao',
            templateUrl: 'views/conteudos.html',
            controller: 'FormacaoController',
            data: {
            }
        }).state('testemunhos', {
            url: '/testemunhos',
            templateUrl: 'views/testemunhos.html',
            controller: 'TestemunhosController',
            data: {
            }
        }).state('destaques', {
            url: '/destaques:destaques_id?destaque_id',
            templateUrl: 'views/conteudos.html',
            controller: 'DestaquesController',
            data: {
            },
            params: {
                destaque_id: null
            }
        }).state('contactos', {
            url: '/contactos',
            templateUrl: 'views/contactos.html',
            controller: 'ContactosController',
            data: {
            }
        })
    
        .state('musculoEsqueletica', {
            url: '/musculo-esqueletica',
            templateUrl: 'views/servico/servicos-me.html',
            controller: 'ServicosController',
            data: {
            }
        }).state('neuroMuscular', {
            url: '/neuro-muscular',
            templateUrl: 'views/servico/servicos-nm.html',
            controller: 'ServicosController',
            data: {
            }
        }).state('saudeCrianca', {
            url: '/saude-crianca',
            templateUrl: 'views/servico/servicos-sc.html',
            controller: 'ServicosController',
            data: {
            }
        }).state('fisioterapiaDanca', {
            url: '/danca',
            templateUrl: 'views/servico/servicos-fd.html',
            controller: 'ServicosController',
            data: {
            }
        }).state('postura', {
            url: '/alteracoes-posturais',
            templateUrl: 'views/servico/servicos-ap.html',
            controller: 'ServicosController',
            data: {
            }
        }).state('saudeMulher', {
            url: '/saude-mulher',
            templateUrl: 'views/servico/servicos-sm.html',
            controller: 'ServicosQAController',
            data: {
            }
        }).state('nutricao', {
            url: '/nutricao',
            templateUrl: 'views/servico/servicos-n.html',
            controller: 'ServicosController',
            data: {
            }
        })
        .state('desporto', {
            url: '/desporto',
            templateUrl: 'views/servico/servicos-d.html',
            controller: 'ServicosController',
            data: {
            }
        }).state('saudeIdoso', {
            url: '/saude-idoso',
            templateUrl: 'views/servico/servicos-si.html',
            controller: 'ServicosController',
            data: {
            }
        }).state('fisioterapiaDomicilio', {
            url: '/fisioterapia-domicilio',
            templateUrl: 'views/servico/servicos-do.html',
            controller: 'ServicosController',
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
        });
});