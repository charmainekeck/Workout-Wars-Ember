WorkoutWars.TeamChallengesCreateController = Ember.ObjectController.extend
  saveTeamChallenge: ->   
    @get('store').commit()
    transitionAfterSave: (->
      @transitionToRoute('teamChallenges', @get('content')) if @get('content.id')
    ).observes('content.id')