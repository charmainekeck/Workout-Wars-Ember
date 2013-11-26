WorkoutWars.UserActivitiesRoute = Ember.Route.extend
  model: ->
    WorkoutWars.Activity.find()