window.App = new Mn.Application();
_.extend(App, {
  Collections: {},
  Models: {},
  Controllers: {},
  Routers: {},
  Layouts: {},
  Views: {},
  Constants: {},
  vent: _.extend({}, Backbone.Events),
  //base_url: "http://localhost:3000"
  base_url: ""
});