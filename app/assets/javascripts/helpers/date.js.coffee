Ember.Handlebars.registerBoundHelper 'date', (date) ->
  if date == null then "" else moment(date).format("MMM Do YYYY")