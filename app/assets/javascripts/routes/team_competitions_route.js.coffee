WorkoutWars.TeamCompetitionsRoute = Ember.Route.extend
  model: ->
    @store.all('TeamCompetitions')