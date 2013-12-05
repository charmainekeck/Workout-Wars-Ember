WorkoutWars.ExercisesRoute = Ember.Route.extend
  model: ->
    @store.findAll("exercise")