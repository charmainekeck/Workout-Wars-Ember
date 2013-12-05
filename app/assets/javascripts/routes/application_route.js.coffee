WorkoutWars.ApplicationRoute = Ember.Route.extend
  setupController: ->
    @controllerFor('exercises').set 'model', @store.find('exercise')