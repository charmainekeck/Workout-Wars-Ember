WorkoutWars.TeamChallengesCreateRoute = Ember.Route.extend
  model: ->
    WorkoutWars.TeamChallenge.createRecord()

  renderTemplate: ->
    @render "teamChallenge.edit",
      controller: "teamChallengeCreate"