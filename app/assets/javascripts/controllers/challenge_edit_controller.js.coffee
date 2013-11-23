WorkoutWars.ChallengeEditController = Ember.ObjectController.extend
  save: ->
    challenge = @get("model")
    challenge.save()
    @transitionToRoute "challenge", challenge