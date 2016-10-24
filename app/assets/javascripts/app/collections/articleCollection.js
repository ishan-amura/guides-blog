App.Collections.Articles = Backbone.Collection.extend({
	model: App.Models.Article,
	url: '/articles',
	onAdd: function(){
		console.log("gets called when new collection is added");
	},
	comparator: function(m) {
        return -m.get('created_at');
  }
}); 