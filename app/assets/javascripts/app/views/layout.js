App.Layouts.main = Mn.LayoutView.extend({
	template: JST['layout/main'],
	regions: {
		'new': '.new',
		'articles':".articles"
	},
	el: 'body',
  childEvents: {
  	'submit:form':'onChildSubmitForm'
  },
	onChildSubmitForm: function(childview,options){
		console.log("child submit:form event caught",childview);
		console.log(this.getRegion('articles').currentView);
		var collection = this.getRegion('articles').currentView.collection;
		var model = new App.Models.Article(
			{
				title:childview.ui.title.val(),
				text:childview.ui.text.val()
		});
		model.save().success(function(response){
			collection.add(response);
			$("html, body").animate({ scrollTop: $(document).height() }, 1000);
		});
	},
	onAddArticle: function(childview,options){
		console.log("add article",options);
	}
});
