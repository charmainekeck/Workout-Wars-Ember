WorkoutWars.UsersRoute = Ember.Route.extend
  model: ->
    @store.findAll("user")