WorkoutWars.TeamChallengesCreateController = Ember.ObjectController.extend
  save: ->    
    @get('store').commit()
    transitionAfterSave: (->
      @transitionToRoute('teamChallenges', @get('content')) if @get('content.id')
    ).observes('content.id')