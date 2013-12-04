WorkoutWars.CompetitionEditController = Ember.ObjectController.extend

  actions:    
    addExercise: (exercise) -> 
      competition = @get('model')

      eventExercise = {
        exerciseId: exercise.id
        exerciseableId: competition.id
        exerciseableType: "Competition"
      }
 
      eventExercise = WorkoutWars.EventExercise.createRecord(eventExercise)
      eventExercise.save()
      @get('store').commit()

    saveCompetition: ->  
      competition = @get("model")
      competition.save()
      @transitionToRoute "competition", competition

    cancelSave: ->
      competition = @get("model")
      @transitionToRoute "competition", competition