WorkoutWars.ChallengeEditController = Ember.ObjectController.extend
  saveChallenge: ->
    challenge = @get("model")
    challenge.save()
    @transitionToRoute "challenge", challenge