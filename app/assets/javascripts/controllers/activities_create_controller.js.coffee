WorkoutWars.ActivitiesCreateController = Ember.ObjectController.extend
  actions:
    saveActivity: ->    
      @get('store').commit()
    
    transitionAfterSave: (->
      @transitionToRoute('activity', @get('content')) if @get('content.id')
    ).observes('content.id')