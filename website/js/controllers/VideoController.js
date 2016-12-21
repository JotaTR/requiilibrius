App.controller('VideoController',
["$sce", "$timeout", function ($sce, $timeout) {
var controller = this;
controller.state = null;
controller.API = null;
controller.currentVideo = 0;
controller.onPlayerReady = function(API) {
controller.API = API;
};
controller.onCompleteVideo = function() {
controller.isCompleted = true;
controller.currentVideo++;
if (controller.currentVideo >= controller.videos.length) controller.currentVideo = 0;
controller.setVideo(controller.currentVideo);
};
controller.videos = [
{
sources: [
{src: "https://www.youtube.com/watch?v=I7ZUkd44-Co"},
					{src: $sce.trustAsResourceUrl("http://static.videogular.com/assets/videos/videogular.webm"), type: "video/webm"},
					{src: $sce.trustAsResourceUrl("http://static.videogular.com/assets/videos/videogular.ogg"), type: "video/ogg"}
]
},
{
sources: [
{src: "https://www.youtube.com/watch?v=I7ZUkd44-Co"}
]
}
];
    
controller.config = {
preload: "none",
autoHide: false,
autoHideTime: 3000,
autoPlay: false,
sources: controller.videos[0].sources,
theme: {
url: "http://www.videogular.com/styles/themes/default/latest/videogular.css"
},
    
	plugins: {
					controls: {
						autoHide: true,
						autoHideTime: 5000
					}
    }
};
controller.setVideo = function(index) {
controller.API.stop();
controller.currentVideo = index;
controller.config.sources = controller.videos[index].sources;
$timeout(controller.API.play.bind(controller.API), 100);
};
}]
);