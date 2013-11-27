WorkoutWars.CompetitionsController = Ember.ArrayController.extend
  sortProperties: ['name']

  addCompetition: ->
      WorkoutWars.Competition.createRecord
        