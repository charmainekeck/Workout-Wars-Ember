WorkoutWars.CompetitionsCreateController = Ember.ObjectController.extend
  isValid: (->
    true
  ).property('competition')
  actions:
    saveCompetition: ->  
      @get('store').commit()
    
    transitionAfterSave:( ->
      @transitionToRoute('competition', @get('content')) if @get('content.id')
    ).observes('content.id')
