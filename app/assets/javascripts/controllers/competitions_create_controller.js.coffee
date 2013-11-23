WorkoutWars.CompetitionsCreateController = Ember.ObjectController.extend
  save: ->    
    @get('store').commit()
    transitionAfterSave: (->
      @transitionToRoute('competition', @get('content')) if @get('content.id')
    ).observes('content.id')
