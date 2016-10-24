App.Views.ArticleItemView = Mn.ItemView.extend({
	template: JST['article'],
	tagName: 'p'
});

App.Views.ArticleCollectionView = Mn.CollectionView.extend({
	childView: App.Views.ArticleItemView,
	template: JST['compositeview/articles']
});
