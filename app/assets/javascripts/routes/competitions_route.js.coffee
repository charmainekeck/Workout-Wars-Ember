WorkoutWars.CompetitionsRoute = Ember.Route.extend
  model: ->
    @store.findAll('competition')