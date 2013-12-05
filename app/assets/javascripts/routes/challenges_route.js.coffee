WorkoutWars.ChallengesRoute = Ember.Route.extend
  model: ->
    @store.all("challenge")