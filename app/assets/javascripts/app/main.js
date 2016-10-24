$(function(){
	App.addInitializer(function(){
		this.controllers = {
			articlesController: new App.Controllers.articlesController({})
		};

		this.routers = {
			articleRouter: new App.Routers.articleRouter({controller: this.controllers.articlesController})
		};
	});
	App.on('start',function(){
		Backbone.history.start({pushState: true});
	});
	App.start();
});