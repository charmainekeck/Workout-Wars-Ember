WorkoutWars.ChallengesRoute = Ember.Route.extend
  model: ->
    @store.findAll("challenge")