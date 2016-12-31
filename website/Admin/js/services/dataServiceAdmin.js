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
		return $http.get('../php/access.php', {params: {funcao: 'get_equipa'}});
	};
    
    this.getServico = function()
    {
		return $http.get('../php/access.php', {params: {funcao: 'get_servico'}});
	};
    
    this.getEspaco = function()
    {
		return $http.get('../php/access.php', {params: {funcao: 'get_espaco'}});
	};
    
    this.getDestaques = function(lastId)
    {  
		return $http.get('../php/access.php', {params: {funcao: 'get_all_destaques', last_id: lastId}});
	};
    
    this.getTopDestaques = function()
    {    
		return $http.get('../php/access.php', {params: {funcao: 'get_all_destaques'}});
	};
    	
    this.getTecnicas = function(){
		return $http.get('../php/access.php', {params: {funcao: 'get_tecnicas'}})
    };
    
    
    
    
    
    
    
    
    
     //admin db
	this.backup_website = function()
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'backup_website'
						};
		return $http.post('php/adminAccess.php', data_to_send);
	}; 
    
    //admin db
	this.restore_website = function(filename)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'restore_website', 
							'filename': filename
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
     
    //admin db
	this.upload_file = function(file)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'upload_file',
                            'file': file
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
     
    //admin db
	this.download_file = function(filename)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'download_file', 
							'filename': filename
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
     
    //admin db
	this.delete_file = function(filename)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'delete_file', 
							'filename': filename
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
    
   
   
    
	
	
	
	//HOMES CONTROLLER SERVICES
    this.getBackups = function(destaque)
    {    
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'get_backups'
						};
		console.log(data_to_send);
		return $http.post('php/adminAccess.php', data_to_send);
	};
    
    
	//DESTAQUES CONTROLLER SERVICES
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
	
	this.deleteDestaque = function(destaqueId)
    {    
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'delete_destaque', 
							id: destaqueId
						};
		console.log(data_to_send);
		return $http.post('php/adminAccess.php', data_to_send);
	};this.addDestaque = function()
    {    
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'add_destaque'
						};
		console.log(data_to_send);
		return $http.post('php/adminAccess.php', data_to_send);
	};
    
	//EQUIPA CONTROLLER SERVICES
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
    
	this.addFoto = function(entidade, entidade_id, path)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'add_foto', 
							'entidade': entidade,
							'entidade_id': entidade_id,
							'path': path
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
	
    this.deleteFoto = function(imgId)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'delete_foto', 
							'imgId': imgId
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
    
	this.saveFotoDetails = function(imagem)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'save_foto_details',
							img: imagem
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
        
    this.changeFoto = function(imgId, img_file)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'change_foto',
                            'file': img_file,
                            'imgId': imgId
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
   
    
    
    
    
    
    
    this.addVideo = function(entidade, entidade_id, path)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'add_video', 
							'entidade': entidade,
							'entidade_id': entidade_id
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
	
    this.deleteVideo = function(videoId)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'delete_video', 
							'videoId': videoId
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
    
	this.saveVideoDetails = function(video)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'save_video_details',
							video: video
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
        
    this.changeVideo = function(videoId, video_file, videoType)
    {   
		$http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
		data_to_send = {
							funcao: 'change_video',
                            'file': video_file,
                            'videoId': videoId,
                            'videoType': videoType
						};
		return $http.post('php/adminAccess.php', data_to_send);
	};
   
   

}]);