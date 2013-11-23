WorkoutWars.ChallengesRoute = Ember.Route.extend(
  model: ->
    WorkoutWars.Challenge.find()
)