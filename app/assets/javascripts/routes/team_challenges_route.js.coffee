WorkoutWars.TeamChallengesRoute = Ember.Route.extend
  model:  ->
    @store.findAll('teamChallenge')
