WorkoutWars.CompetitionsRoute = Ember.Route.extend
  model: ->
    WorkoutWars.Competition.find()