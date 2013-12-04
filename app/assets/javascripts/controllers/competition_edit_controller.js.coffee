WorkoutWars.CompetitionEditController = Ember.ObjectController.extend

  actions:    
    addExercise: (exercise) ->  
      # competition = @get('controllers.competition').get('model')
      competition = @get('model') #.get('exercises').pushObject(exercise);
      eventExercise = WorkoutWars.Activity.createRecord
        exerciseableId: competition.id
        exerciseableType: "Competition"
      eventExercise.save()
      @get('store').commit()

    saveCompetition: ->  
      competition = @get("model")
      competition.save()
      @transitionToRoute "competition", competition

    cancelSave: ->
      competition = @get("model")
      @transitionToRoute "competition", competition