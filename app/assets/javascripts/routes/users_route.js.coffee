WorkoutWars.UsersRoute = Ember.Route.extend
  model: ->
    @store.all('user')