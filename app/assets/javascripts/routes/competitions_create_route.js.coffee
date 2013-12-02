WorkoutWars.CompetitionsCreateRoute = Ember.Route.extend
  renderTemplate: ->
    @render "competition.edit",
      controller: "competitionsCreate"
