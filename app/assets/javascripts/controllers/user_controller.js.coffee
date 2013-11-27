WorkoutWars.UserController = Ember.ObjectController.extend
  needs: ['application']

  isCurrentUser: ->
    return false   
  
  actions:
    edit: ->
      @transitionToRoute "user.edit"