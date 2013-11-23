WorkoutWars.UserController = Ember.ObjectController.extend
  edit: ->
    @transitionToRoute "user.edit"