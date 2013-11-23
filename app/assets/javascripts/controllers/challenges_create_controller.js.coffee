WorkoutWars.ChallengesCreateController = Ember.ObjectController.extend
  save: ->    
    @get('store').commit()
    transitionAfterSave: (->
      @transitionToRoute('challenge', @get('content')) if @get('content.id')
    ).observes('content.id')