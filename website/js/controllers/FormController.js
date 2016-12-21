/**
 * AngularJS module to process a form.
 */
App.controller('FormController', function ($scope, dataService) {
    
    $scope.sending_flag = false;
    $scope.ok_flag = false;
    $scope.error_flag = false;
    
    $scope.subjectListOptions = {
      'info': 'Gostaria de ser contactado/a',
      'sugestoes': 'Sugestões'
    };

    $scope.message = {
        
        nome: null,
        apelido: null,
        email: null,
        telefone: null,
        descricao: null
    }
    
    // Form submit handler.
    $scope.submit = function(form) {
        
        $scope.sending_flag = true;
        
        // Trigger validation flag.
        $scope.submitted = true;

        // If form is invalid, return and let AngularJS show validation errors.
        if (form.$invalid) {
            console.log("invalido")
            return;
        }
        dataService.sendContact($scope.message)
		.then(function(res){
			console.log("message sent!");
            $scope.error_flag = false;
            $scope.sending_flag = false;
            $scope.ok_flag = true;
		}, function(err){
            console.log("%cerror contacting service:" + err, 'color:red');
            $scope.ok_flag = false;
            $scope.sending_flag = false;
            $scope.error_flag = true;
		});
    }   
});
