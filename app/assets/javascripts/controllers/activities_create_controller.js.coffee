WorkoutWars.ActivitiesCreateController = Ember.ObjectController.extend
  needs: ['application']

  actions:
    saveActivity: -> 
      activity = @get('content')
      activity.set('user', @get('controllers.application.currentUser'))
      activity.set('reps', @get('reps'))
      activity.set('distance', @get('distance'))
      activity.set('duration', @get('duration'))
      activity.set('calories', @get('calories'))
      activity.set('weight', @get('weight'))        
      @get('store').commit()
    
    transitionAfterSave: (->
      @transitionToRoute('activity', @get('content')) if @get('content.id')
    ).observes('content.id')