WorkoutWars.TeamCompetitionsCreateRoute = Ember.Route.extend
  model: ->
    WorkoutWars.TeamCompetition.createRecord()

  renderTemplate: ->
    @render "teamCompetition.edit",
      controller: "teamCompetitionsCreate"