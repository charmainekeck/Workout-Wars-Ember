WorkoutWars.CompetitionEditController = Ember.ObjectController.extend
  saveCompetition: ->  
    competition = @get("model")
    competition.save()
    @transitionToRoute "competition", competition