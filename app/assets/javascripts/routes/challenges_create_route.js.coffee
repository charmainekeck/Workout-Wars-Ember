WorkoutWars.ChallengesCreateRoute = Ember.Route.extend
  model: ->
    @store.createRecord('challenge')

  renderTemplate: ->
    @render "challenge.edit",
      controller: "challengesCreate"
