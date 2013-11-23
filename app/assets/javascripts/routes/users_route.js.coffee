WorkoutWars.UsersRoute = Ember.Route.extend
  model: ->
    WorkoutWars.User.find()