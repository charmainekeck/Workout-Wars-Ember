WorkoutWars.CompetitionEditController = Ember.ObjectController.extend
  save: ->
    competition = @get("model")
    competition.save()
    @transitionToRoute "competition", competition