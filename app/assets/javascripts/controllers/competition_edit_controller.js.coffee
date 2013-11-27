WorkoutWars.CompetitionEditController = Ember.ObjectController.extend
  actions:
    saveCompetition: ->  
      competition = @get("model")
      competition.save()
      @transitionToRoute "competition", competition

    cancelSave: ->
      competition = @get("model")
      @transitionToRoute "competition", competition