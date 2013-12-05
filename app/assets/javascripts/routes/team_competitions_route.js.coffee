WorkoutWars.TeamCompetitionsRoute = Ember.Route.extend
  model: ->
    @store.findAll('TeamCompetitions')