WorkoutWars.TeamChallengesRoute = Ember.Route.extend
  model: ->
    WorkoutWars.TeamChallenge.find()
