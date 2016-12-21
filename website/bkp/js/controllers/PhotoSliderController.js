App.controller('PhotoSliderController', function ($scope, $element) {
       
        $scope.direction = 'left';
        $scope.currentIndex = 0;
    
       
        if($element[0].id == 'nutri-fotos')
        {
            $scope.slides = $scope.$parent.nutriSlides;
            $scope.$watch('$parent.nutriSlides', function() {
                $scope.slides = $scope.$parent.nutriSlides;
                console.log($scope.$parent.nutriSlides);
                $scope.currentIndex = 0;
            });
            
        }
        else
        {
            $scope.slides = $scope.$parent.slides;
            console.log($scope.$parent);
            $scope.$watch('$parent.slides', function() {
                $scope.slides = $scope.$parent.slides;
                console.log($scope.$parent.slides);
                $scope.currentIndex = 0;
            });
        }        
        
        if(typeof $scope.$parent.slides !== 'undefined'){
            $scope.infos = $scope.$parent.infos;
        }

        $scope.setCurrentSlideIndex = function (index) {
            $scope.direction = (index > $scope.currentIndex) ? 'left' : 'right';
            $scope.currentIndex = index;
        };

        $scope.isCurrentSlideIndex = function (index) {
            return $scope.currentIndex === index;
        };

        $scope.prevSlide = function () {
            $scope.direction = 'left';
            $scope.currentIndex = ($scope.currentIndex < $scope.slides.length - 1) ? ++$scope.currentIndex : 0;
        };

        $scope.nextSlide = function () {
            $scope.direction = 'right';
            $scope.currentIndex = ($scope.currentIndex > 0) ? --$scope.currentIndex : $scope.slides.length - 1;
        };
    })/**.animation('.slide-animation', function () {
        return {
            beforeAddClass: function (element, className, done) {
                var scope = element.scope();

                if (className == 'ng-hide') {
                    var finishPoint = element.parent().width();
                    if(scope.direction !== 'right') {
                        finishPoint = -finishPoint;
                    }
                    TweenMax.to(element, 0.5, {left: finishPoint, onComplete: done });
                }
                else {
                    done();
                }
            },
            removeClass: function (element, className, done) {
                var scope = element.scope();

                if (className == 'ng-hide') {
                    element.removeClass('ng-hide');

                    var startPoint = element.parent().width();
                    if(scope.direction === 'right') {
                        startPoint = -startPoint;
                    }

                    TweenMax.fromTo(element, 0.5, { left: startPoint }, {left: 0, onComplete: done });
                }
                else {
                    done();
                }
            }
        };
    })**/;
