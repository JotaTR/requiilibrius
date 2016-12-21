App.service('dataServiceAdmin', ['$http', function($http){
    
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
    
    this.getServico = function()
    {
		return $http.get('php/access.php', {params: {funcao: 'get_servico'}});
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
    
    
	//admin db
	this.saveDestaque = function(destaque)
    {    
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'save_destaque', 
							id: destaque.id, 
							titulo: destaque.titulo, 
							texto: destaque.texto,
							resumo: destaque.resumo
						};
		console.log(data_to_send);
		return $http.post('php/adminAccess.php', data_to_send);
	};
    
    //admin db
	this.saveFuncionario = function(funcionario)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'save_funcionario', 
							id: funcionario.id, 
							nome: funcionario.nome, 
							resumo: funcionario.resumo,
							cv: funcionario.cv
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
    
    //admin db
	this.saveImg = function(img)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {funcao: "save_img", img: img};
		return $http.post('php/adminAccess.php', data_to_send);
	};
    
	//admin DB
	this.saveVideo = function(video)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {funcao: "save_video", video: video};
		return $http.post('php/adminAccess.php', data_to_send);
	};
	 
    //admin db
	this.insertImg = function(img)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {funcao: "insert_img", img: img};
		return $http.post('php/adminAccess.php', data_to_send);
	};
    
	//admin DB
	this.insertVideo = function(video)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {funcao: "insert_video", video: video};
		return $http.post('php/adminAccess.php', data_to_send);
	};
	 
    //admin db
	this.deleteImg = function(imgId)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {funcao: "delete_img", id: img};
		return $http.post('php/adminAccess.php', data_to_send);
	};
    
	//admin DB
	this.deleteVideo = function(videoId)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {funcao: "delete_video", id: video};
		return $http.post('php/adminAccess.php', data_to_send);
	};
	
	
    //GETS
	this.getEntidadesImg = function()
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {funcao: "get_entidades_img"};
		return $http.post('php/adminAccess.php', data_to_send);
	};
	
     //GETS
	this.getEntidadesImg = function()
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {funcao: "get_entidades_video"};
		return $http.post('php/adminAccess.php', data_to_send);
	};
    
   

}]);