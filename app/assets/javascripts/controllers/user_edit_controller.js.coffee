WorkoutWars.UserEditController = Ember.ObjectController.extend
  save: ->
    user = @get("model")
    user.save()
    @transitionToRoute "user", user