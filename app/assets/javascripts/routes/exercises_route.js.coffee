WorkoutWars.ExercisesRoute = Ember.Route.extend
  model: ->
    @store.all("exercise")