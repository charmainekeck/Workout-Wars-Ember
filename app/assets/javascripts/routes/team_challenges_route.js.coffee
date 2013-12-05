WorkoutWars.TeamChallengesRoute = Ember.Route.extend
  model:  ->
    @store.all('teamChallenge')
