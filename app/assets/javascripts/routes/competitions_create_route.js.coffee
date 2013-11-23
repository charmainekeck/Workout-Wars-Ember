WorkoutWars.CompetitionsCreateRoute = Ember.Route.extend
  model: ->
    WorkoutWars.Competition.createRecord()

  renderTemplate: ->
    @render "competition.edit",
      controller: "competitionsCreate"
