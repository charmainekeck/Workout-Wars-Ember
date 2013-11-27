WorkoutWars.ActivitiesCreateRoute = Ember.Route.extend
  model: ->
    WorkoutWars.Activity.createRecord()

  renderTemplate: ->
    @render "activity.edit",
      controller: "activitiesCreate"