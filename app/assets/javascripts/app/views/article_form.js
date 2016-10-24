App.Views.ArticleForm = Mn.ItemView.extend({
	template: JST['form'],
	tagName: 'div',
	ui: {  // 1
    title: '#id_title',
    form: 'form',
    text: '#id_text',
    addBtn: '.add-btn'
  },
  triggers: {
    'submit form': 'submit:form'
  }
});