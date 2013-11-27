WorkoutWars.ActivitiesRoute = Ember.Route.extend
  model: ->
    @modelFor('user').get('activities')