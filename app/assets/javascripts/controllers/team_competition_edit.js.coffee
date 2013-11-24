WorkoutWars.TeamCompetitionEditController = Ember.ObjectController.extend
  saveTeamCompetition: ->
    teamCompetition = @get("model")
    teamCompetition.save()
    @transitionToRoute "competition", teamCompetition