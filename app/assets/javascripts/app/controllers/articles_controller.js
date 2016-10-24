App.Controllers.articlesController = Mn.Object.extend({
	index: function(options){
		var articleCollection = new App.Collections.Articles();
		articleCollection.fetch().then(function(){
			var view = new App.Layouts.main();
			view.render();
			view.getRegion('new').show(new App.Views.ArticleForm());
			view.getRegion('articles').show(new App.Views.ArticleCollectionView({collection: articleCollection}));

		});
	}
});