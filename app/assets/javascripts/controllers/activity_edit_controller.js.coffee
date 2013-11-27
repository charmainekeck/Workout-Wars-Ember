WorkoutWars.ActivityEditController = Ember.ObjectController.extend
  actions:
    saveActivity: ->
      activity = @get("model")
      activity.save()
      @transitionToRoute "activity", activity