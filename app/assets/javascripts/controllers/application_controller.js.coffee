WorkoutWars.ApplicationController = Ember.ObjectController.extend
  currentUser: null

  init: ->
    attributes = $('meta[name="current-user"]').attr('content')
    object = @store.load(WorkoutWars.User, JSON.parse(attributes))
    user = WorkoutWars.User.find(object.id)
    @set('currentUser', user)
