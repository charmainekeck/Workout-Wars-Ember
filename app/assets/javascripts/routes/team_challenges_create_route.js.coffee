WorkoutWars.TeamChallengesCreateRoute = Ember.Route.extend
  model: ->
    @store.createRecord("teamChallenge")

  renderTemplate: ->
    @render "teamChallenge.edit",
      controller: "teamChallengesCreate"