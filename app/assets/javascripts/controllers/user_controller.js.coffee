WorkoutWars.UserController = Ember.ObjectController.extend
  needs: ['application']

  isCurrentUser: (->
    currentUser = @get('controllers.application.currentUser')
    user = @get('content')
    user == currentUser
  ).property('content')  
  
  actions:
    edit: ->
      @transitionToRoute "user.edit"