WorkoutWars.TeamChallengeEditController = Ember.ObjectController.extend
  saveTeamChallenge: ->
    teamChallenge = @get("model")
    teamChallenge.save()
    @transitionToRoute "challenge", teamChallenge