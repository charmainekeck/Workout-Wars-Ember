WorkoutWars.CompetitionsCreateRoute = Ember.Route.extend
  model: ->
    WorkoutWars.Challenge.createRecord()

  renderTemplate: ->
    @render "challenge.edit",
      controller: "challengesCreate"
