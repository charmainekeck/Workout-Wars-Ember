WorkoutWars.CompetitionsCreateController = Ember.ObjectController.extend
  saveCompetition: ->  
    @get('store').commit()
    transitionAfterSave: (->
      @transitionToRoute('competition', @get('content')) if @get('content.id')
    ).observes('content.id')
