App.service('dataService', ['$http', function($http){
    
    
    
    this.destaques = null;
    
    this.setDestaques = function(data)
    {
        if(this.destaques == null)
        {
            this.destaques = data;
            console.log('dataservice:');
            console.log(this.destaques);
        }
        else
        {
            //Array.prototype.push.apply(this.destaques,data);
        }
    }
    
    //Remote Service Calls
	this.getEquipa = function()
    {    
		return $http.get('php/access.php', {params: {funcao: 'get_equipa'}});
	};
    
    this.getServico = function(pag)
    {
		return $http.get('php/access.php', {params: {funcao: 'get_servico', 'pagina': pag}});
	};
    
    this.getEspaco = function()
    {
		return $http.get('php/access.php', {params: {funcao: 'get_espaco'}});
	};
    
    this.getDestaques = function(lastId)
    {  
		return $http.get('php/access.php', {params: {funcao: 'get_all_destaques', last_id: lastId}});
	};
    
    this.getTopDestaques = function()
    {    
		return $http.get('php/access.php', {params: {funcao: 'get_all_destaques'}});
	};
    	
    this.getTecnicas = function(){
		return $http.get('php/access.php', {params: {funcao: 'get_tecnicas'}})
    };
    
    
    //Make remote
    this.getServico_QA = function(pag)
    {
        /*return { 
                    titulo: 'Saúde da Mulher',
                    items: [
                                {
                                    'question': "pergnta 1",
                                    'answer': "resposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd  resposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd  resposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd  resposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd sposta 1dsadd asd  ",
                                    'imgUrl':""
                                },{
                                    'question': "pergunta 2",
                                    'answer': "resposta 2",
                                    'imgUrl':""                             
                                }
                            ],
                    img: []
                }*/
		return $http.get('php/access.php', {params: {funcao: 'get_servicoQA', pagina: pag}});
	};
    
   
    
    //deprecated
    this.getTestemunhos = function(){
		//return $http.get('http://localhost:9192/getListEntities');
        return testemunhos = {'big': [
                                    {
                                        nome: 'Paciente 1',
                                        conteudo:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                                        foto:'img/equipa/photo1.png',
                                    },{
                                        nome: 'Paciente 2',
                                        conteudo:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                                        foto:'img/equipa/photo2.png',
                                    },{
                                        nome: 'Paciente 3',
                                        conteudo:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                                        foto:'img/equipa/photo3.png',
                                    }
                                 ],
                                'small': [
                                     {
                                        nome: 'Paciente 1',
                                        conteudo:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                        foto:'img/equipa/photo1.png',
                                    },{
                                        nome: 'Paciente 2',
                                        conteudo:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                        foto:'img/equipa/photo2.png',
                                    },{
                                        nome: 'Paciente 3',
                                        conteudo:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                                        foto:'img/equipa/photo3.png',
                                    },{
                                        nome: 'Paciente 4',
                                        conteudo:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
                                        foto:'img/equipa/photo4.png',
                                    }
                                    
                                ]              
                             }
	}; 
    
    
    this.getFormacao = function(){
        return equipa = [
                            {
                                titulo:"Destaque 7",
                                foto:"img/logo-quad.jpg",
                                resumo:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
                                texto:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"

                             },{
                                titulo:"Destaque 8",
                                foto:"img/logo-quad.jpg",
                                video:[{url:"https://www.youtube.com/watch?v=o8IUZ03Xqtc", type:'link'}],
                                resumo:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
                                texto:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"

                             },
                        ]
    }; 
    
   

}]);