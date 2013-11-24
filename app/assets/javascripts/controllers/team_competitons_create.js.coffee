WorkoutWars.TeamCompetitionsCreateController = Ember.ObjectController.extend
  saveTeamCompetition: ->   
    @get('store').commit()
    transitionAfterSave: (->
      @transitionToRoute('teamCompetition', @get('content')) if @get('content.id')
    ).observes('content.id')