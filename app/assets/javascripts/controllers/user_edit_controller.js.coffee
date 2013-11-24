WorkoutWars.UserEditController = Ember.ObjectController.extend
  saveUser: ->
    user = @get("model")
    user.save()
    @transitionToRoute "user", user