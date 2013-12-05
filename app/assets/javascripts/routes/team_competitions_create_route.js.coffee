WorkoutWars.TeamCompetitionsCreateRoute = Ember.Route.extend
  model: ->
    @store.createRecord('teamCompetition')

  renderTemplate: ->
    @render "teamCompetition.edit",
      controller: "teamCompetitionsCreate"