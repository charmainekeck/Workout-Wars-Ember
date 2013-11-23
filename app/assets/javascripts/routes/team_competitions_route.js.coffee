WorkoutWars.TeamCompetitionsRoute = Ember.Route.extend(
  model: ->
    WorkoutWars.TeamCompetition.find()
)