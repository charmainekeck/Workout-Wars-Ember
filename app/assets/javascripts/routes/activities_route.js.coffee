WorkoutWars.ActivitiesRoute = Ember.Route.extend
  model: ->
    WorkoutWars.Activity.find()