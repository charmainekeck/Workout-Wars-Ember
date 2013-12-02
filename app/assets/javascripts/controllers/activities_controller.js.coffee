WorkoutWars.ActivitiesController = Ember.ArrayController.extend
  needs: ['application']

  isCurrentUser: (->
    currentUser = @get('controllers.application.currentUser')
    user = @get('content')
    console.log user
    user == currentUser
  ).property('content', )  