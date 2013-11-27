WorkoutWars.ExercisesRoute = Ember.Route.extend
  model: ->
    WorkoutWars.Exercise.find()